# Kernel Driver Loader 2.0 (Xiaomi Mi A2 Lite - Android 15 / Kernel 4.9.337+58-perf)

[![Build and Release Driver Loader](https://github.com/frnAlt/Kernel-Driver/actions/workflows/build-and-release.yml/badge.svg)](https://github.com/frnAlt/Kernel-Driver/actions/workflows/build-and-release.yml)
[![Target Kernel](https://img.shields.io/badge/Kernel-4.9.337%2B58--perf-blue.svg)](https://github.com/frnAlt/Kernel-Driver)
[![Platform](https://img.shields.io/badge/SoC-Qualcomm%20Snapdragon%20625%20(msm8953)-orange.svg)](https://github.com/frnAlt/Kernel-Driver)
[![Target Android](https://img.shields.io/badge/Android-15%20(API%2035)-green.svg)](https://github.com/frnAlt/Kernel-Driver)
[![Root Solution](https://img.shields.io/badge/Root-KernelSU%20%2F%20Magisk%20%2F%20APatch-red.svg)](https://github.com/tiann/KernelSU)

## 📌 Overview

This repository contains the decompiled source, injected kernel drivers, and automated CI/CD pipeline for **Driver Loader 2.0**, customized for the **Xiaomi Mi A2 Lite (`daisy`)** running **Android 15 (VanillaIceCream, API 35)** with custom **KernelSU (KSU)** kernel version **`4.9.337+58-perf`** (`arm64-v8a` / Qualcomm Snapdragon 625 / `msm8953`).

---

## 🎯 Target Hardware & System Specifications

| Parameter | Specification | Notes |
| :--- | :--- | :--- |
| **Device Model** | Xiaomi Mi A2 Lite (`daisy`) | Dual-camera, Notch, Qualcomm platform |
| **Processor / SoC** | Qualcomm Snapdragon 625 (`msm8953`) | 8x ARM Cortex-A53 @ 2.0 GHz |
| **Architecture** | `arm64-v8a` / `aarch64` | 64-bit kernel & userland |
| **Android Version** | Android 15 (API 35) | Custom ROM (LineageOS 22, SuperiorOS, etc.) |
| **Kernel Release (`uname -r`)** | `4.9.337+58-perf` | Upstreamed Linux 4.9 LTS with KSU |
| **Root Method** | KernelSU / Magisk / APatch | High-privilege root access |

---

## 🛡️ Critical Safety Engineering & Bootloop Prevention

Older kernel driver loaders and generic scripts frequently cause bootloops, sudden system crashes, and hard-reboots on the Xiaomi Mi A2 Lite. This repository integrates comprehensive safety mitigations:

### 1. Stripped Automatic `reboot` Invocations
- **Root Cause**: Upstream generic QX, RT, and GT scripts contained hardcoded fallback commands:
  ```bash
  # DANGEROUS LEGACY CODE IN PREVIOUS VERSIONS:
  echo "驱动加载失败!!!!"
  echo "5秒后自动重启设备..."
  sleep 5
  reboot
  exit 1
  ```
  If `insmod` encountered a symbol mismatch or permission delay, the device immediately rebooted. If the app attempted automatic re-attachment, the phone entered an endless **bootloop**.
- **Fix Applied**: Every driver script in `assets/Kernel_Drivers.zip` (`QX` and `RT`) has been sanitized. All `reboot` triggers have been removed. If a module fails to load, it captures `dmesg`, logs diagnostics, and terminates cleanly (`exit 1`) without touching system power state.

### 2. Exact `vermagic` String Alignment
- **Root Cause**: Linux kernel module loader (`kernel/module.c`) strictly validates `vermagic` against `UTS_RELEASE`. A module compiled for `4.9.186-perf` is rejected on a `4.9.337+58-perf` kernel with `-ENOEXEC` (`Exec format error`).
- **Fix Applied**: Kernel module binary payloads have been patched in their `.modinfo` ELF section:
  ```text
  vermagic=4.9.337+58-perf SMP preempt mod_unload modversions aarch64
  ```
  This allows the kernel module to bind cleanly to the `4.9.337+58-perf` kernel without format rejections.

### 3. SELinux-Resilient Kernel Version Detection
- **Root Cause**: On Android 15, untrusted app domains (`untrusted_app`) are restricted by SELinux policies from spawning shell processes like `/system/bin/uname -r`. If `Runtime.getRuntime().exec("uname -r")` threw an exception, older code defaulted to `"unknown"` and failed to locate drivers.
- **Fix Applied**: `MainActivity.smali` (`lambda$detectKernel$5`) was enhanced with a direct fallback to:
  ```java
  System.getProperty("os.version");
  ```
  which reads the kernel UTS release directly from the Bionic runtime without requiring child process execution.

### 4. Android 15 (API 35) Root & Manifest Hardening
- Added `FOREGROUND_SERVICE` alongside `FOREGROUND_SERVICE_DATA_SYNC` to satisfy Android 14/15 background service constraints and prevent runtime `SecurityException` crashes.
- Added `ACCESS_SUPERUSER` for seamless KernelSU / Magisk root manager grant prompts.
- Added `POST_NOTIFICATIONS` for Android 13+ status notifications.
- Configured `requestLegacyExternalStorage="true"` and `extractNativeLibs="true"`.

---

## 📂 Repository Structure & Asset Layout

```text
Kernel-Driver/
├── .github/
│   └── workflows/
│       └── build-and-release.yml    # CI/CD compilation and release workflow
├── decompiled_source/                # Decompiled APK source code
│   ├── AndroidManifest.xml          # Hardened for Android 15 & root compatibility
│   ├── apktool.yml                  # Configured with targetSdkVersion: 35
│   ├── assets/
│   │   ├── Driver.sh                # ARM64 ELF driver checker binary
│   │   ├── Kernel_Drivers.zip       # Embedded driver archive (unpacked at runtime)
│   │   │   ├── QX/
│   │   │   │   ├── 4.9.337+58-perf.ko.sh   # QX driver for 4.9.337+58-perf
│   │   │   │   ├── 4.9.337.ko.sh           # QX driver for 4.9.337-perf
│   │   │   │   └── 4.9.186.ko.sh           # QX driver (safe reboot removed)
│   │   │   └── RT/
│   │   │       ├── 4.9.337+58-perf.sh      # RT driver for 4.9.337+58-perf
│   │   │       ├── 4.9.337.sh              # RT driver for 4.9.337-perf
│   │   │       └── 4.9.186.sh              # RT driver (safe reboot removed)
│   │   ├── 4.9.337+58-perf.ko       # Standalone 4.9.337+58-perf kernel module
│   │   ├── 4.9.337+58-perf.ko.sh    # Standalone QX loader script
│   │   ├── 4.9.337+58-perf.sh       # Standalone RT loader script
│   │   └── msm8953_4.9.337+58-perf.ko
│   ├── lib/
│   │   └── arm64-v8a/
│   │       ├── 4.9.337+58-perf.ko
│   │       ├── libkernel_driver_4.9.337.so
│   │       └── libdriver_msm8953.so
│   ├── res/                         # UI layouts and resources
│   └── smali/ ... smali_classes5/   # Disassembled bytecode with hardened logic
├── Driver Loader_2.0 (1).apk        # Original reference APK
├── Kernel Driver.zip                # Source driver archive
└── README.md                        # Documentation
```

---

## ⚙️ CI/CD Automation & Safe Remote Compilation

The compilation pipeline is automated via GitHub Actions in [`.github/workflows/build-and-release.yml`](.github/workflows/build-and-release.yml):

### Workflow Features:
1. **Runner Environment**: `ubuntu-latest` running Temurin JDK 21.
2. **Modern Build Tools**:
   - Downloads and executes **Apktool 2.10.0** with `--use-aapt2`.
   - Resolves legacy `aapt1` assertion errors (`F aapt: First type is not attr!`) when packaging modern AndroidX / Material 3 resources.
3. **Automated Signing**:
   - Uses `uber-apk-signer` to apply Android APK Signature Schemes **v1, v2, v3, and v4**.
   - Includes automatic fallback to `keytool` + `jarsigner` debug keystore.
4. **Automated Release Publication**:
   - Deploys the signed APK directly to the repository's **GitHub Releases** section with an automated release tag (`v2.0-kernel-4.9.337-<timestamp>`).

---

## 🛠️ Manual Compilation (Local Development)

To compile the APK locally if you have Java and Apktool installed:

```bash
# 1. Recompile using Apktool with AAPT2 enabled
apktool b --use-aapt2 decompiled_source -o build/Driver_Loader_2.0_unsigned.apk

# 2. Sign with uber-apk-signer (or apksigner / debug keystore)
java -jar uber-apk-signer.jar \
  -a build/Driver_Loader_2.0_unsigned.apk \
  -o release_apk/ \
  --overwrite

# 3. Install onto device via ADB
adb install -r release_apk/Driver_Loader_2.0_unsigned-aligned-debugSigned.apk
```

---

## 🔍 Verification on Device

Once installed on the Xiaomi Mi A2 Lite:
1. Open **Driver Loader 2.0**.
2. Grant Superuser privileges when prompted by **KernelSU** / **Magisk**.
3. Confirm that the kernel banner displays:
   ```text
   Kernel: 4.9.337+58-perf
   ```
4. Click either **QX** or **RT**; the app will automatically select and load the `4.9.337+58-perf` driver without triggering dialogs or reboots.
5. Tap **Check Driver** to verify that the driver node is active in `/dev`.

---

## 📄 License & Disclaimer

This project is intended for kernel development, hardware debugging, and research on Qualcomm MSM8953 devices. Use responsibly.
