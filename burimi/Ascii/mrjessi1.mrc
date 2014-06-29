;mrS>mrJessi1:1.0-mIRC60+:::
;Edited for mIRC60+ by rebel & patches #mIRC_Rainbow - Undernet February 23, 2002 - New Scripting by DuKeCuPiD
;I finally finished my first file!. I would like to thank texxy(For this great script!), patches ,and Sher, 
; for all the help they gave me during the making of this file. patches, thanks for putting up with my
; million and one questions, and helping me with my many mirc problems! Also patches,
; thanks for helping me  set up of the show for mrjessi1.mrc. Thanks to ALL the Rainbow Ops
; who sat through my various testings, and offered ideas and advice. Keeper and ^rebel,who
; saved me from last minute disasters, and fixed things that were japanese to me! Desiree,
; for explaining in detail how to set this mrc up , and also testing this file.  Thank you ANGLTOOCH
; for also testing!  And Slaps and Pammie for always being there to lend a helping hand, and much  
; needed advice!  If it wasn't'for all of you, I couldn't have done it!  Also, To all of my friends at Stream
; who sat through many many testings! Thank You All! And last..but definitely not least, Mike, Just 
; knowing you're my baby, makes me smile..IAY!
' Note: All Art drawn and colored by Jessi^, unless otherwise initialed:)
; mrjessi1 finished November 30, 1999. This file and its wavs will be available at the #mIRC_Rainbow website:
; http://www.mirc-rainbow.com/
; To load type:  /load -rs mrjessi1.mrc after moving mrc and .txt to main mirc. dir

ctcp 1:mrjessi1: notice $nick $me 4is using mrjessi1.mrc 2(v2 mIRC60+) February 23, 2002
alias mrjessi1 set %nick $1 | if ($1 == $null) { rbnick3 } | /ctcp %nick mrjessi1

