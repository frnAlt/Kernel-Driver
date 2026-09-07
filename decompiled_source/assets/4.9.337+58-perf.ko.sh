
# å®šä¹‰ANSIè½¬ä¹‰ç 
ESC_SEQ="\x1b["
RESET_SEQ="${ESC_SEQ}0m"
COLOR_SEQ="${ESC_SEQ}38;5;"

# å®šä¹‰é¢œè‰²ä»£ç 
COLOR_RED="${COLOR_SEQ}9m"
COLOR_GREEN="${COLOR_SEQ}10m"
COLOR_YELLOW="${COLOR_SEQ}11m"
COLOR_BLUE="${COLOR_SEQ}12m"

file1_base64="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"

# è¾“å‡ºå½©è‰²æ–‡æœ¬
if [[ -e /proc/uevents_records ]]; then
if grep -q 'entryi' /proc/uevents_records; then
  for i in $(seq 1 50)
do
    echo -e "${COLOR_RED}æ£€æµ‹åˆ°ä½ åˆ·å…¥äº†æ—§ç‰ˆæœ¬å†…æ ¸ï¼Œè¯·é‡å¯è®¾å¤‡åŽå†åˆ·å…¥æ–°çš„ï¼${RESET_SEQ}"
done
exit
fi
fi

echo -e "${COLOR_YELLOW}â†’ ä¸‹æ–¹å‡ºçŽ° Invalid argument å†è¯•ä¸€æ¬¡${RESET_SEQ}"
echo -e "${COLOR_YELLOW}â†’ OPPO Realme ä¸€åŠ  éœ€è¦è¿‡ç­¾åéªŒè¯ + å‡çº§åˆ°å®‰å“13${RESET_SEQ}"
echo -e "${COLOR_YELLOW}â†’ å¼€æœºä¸€æ®µæ—¶é—´åŽå¯èƒ½ä¼šåˆ·ä¸è¿›ï¼Œè‡ªåŠ¨é‡å¯åŽå†åˆ·ä¸€éå³å¯${RESET_SEQ}"
#echo
#[root@localhost ~]# cat test.sh
#!/bin/sh
#rm -rf /data/koyz

echo 0>/data/nh
echo 0>/data/nh2
echo -e "${COLOR_YELLOW}æ­£åœ¨æ£€æµ‹æ˜¯å¦å·²ç»åˆ·å…¥è¿‡ä¸€æ¬¡ ...${RESET_SEQ}"
echo
sleep 1.6
if [[ ! -e /data/nh ]]; then
echo -e "${COLOR_RED}æ— éœ€é‡å¤åˆ·å…¥ï¼æ¯æ¬¡å¼€æœºåˆ·ä¸€æ¬¡å°±è¡Œï¼Œå¦‚éœ€å‡çº§é©±åŠ¨è¯·å…ˆé‡å¯ã€‚${RESET_SEQ}"
exit
fi
if [[ ! -e /data/nh2 ]]; then
echo -e "${COLOR_RED}æ— éœ€é‡å¤åˆ·å…¥ï¼æ¯æ¬¡å¼€æœºåˆ·ä¸€æ¬¡å°±è¡Œï¼Œå¦‚éœ€å‡çº§é©±åŠ¨è¯·å…ˆé‡å¯ã€‚${RESET_SEQ}"
exit
fi
rm -rf /data/nh
rm -rf /data/nh2

