;mrS>blue-britney:1.0-mIRC60+:::
;blue-britney by Gourob (2003)
; HOW TO USE :Place this file in the mirc folder
; an in mirc Type-> /load -rs blue-britney.mrc
; Updated by patches for mIRC60 December 19, 2003 - New Scripting by Gourob
ctcp 1:blue-britney: notice $nick $me 4is using blue-britney.mrc 2(v2 mIRC60+) December 19, 2003
alias blue-britney set %nick $1 | if ($1 == $null) { rbnick3 } | /ctcp %nick blue-britney
alias mrboffer2003 {
  set %ack $rand(1,25) | set %rnd2 $rand(2,10)
  if (%rnd2 == 2) { set %rc1 0 | set %rc2 15 | set %rc3 4 } 
  if (%rnd2 == 3) { set %rc1 1 | set %rc2 0 | set %rc3 4 }
  if (%rnd2 == 4) { set %rc1 13 | set %rc2 15 | set %rc3 6 } 
  if (%rnd2 == 5) { set %rc1 3 | set %rc2 2 | set %rc3 9 } 
  if (%rnd2 == 6) { set %rc1 11 | set %rc2 14 | set %rc3 10 } 
  if (%rnd2 == 7) { set %rc1 11 | set %rc2 13 | set %rc3 6 }
  if (%rnd2 == 8) { set %rc1 2 | set %rc2 0 | set %rc3 8 } 
  if (%rnd2 == 9) { set %rc1 1 | set %rc2 10 | set %rc3 0 }
  if (%rnd2 == 10) { set %rc1 0 | set %rc2 5 | set %rc3 4 }
  if (%ack == 1) { set %dsn1 {¯)>=== | set %dsn2 ===<(¯} }
  if (%ack == 2) { set %dsn1  (¯`¯)   | set %dsn2   `*´   }
  if (%ack == 3) { set %dsn1  @ @  | set %dsn2 ~< >~ }
  if (%ack == 4) { set %dsn1  #mÍ®Ç_  | set %dsn2 ®âïñßòw }
  if (%ack == 5) { set %dsn1  (`o´)  | set %dsn2   ·.·   }
  if (%ack == 6) { set %dsn1  (`·´)  | set %dsn2   `·´   }
  if (%ack == 7) { set %dsn1  (¯`¯)  | set %dsn2   `.´   }
  if (%ack == 8) { set %dsn1 (¯(¯`¯) | set %dsn2  `·`·´  }
  if (%ack == 9) { set %dsn1  @   @  | set %dsn2 ~Ï~ ~Ï~ }
  if (%ack == 10) { set %dsn1 --={{@} | set %dsn2 {@}}=-- }
  if (%ack == 11) { set %dsn1  Û   Û  | set %dsn2 ~Ï~ ~Ï~ }
  if (%ack == 12) { set %dsn1   =:-\  | set %dsn2   ¶:-)  }
  if (%ack == 13) { set %dsn1   ¶:-)  | set %dsn2  c=;o)  }
  if (%ack == 14) { set %dsn1  *< $+ 8=)  | set %dsn2  c=:-]  }
  if (%ack == 15) { set %dsn1   ¶;+]  | set %dsn2  c=;o)  }
  if (%ack == 16) { set %dsn1  *{¦o)  | set %dsn2   >;=)  }
  if (%ack == 17) { set %dsn1  ¶;=.)  | set %dsn2  ¶:o/~  }
  if (%ack == 18) { set %dsn1   Q:=]  | set %dsn2  c=¦þ~  }
  if (%ack == 19) { set %dsn1  ¶;O]   | set %dsn2  {:*)   }
  if (%ack == 20) { set %dsn1   ¶¦þ~  | set %dsn2   =:-\  }
  if (%ack == 21) { set %dsn1  (\_/)  | set %dsn2  =^:^=  }
  if (%ack == 22) { set %dsn1 -=(¯)=- | set %dsn2 -=(¯)=- }
  if (%ack == 23) { set %dsn1 .·´¯`·. | set %dsn2 ®ªïÑßðw }
  if (%ack == 24) { set %dsn1  /\/\/\ | set %dsn2  \/\/\/ }
  if (%ack == 25) { set %dsn1 \\\|/// | set %dsn2 ///|\\\ }
  set %ii 1 | :next2
  set %i 1 | :next | set %temp %dsn [ $+ [ %ii ] ]
  set %p $+ %i  $+ $mid(%temp,%i,1) | if (%i < 8) { inc %i | goto next } | set %i 1
  if (%rc1 == 1) { set %mdsn $+ %ii  $+ %rc3 $+ ,1 $+ %p1 $+  $+ %rc2 $+ %p2 $+  $+ %rc3 $+ %p3 $+  $+ %rc2 $+ %p4 $+  $+ %rc3 $+ %p5 $+  $+ %rc2 $+ %p6 $+  $+ %rc3 $+ %p7 }
  else { set %mdsn $+ %ii  $+ %rc1 $+ ,1 $+ %p1 $+  $+ %rc3 $+ %p2 $+  $+ %rc2 $+ %p3 $+  $+ %rc1 $+ %p4 $+  $+ %rc2 $+ %p5 $+  $+ %rc3 $+ %p6 $+  $+ %rc1 $+ %p7 } | if (%ii == 1) { set %ii 2 | goto next2 }
}
alias blue-britneyoffer {
  mrboffer2002 | set %mrbfile blue-britney
  say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn1 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3 $+ $str( ,$len($me)) $+ ->To Grab %mrbfile $+ <-   | /say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn2 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3   paste-->  $+ %rc3 $+ , $+ %rc1 $+ " $+ $me %mrbfile
}

;/rbnick alias by GouroB
alias rbnick3 {
  if ($chan == $active) {
    if ($snick(#,1) == $null) { set %nick $nick(#,$rand(1,$nick(#,0))) } | else { set %nick $snick(#,1) }
  }
  if ($chan == $null) {
    if ($query($active) != $null) { set %nick $query($active) }
    else { set %nick $active | set %nick $mid(%nick,2,30) }
  }
}
; beta v4.02

; the #mIRC_Rainbow - Undernet rbarts alias
; $rbarts(N, Filler(s)).rnick by GouroB
;   * where N = total string length
;   * where Filler(s) = any length of characters
; alias txarts by texxy... modified by GouroB
; added one filler support from previous txarts
; to use
;   * /rbarts [filler] ... just /rbarts for bean
;   * random nick generator: $rbarts(N, Filler(s)).rnick
; thanks to patches for testing :)
alias rbarts {
  if ($prop == rnick) {
    if ((!$1) || ($1 !isnum) || (!$2)) {
      echo 4 -a *** Improper use of $!rbarts().rnick
      halt
    }
    else {
      if ($left($active,1) != $chr(35)) {
        %dc_nick = $active
        if ($left(%dc_nick,1) == =) {
          %dc_nick = $mid(%dc_nick,2,$len(%dc_nick))
        }
        goto dc_jump
      }
      %dc_nickmax = $nick($active,0)
      if (%dc_nickmax == 1) {
        %dc_nick = $me
        goto dc_jump
      }
      :back
      %dc_nick = $nick($active,$rand(1,%dc_nickmax))
      if (%dc_nick == $me) goto back 
      :dc_jump
      unset %dc_nickmax
      %dc_cent_ch1 = 0
      %dc_cent_lin = %dc_nick
      if ($1 == $len(%dc_nick)) {
        return %dc_cent_lin
      }
      if ($1 < $len(%dc_nick)) {
        return $left(%dc_nick,$1)
      }
      else {
        :duke_more_more_more
        if ($len($2) > 1) {
          inc %dc_cent_ch1 1
          %dc_cent_tmp = $mid($2,%dc_cent_ch1,1)
          %dc_cent_lin = %dc_cent_lin $+ %dc_cent_tmp
          if ($1 > $len(%dc_cent_lin)) {
            %dc_cent_lin = %dc_cent_tmp $+ %dc_cent_lin
          }
          if (%dc_cent_ch1 >= $len($2)) {
            %dc_cent_ch1 = 0

          }
        }
        if ($len($2) == 1) {
          %dc_cent_lin = %dc_cent_lin $+ $2
          if ($1 > $len(%dc_cent_lin)) {
            %dc_cent_lin = $2 $+ %dc_cent_lin
          }
        }      
        if ($1 > $len(%dc_cent_lin)) {
          goto duke_more_more_more
        }
        %out = %dc_cent_lin
        unset %dc_cent_* %dc_nick
        return %out
      }
    }
  }
  unset %nick*
  if (!$1) %ss = $chr(160)
  else {
    %ss = $left($1,1)
  }                                       
  if (%many !isnum) { set %many 1 }
  if ($chan == $active) {
    if ($snick($active,1) == $null) {
      set %nick $nick($active,$rand(1,$nick($active,0)))
    }
    else { set %nick $snick($active,1) }
  }
  if ($chan == $null) {
    if ($query($active) != $null) { 
      set %nick $query($active)
    }
    else {
      set %nick $active
      set %nick $mid(%nick,2,$len(%nick))
    }
  }
  set %nick1 %nick
  if ($chan == $active) {
    if (%many > 1) {
      set %nickcount 2
      :nextsnick
      if (%nickcount <= %many) {
        if ($snick($active,%nickcount) != $null) {
          set %nick [ $+ [ %nickcount ] ] $snick($active,%nickcount)
          inc %nickcount
          goto nextsnick
        }
      }
      if (%many > $nick($active,0)) { goto notenuff }
      :pickem
      if (%nickcount > %many) {
        goto chend
      }
      if ($nick($active,0) >= %many) {
        set %nick $nick($active,$rand(1,$nick($active,0)))
        set %i 1
        :checking
        if (%nick == [ %nick [ $+ [ %i ] ] ] ) {
          goto pickem
        }
        if (%i == %nickcount) {
          set %nick $+ %nickcount %nick
          inc %nickcount
          goto pickem
        }
        else {
          inc %i
          goto checking
        }
      }
      :notenuff
      set %nick $+ %nickcount $nick($active,$rand(1,$nick($active,0)))
      if (%nickcount < %many) {
        inc %nickcount
        goto notenuff
      }
    }
    :chend
  }
  if ($chan != $active) { 
    if (%many > 1) {
      set %nickcount 2
      set %nicktemp $me
      :next2
      set %nick $+ %nickcount %nicktemp
      if (%nickcount == %many) {
        goto quend
      }
      else {
        inc %nickcount
        if (%nicktemp == %nick1) {
          set %nicktemp $me
        }
        else {
          set %nicktemp %nick1
        }
        goto next2
      }
    } 
    :quend
  }
  set %count 1
  if (!$1) %ss = $chr(160)
  else {
    %ss = $left($1,1)
  }
  :nextcount
  set %nick [ %nick [ $+ [ %count ] ] ]
  set %txma 9 - $len(%nick)
  set %txmb %txma / 2
  set %txmc $str(%ss,$int(%txmb)) $+ %nick $+ $str(%ss,$int(%txmb)) $+ %ss
  set %nn $+ %count $left(%txmc,9)
  set %txma 12 - $len(%nick)
  set %txmb %txma / 2
  set %txmc $str(%ss,$int(%txmb)) $+ %nick $+ $str(%ss,$int(%txmb)) $+ %ss
  set %az $+ %count $left(%txmc,12)
  set %nickalp $mid(abcdefghijklmnopqrstuvwxyz,%count,1)
  set %i 1
  :nextalp
  set %azt %az [ $+ [ %count ] ]
  set %nnt %nn [ $+ [ %count ] ]
  if ($mid(%azt,%i,1) isnum) {
    set %z $+ %i $+ %nickalp  $+ $mid(%azt,%i,1)
  }
  else {
    set %z $+ %i $+ %nickalp $mid(%azt,%i,1)
  }
  if (%i <= 9) {
    if ($mid(%nnt,%i,1) isnum) {
      set %c $+ %i $+ %nickalp  $+ $mid(%nnt,%i,1) } | else { set %c $+ %i $+ %nickalp $mid(%nnt,%i,1)
    }
  }
  if (%i < 12) {
    inc %i
    goto nextalp
  }
  if (%count < %many) {
    inc %count
    goto nextcount
  }
  set %nn %nn1
  set %i 1
  :txx1next
  if ($mid(%nn,%i,1) isnum) {
    set %c $+ %i  $+ $mid(%nn,%i,1)
  }
  else {
    set %c $+ %i $mid(%nn,%i,1)
  }
  if (%i < 9) {
    inc %i
    goto txx1next
  }

  set %az %az1
  set %i 1
  :txx2next
  if ($mid(%az,%i,1) isnum) {
    set %z $+ %i  $+ $mid(%az,%i,1)
  }
  else {
    set %z $+ %i $mid(%az,%i,1)
  }
  if (%i < 12) {
    inc %i
    goto txx2next
  }
  set %txma 12 - $len($me)
  set %txmb %txma / 2
  set %txmc $str(%ss,$int(%txmb)) $+ $me $+ $str(%ss,$int(%txmb)) $+ %ss
  set %mz $left(%txmc,12)
  set %txma 9 - $len($me)
  set %txmb %txma / 2
  set %txmc $str(%ss,$int(%txmb)) $+ $me $+ $str(%ss,$int(%txmb)) $+ %ss
  set %me $left(%txmc,9)
  set %i 1
  :txx3next
  if ($mid(%me,%i,1) isnum) {
    set %m $+ %i  $+ $mid(%me,%i,1)
  }
  else {
    set %m $+ %i $mid(%nn,%i,1)
  }
  if (%i < 9) {
    inc %i
    goto txx3next
  }
  if ($chan == $active) {
    set %temp $chan
  }
  else {
    set %temp $chr(35) $+ %nick1 $+ & $+ $me
  }
  set %txma 20 - $len(%temp)
  set %txmb %txma / 2
  set %txmc $str(%ss,$int(%txmb)) $+ %temp $+ $str(%ss,$int(%txmb)) $+ %ss
  set %cz $left(%txmc,20)
  set %i 1
  :txx4next
  if ($mid(%cz,%i,1) isnum) {
    set %cz $+ %i  $+ $mid(%cz,%i,1)
  }
  else {
    set %cz $+ %i $mid(%cz,%i,1)
  }
  if (%i < 20) {
    inc %i
    goto txx4next
  }
  set %txma 10 - $len($day)
  set %txmb %txma / 2
  set %txmc $str(%ss,$int(%txmb)) $+ $day $+ $str(%ss,$int(%txmb)) $+ %ss
  set %dz $left(%txmc,10) 
  set %yz $asctime(mm/dd/yyyy)
  set %tz $asctime(hh:nn tt)
  if ($mid(%tz,1,1) == 0) {
    set %tz $mid(%tz,2,$len(%tz)) $+ $chr(160)
  }
  set %i 1
  :tx3next
  set %mz $+ %i  $+ $mid(%mz,%i,1)
  if (%i == 12) goto tx3done
  inc %i
  goto tx3next
  :tx3done 
  set %i 1
  :txmenext
  set %m [ $+ [ %i ] ]  $+ $mid(%me,%i,1)
  if (%i == 9) goto txmedone
  inc %i
  goto txmenext
  :txmedone 
  unset %txm* %count %many %i %temp
}

menu channel,query {
  .ß£ÜÊ±ß®ÎTÑÉÝ 
  ..BMnick1~~10
  ...~BMnick1~: rbarts | .play -ctBMnick1 blue-britney.txt 2003
  ...~BMnick2~: rbarts | .play -ctBMnick2 blue-britney.txt 2003
  ...~BMnick3~: rbarts | .play -ctBMnick3 blue-britney.txt 2003
  ...~BMnick4~: rbarts | .play -ctBMnick4 blue-britney.txt 2003
  ...~BMnick5~: rbarts | .play -ctBMnick5 blue-britney.txt 2003
  ...~BMnick6~: rbarts | .play -ctBMnick6 blue-britney.txt 2003
  ...~BMnick7~: rbarts | .play -ctBMnick7 blue-britney.txt 2003
  ...~BMnick8~: rbarts | .play -ctBMnick8 blue-britney.txt 2003
  ...~BMnick9~: rbarts | .play -ctBMnick9 blue-britney.txt 2003
  ...~BMnick10~: rbarts | .play -ctBMnick10 blue-britney.txt 2003
  ..-
  ..BMnick11~20
  ...«BMnick11»: rbarts | .play -ctBMnick11 blue-britney.txt 2003
  ...«BMnick12»: rbarts | .play -ctBMnick12 blue-britney.txt 2003
  ...«BMnick13»: rbarts | .play -ctBMnick13 blue-britney.txt 2003

  ...«BMnick14»: rbarts | .play -ctBMnick14 blue-britney.txt 2003
  ...«BMnick15»: rbarts | .play -ctBMnick15 blue-britney.txt 2003  
  ...«BMnick16»: rbarts | .play -ctBMnick16 blue-britney.txt 2003  
  ...«BMnick17»: rbarts | .play -ctBMnick17 blue-britney.txt 2003  
  ...«BMnick18»: rbarts | .play -ctBMnick18 blue-britney.txt 2003  
  ...«BMnick19»: rbarts | .play -ctBMnick19 blue-britney.txt 2003
  ...«BMnick20»: rbarts | .play -ctBMnick20 blue-britney.txt 2003
  ..-
  ..BMnick21~~30
  ...!BMnick21!: rbarts | .play -ctBMnick21 blue-britney.txt 2003
  ...!BMnick22!: rbarts | .play -ctBMnick22 blue-britney.txt 2003
  ...!BMnick23!: rbarts | .play -ctBMnick23 blue-britney.txt 2003
  ...!BMnick24!: rbarts | .play -ctBMnick24 blue-britney.txt 2003
  ...!BMnick25!: rbarts | .play -ctBMnick25 blue-britney.txt 2003
  ...!BMnick26!: rbarts | .play -ctBMnick26 blue-britney.txt 2003
  ...!BMnick27!: rbarts | .play -ctBMnick27 blue-britney.txt 2003
  ...!BMnick28!: rbarts | .play -ctBMnick28 blue-britney.txt 2003
  ...!BMnick29!: rbarts | .play -ctBMnick29 blue-britney.txt 2003
  ...!BMnick30!: rbarts | .play -ctBMnick30 blue-britney.txt 2003
  ..-
  ..BMnick31--40
  ...^BMnick31^: rbarts | .play -ctBMnick31 blue-britney.txt 2003
  ...^BMnick32^: rbarts | .play -ctBMnick32 blue-britney.txt 2003
  ...^BMnick33^: rbarts | .play -ctBMnick33 blue-britney.txt 2003
  ...^BMnick34^: rbarts | .play -ctBMnick34 blue-britney.txt 2003
  ...^BMnick35^: rbarts | .play -ctBMnick35 blue-britney.txt 2003
  ...^BMnick36^: rbarts | .play -ctBMnick36 blue-britney.txt 2003
  ...^BMnick37^: rbarts | .play -ctBMnick37 blue-britney.txt 2003
  ...^BMnick38^: rbarts | .play -ctBMnick38 blue-britney.txt 2003
  ...^BMnick39^: rbarts | .play -ctBMnick39 blue-britney.txt 2003
  ...^BMnick40^: rbarts | .play -ctBMnick40 blue-britney.txt 2003
  ..-
  ..BMnick41~-50
  ...+BMnick41+: rbarts | .play -ctBMnick41 blue-britney.txt 2003
  ...+BMnick42+: rbarts | .play -ctBMnick42 blue-britney.txt 2003
  ...+BMnick43+: rbarts | .play -ctBMnick43 blue-britney.txt 2003
  ...+BMnick44+: rbarts | .play -ctBMnick44 blue-britney.txt 2003
  ...+BMnick45+: rbarts | .play -ctBMnick45 blue-britney.txt 2003
  ...+BMnick46+: rbarts | .play -ctBMnick46 blue-britney.txt 2003
  ...+BMnick47+: rbarts | .play -ctBMnick47 blue-britney.txt 2003
  ...+BMnick48+: rbarts | .play -ctBMnick48 blue-britney.txt 2003
  ...+BMnick49+: rbarts | .play -ctBMnick49 blue-britney.txt 2003
  ...+BMnick50+: rbarts | .play -ctBMnick50 blue-britney.txt 2003
  .Share/Send
  ..Offer mrc /blue-britneyoffer: /blue-britneyoffer
  ..Send  blue-britney.mrc--> $snick(#,1) : set %mrbfile blue-britney | rbnick3 | dcc send %nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg %nick Place both the %mrbfile .txt and .mrc in \mirc\ | msg %nick type--> 4 /load -rs %mrbfile $+ .mrc
  .-
  .Version /blue-britney:/blue-britney
}