on 1:TEXT:"*:*: {
  set %mrbfile mrJessi1 | if (($1 == " $+ $me) && ($2 ==  %mrbfile)) {
    echo -a 3,1Ö13¿3~ 0,3sending %mrbfile to $nick
    /dcc send $nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg $nick If txPlay50+ is loaded type: /txload %mrbfile | msg $nick Move to "root" mirc dir | msg $nick and type--> 4/load -rs %mrbfile $+ .mrc | msg $nick Use nicklist & query menus to play. | halt
  }
}
alias mrboffer2002 {
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
alias mrjessi1offer {
  mrboffer2002 | set %mrbfile mrjessi1
  say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn1 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3 $+ $str( ,$len($me)) $+ ->To Grab %mrbfile $+ <-   | /say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn2 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3   paste-->  $+ %rc3 $+ , $+ %rc1 $+ " $+ $me %mrbfile
}
alias rbnick3 {
  if ($chan == $active) {
  if ($snick(#,1) == $null) { set %nick $nick(#,$rand(1,$nick(#,0))) } | else { set %nick $snick(#,1) }  }
  if ($chan == $null) {
    if ($query($active) != $null) { set %nick $query($active) }
    else { set %nick $active | set %nick $mid(%nick,2,30) }
  }
}
alias btime {
  set %hr $gettok($time,1,58)
  set %min $gettok($time,2,58)
  if (%hr == 0) { set %hr 12 | set %sub am }
  elseif (%hr < 12) { set %sub am }
  elseif (%hr == 12) { set %sub pm }
  else { %hr = %hr - 12 | set %sub pm }
  return %hr $+ : $+ %min  %sub
}
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
;alias by Lyin
alias hoss2 { unset %tmpta | set %tmptcn $1 | inc %tmptcn 1 | set %tmpdn %tmptcn + 1 | set %tmpdl $ $+ %tmpdn $+ - | set %tmpd [ [ % [ $+ [ tmpdl ] ] ] ] | set %tmpta $ $+ gettok( | set %tmpi 1 
  :tmp | inc %tmpi 1 | set %tmpdy [ [ $ [ $+ [ %tmpi ] ] ] ]
  if (%tmpi < %tmptcn) { set %tmpta %tmpta $+ %tmpdy $+ $chr(38) | goto tmp }
  if (%tmpi == %tmptcn) { set %tmpta %tmpta $+ %tmpdy $+ ,%tmpc,38 $chr(41) } 
  unset %tmpo | set %tmpi $replace(%tmpd,$chr(32), ) | set %tmpp 1 | set %tmpc 1
  :loop | set %tmpu $mid(%tmpi,%tmpp,1)
  if (%tmpu isnum) { set %tmpo %tmpo $+ $chr(3) $+ [ [ % [ $+ [ tmpta ] ] ] ] $+  $+ %tmpu | goto skip }
  set %tmpo %tmpo $+ $chr(3) $+ [ [ % [ $+ [ tmpta ] ] ] ] $+ %tmpu
  :skip | inc %tmpp | if ($mid(%tmpi,%tmpp,1) != $null) { inc %tmpc } | if (%tmpc = %tmptcn) { set %tmpc 1 } | if ($mid(%tmpi,%tmpp,1) != $null) { goto loop } | unset %tmpu | return %tmpo 
}
alias rbfancy2 {
  unset %rb
  set %test $1- | set %test $replace(%test,$chr(32),$chr(160)) | set %testlen $len(%test)
  set %i 0
  :next
  if ($len(%rb) == %testlen) { goto end }
  inc %i | set %char $mid(%test,%i,1)
  set %asc $asc(%char)
  if (%asc == 97) { %rb = %rb $+ â | goto next }
  if (%asc == 99) { %rb = %rb $+ ç | goto next }
  if (%asc == 101) { %rb = %rb $+ é | goto next }
  if (%asc == 105) { %rb = %rb $+ î | goto next }
  if (%asc == 108) { %rb = %rb $+ Ì | goto next }
  if (%asc == 110) { %rb = %rb $+ ñ | goto next }
  if (%asc == 111) { %rb = %rb $+ ó | goto next }
  if (%asc == 112) { %rb = %rb $+ Þ | goto next }
  if (%asc == 117) { %rb = %rb $+ û | goto next }
  if (%asc == 121) { %rb = %rb $+ ý | goto next }
  if (%asc == 65) { %rb = %rb $+ Â | goto next }
  if (%asc == 66) { %rb = %rb $+ ß | goto next }
  if (%asc == 67) { %rb = %rb $+ Ç | goto next }
  if (%asc == 68) { %rb = %rb $+ Ð | goto next }
  if (%asc == 69) { %rb = %rb $+ É | goto next }
  if (%asc == 73) { %rb = %rb $+ Î | goto next }
  if (%asc == 76) { %rb = %rb $+ £ | goto next }
  if (%asc == 78) { %rb = %rb $+ Ñ | goto next }
  if (%asc == 79) { %rb = %rb $+ Ó | goto next }
  if (%asc == 80) { %rb = %rb $+ þ | goto next }
  if (%asc == 83) { %rb = %rb $+ § | goto next }
  if (%asc == 85) { %rb = %rb $+ Ú | goto next }
  if (%asc == 89) { %rb = %rb $+ Ý | goto next }
  %rb = %rb $+ %char | goto next
  :end | return %rb | unset %test* %asc %char %i
}
alias uggy {
  unset %ug_* | set %ug_letter 1 | set %ug_count 2 | set %ug_letterc 0
  set %ug_howmany $gettok($1,1,46) | set %ug_num 0
  set %ug_beans $gettok($1,2,46) | if (%ug_beans != no) { set %ug_beansc  $+ %ug_beans $+ , $+ %ug_beans } | else { set %ug_beansc  }
  .write -c uggy.tmp $2- | set %ug_temp $read uggy.tmp
  set %ug_w $replace(%ug_temp,$chr(32),$chr(160)) | set %ug_length $len(%ug_w)
  :next
  inc %ug_letterc
  inc %ug_count | inc %ug_num
  set %ug_gyc $replace($gettok($1,%ug_count,46),$chr(47),$chr(44))
  set %ug_turn $mid(%ug_w,%ug_letterc,1)
  if (%ug_turn isnum) { set %ug_gy %ug_gy $+ $chr(3) $+ %ug_gyc $+  $+ %ug_turn }
  else {
    if ((%ug_turn == $chr(160)) && (%ug_beans != yes)) { set %ug_gy %ug_gy $+ %ug_beansc $+ $chr(160) }
    else { set %ug_gy %ug_gy $+ $chr(3) $+ %ug_gyc $+ %ug_turn }
  }
  if (%ug_num == %ug_howmany) { set %ug_count 2 | set %ug_num 0 }
  if (%ug_letterc != %ug_length) { goto next }
  return %ug_gy | unset %ug_* 
}

alias fuggy {
  unset %ug_* | set %ug_letter 1 | set %ug_count 2 | set %ug_letterc 0
  set %ug_howmany $gettok($1,1,46) | set %ug_num 0
  set %ug_beans $gettok($1,2,46) | if (%ug_beans != no) { set %ug_beansc  $+ %ug_beans $+ , $+ %ug_beans } | else { set %ug_beansc  }
  .write -c uggy.tmp $2- | set %ug_temp $read uggy.tmp | set %ug_temp $rbfancy(%ug_temp)

  set %ug_w $replace(%ug_temp,$chr(32),$chr(160)) | set %ug_length $len(%ug_w)
  :next
  inc %ug_letterc
  inc %ug_count | inc %ug_num
  set %ug_gyc $replace($gettok($1,%ug_count,46),$chr(47),$chr(44))
  set %ug_turn $mid(%ug_w,%ug_letterc,1)
  if (%ug_turn isnum) { set %ug_gy %ug_gy $+ $chr(3) $+ %ug_gyc $+  $+ %ug_turn }
  else {
    if ((%ug_turn == $chr(160)) && (%ug_beans != yes)) { set %ug_gy %ug_gy $+ %ug_beansc $+ $chr(160) }
    else { set %ug_gy %ug_gy $+ $chr(3) $+ %ug_gyc $+ %ug_turn }
  }
  if (%ug_num == %ug_howmany) { set %ug_count 2 | set %ug_num 0 }
  if (%ug_letterc != %ug_length) { goto next }
  return %ug_gy | unset %ug_* 
}
alias RBcenter return $str($chr(160),$int($calc($calc($1 - $len($strip($2-))) / 2))) $+ $2- $+ $str($chr(160),$calc($calc($1 - $len($strip($2-))) - $int($calc($calc($1 - $len($strip($2-))) / 2))))
alias RBlalign return $2- $+ $str($chr(160),$calc($1 - $len($strip($2-))))
alias RBralign return $str($chr(160),$calc($1 - $len($strip($2-)))) $+ $2-
alias RBsmoosh {
  set %t-rb1 $1- | set %t-rbnextword false | set %t-rbcount 0
  set %t-rblen $len($1-) | unset %t-rbline | set %t-rbplaks ;,.?!:
  :loop
  inc %t-rbcount
  if ($calc(%t-rbcount - 1) < %t-rblen) {
    set %t-rbt $mid(%t-rb1,%t-rbcount,1)
    if (%t-rbt isin %t-rbplaks) {
      set %t-rbline  [ %t-rbline ] $+ [ %t-rbt ]
      goto loop
    }
    if (%t-rbnextword == true) {
      if (%t-rbt == $chr(32)) || (%t-rbt == $chr(160)) {
        goto loop
      }
      else {
        set %t-rbline %t-rbline %t-rbt
        set %t-rbnextword false
        goto loop
      }
    }   
    if (%t-rbnextword == false) {
      if (%t-rbt == $chr(32)) || (%t-rbt == $chr(160)) {
        %t-rbnextword = true
        goto loop
      }
      else {
        set %t-rbline [ %t-rbline ] $+ [ %t-rbt ]  
        goto loop
      }  
    }
  }
  return %t-rbline
}
alias uncover rbarts | if ($1 == $null) { set %mes $$?="Enter Message 24 characters or less" } | else { set %mes $1- } | .play -ctjessra13 mrjessi1.txt 100
menu nicklist,query {
  * JE§§iPOPs *
  .Greets /jessg
  ..3dhello: rbarts | .play -ctjessg1 mrjessi1.txt 800
  ..Grt2CU!: rbarts | .play -ctjessg2 mrjessi1.txt 1200
  ..Diamondhello: rbarts | .play -ctjessg3 mrjessi1.txt 800
  ..ReverseHello: rbarts | .play -ctjessg4 mrjessi1.txt 1200
  ..7Hello: rbarts | .play -ctjessg5 mrjessi1.txt 1200
  ..HelloThere: rbarts | .play -ctjessg6 mrjessi1.txt 300
  ..Hi!: rbarts | .play -ctjessg7 mrjessi1.txt 300
  ..Hiya!: rbarts | .play -ctjessg8 mrjessi1.txt 600
  ..Hiya2: rbarts | .play -ctjessg9 mrjessi1.txt 300
  ..Pssst: rbarts | .play -ctjessg10 mrjessi1.txt 700
  ..Sssnake: rbarts | .play -ctjessg11 mrjessi1.txt 1200
  ..GiantMouse: rbarts | .play -ctjessg12 mrjessi1.txt 2000
  ..BoingBear: rbarts | .play -ctjessg13 mrjessi1.txt 2000
  ..Good Morning: rbarts | .play -ctjessg14 mrjessi1.txt 500
  ..RugratChuckie: rbarts | .play -ctjessg15 mrjessi1.txt 700
  .GoodByes /jessgb
  ..5G'Byes: rbarts | .play -ctjessgb1 mrjessi1.txt 1200
  ..Sad2CUGo: rbarts | .play -ctjessgb2 mrjessi1.txt 600
  ..Gatorlater: rbarts | .play -ctjessgb3 mrjessi1.txt 700
  ..WrapforMe: rbarts | .play -ctjessgb4 mrjessi1.txt 700
  ..ByeByeBox: rbarts | .play -ctjessgb5 mrjessi1.txt 300
  ..Sleep: rbarts | .play -ctjessgb6 mrjessi1.txt 300
  .Nicks /jessn
  ..1Nick
  ...1nickkiss: rbarts | .play -ctjessn1 mrjessi1.txt 300
  ...1nick3d: rbarts | .play -ctjessn2 mrjessi1.txt 300
  ...1nickdesign: rbarts | .play -ctjessn3 mrjessi1.txt 1200
  ...1nickflower: rbarts | .play -ctjessn4 mrjessi1.txt 600
  ...1nickrpb: rbarts | .play -ctjessn5 mrjessi1.txt 300
  ...1nickbaby!!: rbarts | .play -ctjessn6 mrjessi1.txt 300 
  ...1nickblue: rbarts | .play -ctjessn7 mrjessi1.txt 300
  ...1nickroses: rbarts | .play -ctjessn8 mrjessi1.txt 300
  ...1nickroy: rbarts | .play -ctjessn9 mrjessi1.txt 800
  ...1nickblue2: rbarts | .play -ctjessn10 mrjessi1.txt 300
  ..2Nick
  ...2nickblue: rbarts | .play -ctjessn11 mrjessi1.txt 1200
  ...2nickpatch: rbarts | .play -ctjessn12 mrjessi1.txt 1200
  ...2nickdesign: rbarts | .play -ctjessn13 mrjessi1.txt 300
  ...2nickframe: rbarts | .play -ctjessn14 mrjessi1.txt 1400
  ...2nickbw: rbarts | .play -ctjessn15 mrjessi1.txt 300
  ...2nicktp: rbarts | .play -ctjessn16 mrjessi1.txt 1000
  ...2nickbox: rbarts | .play -ctjessn17 mrjessi1.txt 800
  ...2nickrpb: rbarts | .play -ctjessn18 mrjessi1.txt 1200
  ...2nickroy: rbarts | .play -ctjessn19 mrjessi1.txt 300
  ...2nick3d: rbarts | .play -ctjessn20  mrjessi1.txt 300
  ..3Nick
  ...3nickbox: rbarts | .play -ctjessn21  mrjessi1.txt 800
  ...3nickblue: rbarts | .play -ctjessn22 mrjessi1.txt 300
  ...3nickred: rbarts | .play -ctjessn23 mrjessi1.txt 300
  ...3nickwalls: rbarts | .play -ctjessn24 mrjessi1.txt 300
  ...3nickfunky: rbarts | .play -ctjessn25 mrjessi1.txt 300
  ..4Nick
  ...4nickpb: rbarts | .play -ctjessn26 mrjessi1.txt 300
  ...4nickroses: rbarts | .play -ctjessn30 mrjessi1.txt 1200
  ..5Nick
  ...5nickrpb: rbarts | .play -ctjessn27 mrjessi1.txt 800
  ..6Nick
  ...6nickframe: rbarts | .play -ctjessn28 mrjessi1.txt 1400
  ..10Nick
  ...10nick: rbarts | .play -ctjessn29 mrjessi1.txt 300
  .Nicklisters /jessnl
  ..6nickHello: set %many 6 | rbarts | .play -ctjessnl1 mrjessi1.txt 600
  ..6nickTime2Go: set %many 6 | rbarts | .play -ctjessnl2 mrjessi1.txt 600
  ..12Nicklist: set %many 12 | rbarts | .play -ctjessnl3 mrjessi1.txt 1200
  ..RB9HelloList: set %many 9 | rbarts | .play -ctjessnl4 mrjessi1.txt 600
  ..10NickAbstract: set %many 10 | rbarts | .play -ctjessnl5 mrjessi1.txt 1100
  .Blocks /jessb
  ..6nick: rbarts | .play -ctjessb1 mrjessi1.txt 1200
  ..Broken6nick: rbarts | .play -ctjessb2 mrjessi1.txt 800
  ..1nickWall: rbarts | .play -ctjessb3 mrjessi1.txt 1200
  ..4nick: rbarts | .play -ctjessb4 mrjessi1.txt 800
  .RainbowFun 
  ..RBGreets /jessrg
  ...Hello1: rbarts | .play -ctjessrg1 mrjessi1.txt 600
  ...Hello2: rbarts | .play -ctjessrg2 mrjessi1.txt 800
  ...Grt2Cu!: rbarts | .play -ctjessrg3 mrjessi1.txt 800 
  ...Hiya4nick: rbarts | .play -ctjessrg4 mrjessi1.txt 300
  ...Hellobows1: rbarts | .play -ctjessrg5 mrjessi1.txt 1000
  ...Hellobows2: rbarts | .play -ctjessrg6 mrjessi1.txt 300
  ...Hieveryone: rbarts | .play -ctjessrg7 mrjessi1.txt 800
  ...Channelhello: rbarts | .play -ctjessrg8 mrjessi1.txt 400
  ...RainbowWelcome: rbarts | .play -ctjessrg9 mrjessi1.txt 800
  ...HelloBear: rbarts | .play -ctjessrg10 mrjessi1.txt 800
  ..RBByes /jessrb
  ...byebye:  rbarts | .play -ctjessrb1 mrjessi1.txt 400
  ...SeeYa: rbarts | .play -ctjessrb2 mrjessi1.txt 300
  ...Bye!: rbarts | .play -ctjessrb3 mrjessi1.txt 300
  ...ByeEveryone!: rbarts | .play -ctjessrb4 mrjessi1.txt 600
  ...BeddyBye: rbarts | .play -ctjessrb5 mrjessi1.txt 300
  ...Int'l-Gbye: rbarts | .play -ctjessrb6 mrjessi1.txt 600
  ..RBNicks /jessrn
  ...1nick1: rbarts | .play -ctjessrn1 mrjessi1.txt 300
  ...1nick2: rbarts | .play -ctjessrn2 mrjessi1.txt 1000
  ...1nick3: rbarts | .play -ctjessrn3 mrjessi1.txt 1200
  ...1nick4: rbarts | .play -ctjessrn4 mrjessi1.txt 300
  ...1nick5: rbarts | .play -ctjessrn5 mrjessi1.txt 1400
  ...1nick6: rbarts | .play -ctjessrn6 mrjessi1.txt 300
  ...1nick7: rbarts | .play -ctjessrn7 mrjessi1.txt 400
  ...2nick1: rbarts | .play -ctjessrn8 mrjessi1.txt 300
  ...2nick2: rbarts | .play -ctjessrn9 mrjessi1.txt 500
  ...2nick3: rbarts | .play -ctjessrn10 mrjessi1.txt 300
  ...3nick1: rbarts | .play -ctjessrn11 mrjessi1.txt 700
  ...3nick2: rbarts | .play -ctjessrn12 mrjessi1.txt 300
  ...3nick3: rbarts | .play -ctjessrn23 mrjessi1.txt 300
  ...3nick4: rbarts | .play -ctjessrn24 mrjessi1.txt 1200 
  ...4nick1: rbarts | .play -ctjessrn13 mrjessi1.txt 300
  ...4nick2: rbarts | .play -ctjessrn14 mrjessi1.txt 1000
  ...5nick1: rbarts | .play -ctjessrn15 mrjessi1.txt 1200
  ...5nick2: rbarts | .play -ctjessrn16 mrjessi1.txt 800
  ...6nick1: rbarts | .play -ctjessrn17 mrjessi1.txt 400
  ...6nick2: rbarts | .play -ctjessrn18 mrjessi1.txt 800
  ...8nick1: rbarts | .play -ctjessrn19 mrjessi1.txt 700
  ...8nick2: rbarts | .play -ctjessrn20 mrjessi1.txt 1200
  ...8nick3: rbarts | .play -ctjessrn21 mrjessi1.txt 800
  ...12nick: rbarts | .play -ctjessrn22 mrjessi1.txt 800
  ..RBFunkyNicks /jessfn
  ...nicktwist: rbarts | .play -ctjessfn1 mrjessi1.txt 600
  ...reversenick: rbarts | .play -ctjessfn2 mrjessi1.txt 600
  ...rainbownick: rbarts | .play -ctjessfn3 mrjessi1.txt 600
  ...zigzag: rbarts | .play -ctjessfn4 mrjessi1.txt 1200
  ...columns: rbarts | .play -ctjessfn5 mrjessi1.txt 700 
  ..RBAssorted /jessra
  ...Hearts'n'Hugs: rbarts | .play -ctjessra1 mrjessi1.txt 800
  ...Rbchest: rbarts | .play -ctjessra2 mrjessi1.txt 800
  ...Heart12nick: rbarts | .play -ctjessra3 mrjessi1.txt 1200
  ...Wizard: rbarts | .play -ctjessra4 mrjessi1.txt 1100
  ...Pot'0'Gold: rbarts | .play -ctjessra5 mrjessi1.txt 500
  ...Swingbear: rbarts | .play -ctjessra6 mrjessi1.txt 1700
  ..."Bear"Stop: rbarts | .play -ctjessra7 mrjessi1.txt 800
  ...Balloonbear: rbarts | .play -ctjessra8 mrjessi1.txt 1400
  ...DUH!: rbarts | .play -ctjessra9 mrjessi1.txt 1000
  ...Well..DUH!: rbarts | .play -ctjessra10 mrjessi1.txt 600
  ...Balloons: rbarts | .play -ctjessra11 mrjessi1.txt 1100
  ...SewsRainbow: rbarts | .play -ctjessra12 mrjessi1.txt 800
  ...Secret /uncover: uncover
  ...Smile: rbarts | .play -ctjessra14 mrjessi1.txt 800
  ...GiantRBDiamond: rbarts | .play -ctjessra15 mrjessi1.txt 2100
  ..Website /jessrw
  ...RainbowBus: rbarts | .play -ctjessrw mrjessi1.txt 1000
  .SpecialOccasions
  ..Holidays /jessh
  ...NewYears: rbarts | .play -ctjessh1 mrjessi1.txt 1000 
  ...Valentine: rbarts | .play -ctjessh2 mrjessi1.txt 800
  ...StPat's: rbarts | .play -ctjessh3 mrjessi1.txt 600
  ...Easter: rbarts | .play -ctjessh4 mrjessi1.txt 700
  ...July4th: rbarts | .play -ctjessh5 mrjessi1.txt 300
  ...Halloween
  ....Boo!: rbarts | .play -ctjessh6 mrjessi1.txt 700
  ....TrickorTreat: rbarts | .play -ctjessh7 mrjessi1.txt 800
  ...Thanksgiving: rbarts | .play -ctjessh8 mrjessi1.txt 600
  ...Christmas
  ....X-MasCandyCanes: rbarts | .play -ctjessh9 mrjessi1.txt 800
  ....X-MasHouse: rbarts | .play -ctjessh10 mrjessi1.txt 2100
  ....XMasSnow: rbarts | .play -ctjessh11 mrjessi1.txt 1100
  ....X-Mas2teeth: rbarts | .play -ctjessh12 mrjessi1.txt 800
  ....X-MasTree: rbarts | .play -ctjessh13 mrjessi1.txt 800
  ...Hanukah
  ....SmallMenorah: rbarts | .play -ctjessh14 mrjessi1.txt 400
  ....LargeMenorah: rbarts | .play -ctjessh15 mrjessi1.txt 600 
  ..Birthday /jessbd
  ...BDCandles: rbarts | .play -ctjessbd1 mrjessi1.txt 800
  ...BDClown: rbarts | .play -ctjessbd2 mrjessi1.txt 800
  .Love /jessl
  ..BunnyLove: rbarts | .play -ctjessl1 mrjessi1.txt 800
  ..Butterfly: rbarts | .play -ctjessl2 mrjessi1.txt 1200
  ..Core: rbarts | .play -ctjessl3 mrjessi1.txt 400
  ..IAdoreYou: rbarts | .play -ctjessl4 mrjessi1.txt 1100
  ..ILuvYou: rbarts | .play -ctjessl5 mrjessi1.txt 1300
  ..Kittens: rbarts | .play -ctjessl6 mrjessi1.txt 800
  ..LoveShield: rbarts | .play -ctjessl7 mrjessi1.txt 800
  ..Spice: rbarts | .play -ctjessl8 mrjessi1.txt 1200
  ..TotemPole: rbarts | .play -ctjessl9 mrjessi1.txt 1400
  ..CoupleLove /jesscl
  ...HeavenMatch: set %many 2 | rbarts | .play -ctjesscl1 mrjessi1.txt 600 
  ...LoveNest: rbarts | .play -ctjesscl2 mrjessi1.txt 2100
  ...PerfectMatch: set %many 2 | rbarts | .play -ctjesscl3 mrjessi1.txt 800
  ...Reflection: rbarts | .play -ctjesscl4 mrjessi1.txt 800
  .Flirts /jessf
  ..BabyDoll:  rbarts | .play -ctjessf1 mrjessi1.txt 1100
  ..DuckyBath:  rbarts | .play -ctjessf2 mrjessi1.txt 1100
  ..FlowerGirl:  rbarts | .play -ctjessf3 mrjessi1.txt 700
  ..Genie:  rbarts | .play -ctjessf4 mrjessi1.txt 1400
  ..GiraffePucker:  rbarts | .play -ctjessf5 mrjessi1.txt 800
  ..HotDamn!:  rbarts | .play -ctjessf6 mrjessi1.txt 300
  ..Melts:  rbarts | .play -ctjessf7 mrjessi1.txt 800
  ..SeaKisses:  rbarts | .play -ctjessf8 mrjessi1.txt 1700
  ..Nibble:  rbarts | .play -ctjessf9 mrjessi1.txt 1700
  ..TreeHouse:  rbarts | .play -ctjessf10 mrjessi1.txt 1400
  ..U&IBlocks:  rbarts | .play -ctjessf11 mrjessi1.txt 800
  ..Cat: rbarts | .play -ctjessf12 mrjessi1.txt 800
  ..Connection: rbarts | .play -ctjessf13 mrjessi1.txt 300
  ..Drooling: rbarts | .play -ctjessf14 mrjessi1.txt 400 
  ..Blush /jessbl
  ...Male:  rbarts | .play -ctjessbl1 mrjessi1.txt 700
  ...Female:  rbarts | .play -ctjessbl2 mrjessi1.txt 700
  .FriendlyFun /jessff
  ..WhooHoo!Owl: rbarts | .play -ctjessff1 mrjessi1.txt 500
  ..Cow: rbarts | .play -ctjessff2 mrjessi1.txt 1100
  ..Fishies: rbarts | .play -ctjessff3 mrjessi1.txt 1700
  ..FroggyHop: rbarts | .play -ctjessff4 mrjessi1.txt 700
  ..House/Home: rbarts | .play -ctjessff5 mrjessi1.txt 1100
  ..KingKong: rbarts | .play -ctjessff6 mrjessi1.txt 1400
  ..MnM's: rbarts | .play -ctjessff7 mrjessi1.txt 300
  ..BananaSplit: rbarts | .play -ctjessff8 mrjessi1.txt 800
  ..Peekaboo: rbarts | .play -ctjessff9 mrjessi1.txt 500
  ..SailAway: rbarts | .play -ctjessff10 mrjessi1.txt 800
  ..Smile: rbarts | .play -ctjessff11 mrjessi1.txt 600
  ..PickUpCruiser: rbarts | .play -ctjessff12 mrjessi1.txt 800
  ..UFO: rbarts | .play -ctjessff13 mrjessi1.txt 600
  ..Ballerinas: rbarts | .play -ctjessff14 mrjessi1.txt 1100
  ..HugMe: rbarts | .play -ctjessff15 mrjessi1.txt 1000
  .SillyFun /jesssf
  ..Angel-Devil: rbarts | .play -ctjesssf1 mrjessi1.txt 300
  ..BeerHolder: rbarts | .play -ctjesssf2 mrjessi1.txt 400
  ..BootyShake: rbarts | .play -ctjesssf3 mrjessi1.txt 700
  ..OompaLoompa: rbarts | .play -ctjesssf4 mrjessi1.txt 800
  ..PopCorn: rbarts | .play -ctjesssf5 mrjessi1.txt 700
  ..TootsiePop: rbarts | .play -ctjesssf6 mrjessi1.txt 700
  ..RedRum: rbarts | .play -ctjesssf7 mrjessi1.txt 500
  .Zingers /jessz
  ..BiteMe!!:  rbarts | .play -ctjessz1 mrjessi1.txt 700
  ..CheesyMouse:  rbarts | .play -ctjessz2 mrjessi1.txt 600 
  ..VillageIdiot: rbarts | .play -ctjessz3 mrjessi1.txt 800
  ..KissAss: rbarts | .play -ctjessz4 mrjessi1.txt 300
  ..Talk2Much: rbarts | .play -ctjessz5 mrjessi1.txt 400
  ..YUCK!: rbarts | .play -ctjessz6 mrjessi1.txt 600
  ..Rain: rbarts | .play -ctjessz7 mrjessi1.txt 800
  ..Change: rbarts | .play -ctjessz8 mrjessi1.txt 700
  ..SpamAlert!: rbarts | .play -ctjessz9 mrjessi1.txt 600
  ..RealityCheck: rbarts | .play -ctjessz10 mrjessi1.txt 300
  .Quickies /jessq
  ..WelcomeBack: rbarts | .play -ctjessq1 mrjessi1.txt 300
  ..BRB: rbarts | .play -ctjessq2 mrjessi1.txt 300
  ..ICQ?: rbarts | .play -ctjessq3 mrjessi1.txt 300
  ..CooL: rbarts | .play -ctjessq4 mrjessi1.txt 800
  ..3thankyou: rbarts | .play -ctjessq5 mrjessi1.txt 600
  ..BBL: rbarts | .play -ctjessq6 mrjessi1.txt 300
  ..Thanks: rbarts | .play -ctjessq7 mrjessi1.txt 1200
  ..You'reWelcome: rbarts | .play -ctjessq8 mrjessi1.txt 300
  ..Boot: rbarts | .play -ctjessq9 mrjessi1.txt 300
  ..BRBList: rbarts | .play -ctjessq10 mrjessi1.txt 800
  .ArtXtras /jessx
  ..WishStar: rbarts | .play -ctjessx1 mrjessi1.txt 1200
  ..DesertMoon: rbarts | .play -ctjessx2 mrjessi1.txt 1100
  ..Mermaid: rbarts | .play -ctjessx3 mrjessi1.txt 1100
  .-
  .Share/send/Load
  ..Send mrJessi1 $+ .mrc--> $snick(#,1) : set %mrbfile mrJessi1 | rbnick3 | dcc send %nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg %nick Place both the %mrbfile .txt and .mrc in \mirc\ | msg %nick type--> 4 /load -rs %mrbfile $+ .mrc
  ..Offer /mejessi1offer: mrjessi1offer
  ..-
  .Unload mrJessi1: unload -rs mrJessi1.mrc
  .-
  .Version /mrjessi1:/mrjessi1
}