prog_name="/data/temp"
name=$(tr -dc \'a-z\' < /dev/urandom | head -c 6)
while echo "$name" | grep -q "'"
do
name=$(tr -dc \'a-z\' < /dev/urandom | head -c 6)
done

sed "1,/^# END OF THE SCRIPT/d" "$0" > ${prog_name}   # å¯¼å‡ºäºŒè¿›åˆ¶ç¨‹åºï¼Œè¿™ä¸ªæ­¥éª¤å¾ˆé‡è¦ ...
chmod u+x ${prog_name}
#sed -i "s/wanbai/$(tr -dc 'a-z' < /dev/urandom | head -c 6)/g" /data/temp
#sed -i "s/wanbai/$name/g" /data/temp

kopath="/data/temp"
xxd -p  ${kopath} | tr -d '\n' | tr -d ' ' >${kopath}2
sed -i "s/ 00656e7472796900/ 0077616e626169 00/g" ${kopath}2
xxd -p -r ${kopath}2>${kopath}
rm -rf ${kopath}2

sed -i "s/wanbai/$name/g" /data/temp



#!/bin/bash


#å¡å¯†æ–‡ä»¶éªŒè¯
# èŽ·å– Android ç‰ˆæœ¬å·
insmod ${prog_name}
# && rm -f ${prog_name}
r=$?
echo
sleep 0.3
if [[ -e /dev/${name} ]]; then
rm -f ${prog_name}
    for i in $(seq 1 10)
do
    echo -e "${COLOR_GREEN}é©±åŠ¨åˆ·å…¥æˆåŠŸï¼${RESET_SEQ}"
    #echo -e "${COLOR_RED}åˆ·å…¥å¤±è´¥ï¼Œè¯·å°è¯•å…¶ä»–è„šæœ¬ã€‚${RESET_SEQ}"
done
echo $file1_base64 | base64 -d > temp
mv temp /data/$name
chmod 777 /data/$name
echo
echo -e "${COLOR_YELLOW}è„šæœ¬å¯ä»¥é€€å‡ºäº† ...${RESET_SEQ}"
dmesg -C
nohup /data/$name
else
echo -e "${COLOR_RED}åˆ·å…¥å¤±è´¥ï¼Œæ­£åœ¨è¿›è¡ŒäºŒæ¬¡å°è¯• ...${RESET_SEQ}"
echo
#å†è¯•ä¸€æ¬¡
CQ=0
if [ $r -eq 0 ]; then
CQ=1
fi

insmod ${prog_name} && rm -f ${prog_name}
r=$?
echo
sleep 0.3
if [[ -e /dev/${name} ]]; then
    for i in $(seq 1 10)
do
    echo -e "${COLOR_GREEN}é©±åŠ¨åˆ·å…¥æˆåŠŸï¼${RESET_SEQ}"
    #echo -e "${COLOR_RED}åˆ·å…¥å¤±è´¥ï¼Œè¯·å°è¯•å…¶ä»–è„šæœ¬ã€‚${RESET_SEQ}"
done
echo $file1_base64 | base64 -d > temp
mv temp /data/$name
chmod 777 /data/$name
echo
echo -e "${COLOR_YELLOW}è„šæœ¬å¯ä»¥é€€å‡ºäº† ...${RESET_SEQ}"
dmesg -C
nohup /data/$name
fi

   for i in $(seq 1 10)
do
    #echo -e "${COLOR_GREEN}é©±åŠ¨åˆ·å…¥æˆåŠŸï¼${RESET_SEQ}"
    echo -e "${COLOR_RED}åˆ·å…¥å¤±è´¥ï¼Œè¯·é‡å¯æ‰‹æœºåŽå†è¯•ä¸€æ¬¡ï¼Œç¡®å®šä¸è¡Œå†æ¢å…¶ä»–è„šæœ¬ã€‚${RESET_SEQ}"
#    echo -e "${COLOR_YELLOW}å¦‚æžœä¸Šæ–¹æ²¡æœ‰æŠ¥é”™è¾“å‡ºï¼Œè¯·é‡å¯æ‰‹æœºåŽå†å°è¯•å…¶ä»–è„šæœ¬ï¼Œå¦åˆ™å¯èƒ½ä¼šå µå¡žæŽ¥å£å¯¼è‡´æœ¬è¯¥æˆåŠŸçš„ä¹Ÿéƒ½ä¾ä¾å˜æˆäº†å¤±è´¥ã€‚${RESET_SEQ}"
done

if [ CQ -eq 1 ]; then
    #echo "result ç­‰äºŽ 0"
    echo
    echo 3ç§’åŽè‡ªåŠ¨é‡å¯è®¾å¤‡ ...
    sleep 3
    echo '[Safe Mode] Reboot prevented on Mi A2 Lite.'
fi
    
fi

rm -rf /data/koyz
rm -rf /data/temp


# WARNING: Do not modify the following !!!
exit 0
# END OF THE SCRIPT ----------> è¿™æ˜¯shell è„šæœ¬å½“å‰çš„æœ€åŽä¸€è¡Œ
ELF          ·                    Ø2          @     @       (˜^Ó	$@ù(yhøˆ6	 €Ò*üRÓ	  òet’	 ÀòJ!}’	 àò
ª)@ù	ËeZ²@ùè ´*üIÓet’J!}’I	Ë(‹) €ÒeZ²	€àò@ù	ê€  T t’ ,@³À_ÖàªÀ_Öý{¾©ôO©ý ‘óªôª   ”  ´@A9h  7à*  @ùi‹?ëà‡ŸôOA©ý{Â¨À_Öý{½©õ ùý ‘ôO©õ ª üLÓóªôª   ”€ 4 €Òáª  ò" €R Àò àò@ù¨ËeZ²àª   ”A8Õéª!@ù)«èƒˆš)1ŸÚ?úé‡ŸšÉ  ´àªáªâª   ”ó ª ñàŸôOB©õ@ùý{Ã¨À_Öý{½©õ ùý ‘ôO©õ ª üLÓóªôª   ”  4 €Òáª  òâ* Àò àò@ù¨ËeZ²àª   ”âªA8Õ!@ùéª)«èƒˆš)1ŸÚ?úé‡ŸšÉ  ´àªáªâª   ”â ªÂ  µ  €RôOB©õ@ùý{Ã¨À_ÖhËá* ‹   ”à*÷ÿÿý{¼©÷ ùý ‘öW©ôO©óªôªõª   ”` ´á*   ”  ´   ”À ´áªö ª   ”à  ´@A9¨  6@ùi‹?ë) Tàª   ”à*ôOC©öWB©÷@ùý{Ä¨À_Öàª   ”¨š^ÓÉ&@ù(yhø¨þ6 €ÒªþRÓ  òet’ ÀòJ!}’ àò
ªÉ@ù	ËeZ²@ùýÿ´ªþIÓet’J!}’I	Ë(‹) €ÒeZ²	€àò@ù	ê ûÿTt’÷ª·.@³7ûÿ´ ýLÓ   ”àúÿ4È@ùáª" €RèËeZ²àª   ”A8Õéª!@ù)«èƒˆš)1ŸÚ?úé‡ŸšÉ  ´àªáªâª   ”ó ª ñàŸ¿ÿÿý{¼©÷ ùý ‘öW©ôO©óªôªõª   ”` ´á*   ”  ´   ”À ´áªö ª   ”à  ´@A9¨  6@ùi‹?ë) Tàª   ”à*ôOC©öWB©÷@ùý{Ä¨À_Öàª   ”¨š^ÓÉ&@ù(yhø¨þ6 €ÒªþRÓ  òet’ ÀòJ!}’ àò
ªÉ@ù	ËeZ²@ùýÿ´ªþIÓet’J!}’I	Ë(‹) €ÒeZ²	€àò@ù	ê ûÿTt’÷ª·.@³7ûÿ´ ýLÓ   ”àúÿ4È@ùáªâ*èËeZ²àª   ”âªA8Õ!@ùéª)«èƒˆš)1ŸÚ?úé‡ŸšÉ  ´àªáªâª   ”â ªb  µ  €R¾ÿÿhËá* ‹   ”¸ÿÿÿÃÑý{©ý‘üW©ôO©óª   ”€ ´á*   ”  ´   ”à ´ô ª   ”•@ùµ  µàª  µ
@ùµÿÿ´ R@ù ÿÿ´á ‘â€R   ”á€Rô ª   ”  ñáª€€š   ”@þÿ5 @ùôOR©üWQ©ý{P©ÿÃ‘À_Öà*À_Öà*À_Öý{¼©÷ ùý ‘öW©ôO©( Q qH T	 €Òóª	  ò	 Àò	 àò
  +y¨¸J‹@ÖA8Õéª!@ù) ±èƒˆš)1ŸÚ?úé‡ŸšI ´ €Òáª  ò€R Àò àòàª   ”à µŠ@©€@¹ƒ@ù   ”@ 7³  ?$q  T?$q¡ T €Ò €Ò  ò  ò Àò Àò àò àò`@ù@¹   ”`@ù   ”  A8Õéª!@ù) ±èƒˆš)1ŸÚ?úé‡Ÿš	 ´ €Òáª  ò€R Àò àòàª   ”  µŠ@©€@¹ƒ@ù   ”  7‰  A8ÕÈ"@ùéª)a ±èƒˆš)1ŸÚ?úé‡Ÿš	 ´ €Òáª  ò€R Àò àòàª   ”à µ €Ò €Ò  ò Àò àò@ùÈ"@ùéª)ý±èƒˆš)1ŸÚ?úé‡Ÿš) ´õªâ€R  ò Àò àòàª   ”` µ€@¹áª   ”È"@ùéª€
 ù)a ±èƒˆš)1ŸÚ?úé‡Ÿš©
 ´àªáª€R   ” 
 µ=  A8Õéª!@ù) ±èƒˆš)1ŸÚ?úé‡ŸšÉ ´ €Òáª  ò€R Àò àòàª   ”` µHS€R@ €Rˆ ¹:  €R €Ò  ò Àò àòË  ‘/    €Ò €Ò €Ò   ò  ò  ò  Àò Àò Àò  àò àò àò   ” €Ò	 €Ò  ò €Ò Àò	  ò àò  ò	 Àò Àò	 àò àò@¹áªãª  ù   ”àª  €R €Ò  ò Àò àòË a ‘  â€R  ò Àò àòèË ý‘á*   ”  €’ôOC©öWB©÷@ùý{Ä¨À_Öâ ªÂÿÿâ ªèÿÿâ ªîÿÿ                                                                                                                                                                                                                                                   ¸     ð  ð  ð  ð     ÿCÑý{©ýC ‘ø_©öW©ôO©   ”   ”   ”   ”   ”  Ñ €R   ”¨ÃŸ¸éÌŒRÉÌ¬r €Ò	}	›*ýÓ)ýb“)
J€R)¡
( ? 1¨Ã¸k Tõªö‰R  òóª Àò–Ø©rW€R àò   ”	|¶›¨ÃŸ¸)ýcÓ))…©j38s ‘ëëþÿT €Ò €Ò  ò  ò Àò Àò  ò àò àò Àòá*àª" €Rãª àòŸÊ(8   ”@ø7 €Ò €Ò  ò  ò Àò Àò àò àòàª   ” €Òa@¹  òàª Àò" €R àò×" ù   ” ø7 €Òàª  òáª Àò àò   ” €Òü?±  ò Àò àò€ ùã Tàª   ”`@¹! €R   ”˜@¹(  ø *&  ø *`@¹! €R   ”!  b@¹áªãªäª   ” €Ò  ò Àò àò !‘
%@©I ù* ù ù ù   ”  €Òáª   ò  Àò  àò   ”  €Òáª   ò  Àò  àò   ”`@¹! €R   ”ø*à*ôOD©öWC©ø_B©ý{A©ÿC‘À_Öý{¾©ôO©ý ‘ €Ò €Ò  ò  ò Àò Àò àò àò`@ù@¹   ”`@ù   ”  €Ò   ò  Àò  àò   ”€@¹! €R   ”ôOA©ý{Â¨À_Öwanbai sched_debug uevents_records description=wanbai license=GPL author=wanbai vermagic=4.9.337+58-perf SMP preempt mod_unload modversions aarch64 depends=                                                                                            entryi                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           GNU -“Œ@ž:         #                  
  #                     #           (         #           ˜         %           ì         '           ô         #           ü       
  #                   #                   #                   (           P        )                   '           ˜        #                  
  #           ¨        #           ¬        #           À        (           ø        +           $        ,           P        .           \        /           d        0           t        %           ˜        1           ¸        1           Ì        #           Ô      
  #           Ü        #           ä        #           @        '           `        (           ”        )           È        .           Ô        /           Ü        0           ì        %                   1           0        1           D        #           L      
  #           T        #           \        #           ¸        '           Ø        (                   +           0        ,           P        .           \        /           d        0           p        1           œ        4           ¨        5           ¸        6                                    
                                                   P                   X      
             `                   d                   l        +           €        -           œ           P                  X      ¤      
     P      ¨      
     X      ¬           P      °           X      ´           P      ¸           X      Ä        :           Ì        ;           ø                          
                                                           +           (        2           X                   `      
             h                   l                   t        +           |           (       €           8       „      
     (       ˆ           (       Œ           (       ¼      
     8       À           8       Ä           8       Ì        +           Ü        3                   )           @                   H      
             P                   T                   \        +           x                   |      
             €                   „                   ”        <           ˜           9      œ           8             
  <           ¤      
     9      ¨      
     8      ¬        <           °           9      ´           8      ¸        <           ¼           9      À           8      Ä        =           È           X      Ì           P      Ð      
     X      Ô                    Ø           X      Ü      
     P      à           X      ä      
              è           P      ì                    ð           P      ô                    	        >           	                   	      
              	                   $	                   8	      
     8       <	           8       @	           8       P	        ,                     <           H         9           `         7           p         8                    @                    @                     @           $         @           (         @           4         A           D            9      x       
     9      €            9      Œ            9               @           ¸            X      ¼                     À       
     X      Ä       
              È            X      Ì                     Ð       
     9      Ô            X      Ø                     Ü            9      ð            9      ø         B                       `              C                 
     `            
  C                      `              C                      `              C           $        D           (        <           0      
  <           8        <           @        <           H        E           P           È      X      
     È      `           È      d           È      h        =           l           P      t      
     P      x           P      |           P      Œ        F           ˜        G           ¸        G           Ð        >           Ô        <          Ø      
  <          Ü        <          à        <          ü        H                                     
                                                           I                                     
             $                   (                   ,        I           8        G                       P                  X             
     P             
     X                  P                   X      $            P      (            X      4         :           <         ;           @            `      D       
     `      H            `      L            `      P         F           \         G           Ubuntu clang version 14.0.0-1ubuntu1.1  X        ?                    J                                                         Ë                    ê     P             d    X             à                   h    8              V    9             l     8             Ý                          	                 „     `      h       Y     È                                   Ý                     Ý                     <                   &                                                                                                                                 	                                                             û    -       A       Ý                                         !    n       	                                                                                               ¤             „       o                     Å    „       H       ò                     Ô     Ì       ¤       ²                                          :                     ½     p      À       N                                           (     0      x      ¥                                          ¿                                                ¨            X    8                                   2                     }                     ±    Ø             I    à             Ý    è      œ      J                      <                      ˆ            €      ,                     ;                     |   	         \      c                                                               õ             ð       “                      ¼                     ì                     „                     õ                                           –            l        .rela.exit.text .rela.init.text .rela.text .comment .init.plt .bss __versions .modinfo .note.GNU-stack .rela.gnu.linkonce.this_module .note.gnu.build-id .shstrtab .strtab .symtab .rodata .rela.data .rodata.str1.1  remove_proc_entry write_process_memory read_process_memory class_destroy device_destroy driver_entry.__key dispatch_ioctl.__key $x char_dev mmput cdev_init memset translate_linear_address write_physical_address read_physical_address char_class dispatch_fops ____versions get_random_bytes __module_depends strrchr __arch_copy_to_user __arch_copy_from_user dev_number memstart_addr strcmp unregister_chrdev_region alloc_chrdev_region dispatch_open get_task_mm dispatch_ioctl.cm dispatch_ioctl cdev_del kobject_del get_pid_task file_path __check_object_size __class_create device_create dispatch_close get_module_base dispatch_ioctl.name init_module __this_module cleanup_module find_get_pid pfn_valid cdev_add check_proc_map_can_read $d dispatch_ioctl.mb find_vma __UNIQUE_ID_vermagic8 __UNIQUE_ID_author18 __UNIQUE_ID_license17 __UNIQUE_ID_description16 DEVICE_NAME2 get_random_u32                                                                 :                     @                                     5                     A                                     &                     D       „	                             !      @                                               Á                     È	      ð                              ¼      @                      `                           ?                     ¸
      É                             ´                     ¸
                                                          Ø
      \                                   @               €      0         	                                      4      l                                    @               °%      €                          Ç      2                      #                             O                     Ã      w                              ,      0               0'      (                             m                     €      €              €               h      @               X'      0                           D                                                           ‡                                                          X                      ˆ'                                     ¬                      ˆ'               "                 š                      .      Ö                              ¤                      f/      r                             