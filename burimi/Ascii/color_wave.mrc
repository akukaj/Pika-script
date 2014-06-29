;mrS>color_wave:1.0-mIRC60+:::
;This file....from Undernet's #color_wave 06/09/2001. Put together by Trisha aka RedSilk
;To load this file type: /load -rs color_wave.mrc
;I hope you enjoy these... ©};~<><><><><><>From everyone @ #color_waves<><><><><><>~;{©
;alias from texxy undernet rainbow.
;Offer fixes by patches #mIRC_Rainbow - Undernet 7/1/2001
ctcp 1:color_wave: notice $nick $me 4is using color_wave.mrc 2(v2 mIRC60+) February 23, 2002
alias color_wave set %nick $1 | if ($1 == $null) { rbnick3 } | /ctcp %nick color_wave
on 1:TEXT:"*:*: {
  set %mrbfile color_wave  | if (($1 == " $+ $me) && ($2 ==  %mrbfile)) {
    echo -a 3,1Ö13¿3Ö 0,3sending %mrbfile to $nick
    /dcc send $nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg $nick If txPlay50+ is loaded type: /txload %mrbfile | msg $nick Move to "root" mirc dir | msg $nick and type--> 4/load -rs %mrbfile $+ .mrc | msg $nick Use nicklist & query menus to play. | halt
  }
}
on 1:TEXT:^*:*: {
  set %mrbfile color_wave-Wavs | if (($1 == ^ $+ $me) && ($2 ==  %mrbfile)) {
    echo -a 3,1 Ö13¿3Ö 0,3sending %mrbfile to $nick
    /dcc send $nick color_wave-w1.zip | msg %nick Unzip Sounds to your mIRC Sounds Folder. | halt
  }
}
alias mrboffer2001 {
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
  if (%ack == 2) { set %dsn1  (¯`¯)  | set %dsn2   `*´   }
  if (%ack == 3) { set %dsn1 ~~@¯@~~ | set %dsn2 ¯¯<_>¯¯ }
  if (%ack == 4) { set %dsn1  #mÍ®Ç_  | set %dsn2 ®âïñßòw }
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
alias color_waveoffer {
  mrboffer2001 | set %mrbfile color_wave 
  say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn1 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3 $+ $str( ,$len($me)) $+ ->To Grab %mrbfile $+ <-   | /say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn2 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3   paste-->  $+ %rc3 $+ , $+ %rc1 $+ " $+ $me %mrbfile
}
alias color_waveoffer-w {
  mrboffer2001 | set %mrbfile color_wave-Wavs
  say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn1 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3 $+ $str( ,$len($me)) $+ ->To Grab %mrbfile $+ <-   | /say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn2 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3   paste-->  $+ %rc3 $+ , $+ %rc1 $+ " $+ $me %mrbfile
}
alias rbnick3 {
  if ($chan == $active) {
    if ($snick(#,1) == $null) { set %nick $nick(#,$rand(1,$nick(#,0))) } | else { set %nick $snick(#,1) }
  }
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
; beta v1.04

; the #mIRC_Rainbow - Undernet rbarts alias
; $rbarts(N, Filler(s)).rnick by DuKeCuPiD
;   * where N = total string length
;   * where Filler(s) = any length of characters
; alias txarts by texxy... modified by DuKeCuPiD
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

;alias by Lyin
alias hoss2 { unset %tmpta | set %tmptcn $1 | inc %tmptcn 1 | set %tmpdn %tmptcn + 1 | set %tmpdl $ $+ %tmpdn $+ - | set %tmpd [ [ % [ $+ [ tmpdl ] ] ] ] | set %tmpta $ $+ gettok( | set %tmpi 1 
  :tmp | inc %tmpi 1 | set %tmpdy [ [ $ [ $+ [ %tmpi ] ] ] ]
  if (%tmpi < %tmptcn) { set %tmpta %tmpta $+ %tmpdy $+ $chr(38) | goto tmp }
  if (%tmpi == %tmptcn) { set %tmpta %tmpta $+ %tmpdy $+ ,%tmpc,38 $chr(41) } 
  unset %tmpo | set %tmpi $replace(%tmpd,$chr(32), ) | set %tmpp 1 | set %tmpc 1
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
;alias by chippy-
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
menu query,nicklist {
  color_wave.mrc
  .°g®€€ts°I
  ..g®€€ts1-1ChanWel1 »1«: rbarts | .play -ctHi1 color_wave.txt 1800
  ..g®€€ts1-2MissMe?2 »2«: rbarts | .play -ctHi2 color_wave.txt 1200
  ..g®€€ts1-3Starlite3 »3«: rbarts | .play -ctHi3 color_wave.txt 1800
  ..g®€€ts1-4BuggsyHi4 »4«: rbarts | .play -ctHi4 color_wave.txt 2000
  ..g®€€ts1-5HorseHi5 »5«: rbarts | .play -ctHi5 color_wave.txt 2000
  ..g®€€ts1-6TeddyHi6 »6«: rbarts | .play -ctHi6 color_wave.txt 2000
  ..g®€€ts1-7ButterflyHi7 »7«: rbarts | .play -ctHi7 color_wave.txt 2200
  ..g®€€ts1-8PegHi8 »8«: rbarts | .play -ctHi8 color_wave.txt 2500
  ..g®€€ts1-9FlowerHi9 »9«: rbarts | .play -ctHi9 color_wave.txt 1800
  ..g®€€ts1-10Heart&FlowerHi10 »10«: rbarts | .play -ctHi10 color_wave.txt 2500
  ..g®€€ts1-11HeartdropsHi11 »11«: rbarts | .play -ctHi11 color_wave.txt 2500
  ..g®€€ts1-12SouthwestHi12 »12«: rbarts | .play -ctHi12 color_wave.txt 2200
  ..g®€€ts1-13Hi13 »13«: rbarts | .play -ctHi13 color_wave.txt 1200
  ..g®€€ts1-14BuggsieHi14 »14«: rbarts | .play -ctHi14 color_wave.txt 2000
  ..g®€€ts1-15YourABomb15 »15«: rbarts | .play -ctHi15 color_wave.txt 2000
  .°PðpÚþs°II
  ..PðpÚþs2-16Love16 »16«: rbarts | .play -ctHi16 color_wave.txt 1400
  ..PðpÚþs2-17Wordgames17 »17«: rbarts | .play -ctHi17 color_wave.txt 2000
  ..PðpÚþs2-18PlaysForU18 »18«: rbarts | .play -ctHi18 color_wave.txt 2000
  ..PðpÚþs2-19BearySpecial19 »19«: rbarts | .play -ctHi19 color_wave.txt 2000
  ..PðpÚþs2-20Delbert20 »20«: rbarts | .play -ctHi20 color_wave.txt 1800
  ..PðpÚþs2-21dragonfire21 »21«: rbarts | .play -ctHi21 color_wave.txt 1200
  ..PðpÚþs2-22perfectrose22 »22«: rbarts | .play -ctHi22 color_wave.txt 2000
  ..PðpÚþs2-23PotOfGold23 »23«: rbarts | .play -ctHi23 color_wave.txt 2500
  ..PðpÚþs2-24Sally24 »24«: rbarts | .play -ctHi24 color_wave.txt 2000
  ..PðpÚþs2-25Joker25 »25«: rbarts | .play -ctHi25 color_wave.txt 2500
  ..PðpÚþs2-26Daffy26 »26«: rbarts | .play -ctHi26 color_wave.txt 1200
  ..PðpÚþs2-27tiedup27 »27«: rbarts | .play -ctHi27 color_wave.txt 3000
  ..PðpÚþs2-28Horse28 »28«: rbarts | .play -ctHi28 color_wave.txt 3000
  ..PðpÚþs2-29Tiger29 »29«: rbarts | .play -ctHi29 color_wave.txt 3000
  ..PðpÚþs2-30Bert&Earnie30 »30«: rbarts | .play -ctHi30 color_wave.txt 1200
  .°g®€€ts°III
  ..g®€€ts3-31Hi31 »31«: rbarts | .play -ctHi31 color_wave.txt 2000
  ..g®€€ts3-32Hi32 »32«: rbarts | .play -ctHi32 color_wave.txt 2000
  ..g®€€ts3-33Hi33 »33«: rbarts | .play -ctHi33 color_wave.txt 2000
  ..g®€€ts3-34Hi34 »34«: rbarts | .play -ctHi34 color_wave.txt 2000
  ..g®€€ts3-35Hi35 »35«: rbarts | .play -ctHi35 color_wave.txt 2000
  ..g®€€ts3-36Hi36 »36«: rbarts | .play -ctHi36 color_wave.txt 2000
  ..g®€€ts3-37Hi37 »37«: rbarts | .play -ctHi37 color_wave.txt 2000
  ..g®€€ts3-38Hi38 »38«: rbarts | .play -ctHi38 color_wave.txt 2000
  ..g®€€ts3-39Hi39 »39«: rbarts | .play -ctHi39 color_wave.txt 2000
  ..g®€€ts3-40Hi40 »40«: rbarts | .play -ctHi40 color_wave.txt 2000
  ..g®€€ts3-41Hi41 »41«: rbarts | .play -ctHi41 color_wave.txt 2000
  ..g®€€ts3-42Hi42 »42«: rbarts | .play -ctHi42 color_wave.txt 2000
  ..g®€€ts3-43Hi43 »43«: rbarts | .play -ctHi43 color_wave.txt 2000
  ..g®€€ts3-44Hi44 »44«: rbarts | .play -ctHi44 color_wave.txt 2000
  ..g®€€ts3-45Hi45 »45«: rbarts | .play -ctHi45 color_wave.txt 2000
  .GoodbyesIV
  ..whereyagoin4-46(T)46 »46«: rbarts | .play -ctHi46 color_wave.txt 900
  ..grabsUrleg4-47(T)47 »47«: rbarts | .play -ctHi47 color_wave.txt 900
  ..gnite(1)4-48(T)48 »48«: rbarts | .play -ctHi48 color_wave.txt 900
  ..gnite(2)4-49(T)49 »49«: rbarts | .play -ctHi49 color_wave.txt 900
  ..gnite(3)4-50(T)50 »50«: rbarts | .play -ctHi50 color_wave.txt 900
  ..gnite(4)4-51(T)51 »51«: rbarts | .play -ctHi51 color_wave.txt 900
  ..gnite(5)4-52(T)52 »52«: rbarts | .play -ctHi52 color_wave.txt 900
  ..goodbye(6)4-53(T)53 »53«: rbarts | .play -ctHi53 color_wave.txt 900
  ..goodbye(7)4-54(T)54 »54«: rbarts | .play -ctHi54 color_wave.txt 900
  ..goodbye(8)4-55(T)55 »55«: rbarts | .play -ctHi55 color_wave.txt 900
  ..goodbye(9)4-56(T)56 »56«: rbarts | .play -ctHi56 color_wave.txt 900
  ..goodbye(10)4-57(T)57 »57«: rbarts | .play -ctHi57 color_wave.txt 900
  ..goodbye(11)4-58(T)58 »58«: rbarts | .play -ctHi58 color_wave.txt 900
  .Hellos-V
  ..hi(1)5-59(T)59 »59«: rbarts | .play -ctHi59 color_wave.txt 900
  ..hi(2)5-60(T)60 »60«: rbarts | .play -ctHi60 color_wave.txt 900
  ..hi(3)5-61(T)61 »61«: rbarts | .play -ctHi61 color_wave.txt 900
  ..hi(4)5-62(T)62 »62«: rbarts | .play -ctHi62 color_wave.txt 900
  ..hi(5)5-63(T)63 »63«: rbarts | .play -ctHi63 color_wave.txt 900
  ..hi(6)5-64(T)64 »64«: rbarts | .play -ctHi64 color_wave.txt 900
  ..hi(7)5-65(T)65 »65«: rbarts | .play -ctHi65 color_wave.txt 900
  ..hi(8)5-66(T)59 »66«: rbarts | .play -ctHi66 color_wave.txt 900
  ..hi(9)5-67(T)67 »67«: rbarts | .play -ctHi67 color_wave.txt 900
  ..hi(10)5-68(T)68 »68«: rbarts | .play -ctHi68 color_wave.txt 900
  ..hi(11)5-69(T)69 »69«: rbarts | .play -ctHi69 color_wave.txt 900
  ..hi(12)5-70(T)70 »70«: rbarts | .play -ctHi70 color_wave.txt 900
  ..hi(13)5-71(T)71 »71«: rbarts | .play -ctHi71 color_wave.txt 900
  ..hi(14)5-72(T)72 »72«: rbarts | .play -ctHi72 color_wave.txt 900
  ..hi(15)5-73(T)73 »73«: rbarts | .play -ctHi73 color_wave.txt 900
  .BRB-VI
  ..BRB(1)6-74(T)74 »74«: rbarts | .play -ctHi74 color_wave.txt 900
  ..BRB(2)6-75(T)75 »75«: rbarts | .play -ctHi75 color_wave.txt 900
  ..BRB(3)6-76(T)76 »76«: rbarts | .play -ctHi76 color_wave.txt 900
  ..BRB(4)6-77(T)77 »77«: rbarts | .play -ctHi77 color_wave.txt 900
  ..BRB(5)6-78(T)78 »78«: rbarts | .play -ctHi78 color_wave.txt 900
  .MorePops-VII
  ..PðpÚþs7-79longnite79 »79«: rbarts | .play -ctHi79 color_wave.txt 2000
  ..PðpÚþs7-80angel80 »80«: rbarts | .play -ctHi80 color_wave.txt 1800
  ..PðpÚþs7-81candle81 »81«: rbarts | .play -ctHi81 color_wave.txt 2500
  ..PðpÚþs7-82angel(2)82 »82«: rbarts | .play -ctHi82 color_wave.txt 2000
  ..PðpÚþs7-83blonde83 »83«: rbarts | .play -ctHi83 color_wave.txt 2500
  ..PðpÚþs7-84BlueAngel84 »84«: rbarts | .play -ctHi84 color_wave.txt 3500
  ..PðpÚþs7-85BRB85 »85«: rbarts | .play -ctHi85 color_wave.txt 1800
  ..PðpÚþs7-86tolit86 »86«: rbarts | .play -ctHi86 color_wave.txt 1200
  ..PðpÚþs7-87sleepy87 »87«: rbarts | .play -ctHi87 color_wave.txt 1200
  ..PðpÚþs7-88cybercrash88 »88«: rbarts | .play -ctHi88 color_wave.txt 2200
  ..PðpÚþs7-89cya89 »89«: rbarts | .play -ctHi89 color_wave.txt 1800
  ..PðpÚþs7-90footsiebye90 »90«: rbarts | .play -ctHi90 color_wave.txt 1400
  ..PðpÚþs7-91cyalater91 »91«: rbarts | .play -ctHi91 color_wave.txt 1400
  ..PðpÚþs7-92niceday92 »92«: rbarts | .play -ctHi92 color_wave.txt 2000
  ..PðpÚþs7-93bighello93 »93«: rbarts | .play -ctHi93 color_wave.txt 2500
  .Poems
  ..Pðems8-94uownmyheart(S)*W*94 »94«: rbarts | .play -ctHi94 color_wave.txt 3500
  ..Pðems7-95wholeagain(S)95 »95«: rbarts | .play -ctHi95 color_wave.txt 3500
  ..Pðems7-96doyouknow(S)96 »96«: rbarts | .play -ctHi96 color_wave.txt 3500
  ..Pðems7-97The1ILove(San'sLast)97 »97«: rbarts | .play -ctHi97 color_wave.txt 3500
  .Clocks
  ..clock(1)8-98BatTime98 »98«: rbarts | .play -ctHi98 color_wave.txt 1200
  ..clock(2)8-99CatTime99 »99«: rbarts | .play -ctHi99 color_wave.txt 1200
  ..clock(3)8-100BoxClock100 »100«: rbarts | .play -ctHi100 color_wave.txt 1200
  ..clock(4)8-101QuestionTime101 »101«: rbarts | .play -ctHi101 color_wave.txt 1200
  ..clock(5)8-102StarDateTime102 »102«: rbarts | .play -ctHi102 color_wave.txt 1800
  ..clock(6)8-103WaveTime103 »103«: rbarts | .play -ctHi103 color_wave.txt 1200
  ..clock(7)8-104CruiseTime104 »104«: rbarts | .play -ctHi104 color_wave.txt 2000
  ..clock(8)8-105KissTime105 »105«: rbarts | .play -ctHi105 color_wave.txt 1200
  ..clock(9)8-106FlagTime106 »106«: rbarts | .play -ctHi106 color_wave.txt 2000
  ..clock(10)8-107LoveTime107 »107«: rbarts | .play -ctHi107 color_wave.txt 1200
  .Birthday
  ..Birthday9-108color_waveBirthday108 »108«: rbarts | .play -ctHi108 color_wave.txt 2500
  ..Birthday9-109channelBirthday109 »109«: rbarts | .play -ctHi109 color_wave.txt 2500
  ..World(WIDE)9-110World110 »110«: rbarts | .play -ctHi110 color_wave.txt 3500
  .FunPoPs
  ..Fun10-111match111 »111«: rbarts | .play -ctHi111 color_wave.txt 1800
  ..Fun10-112kissing112 »112«: rbarts | .play -ctHi112 color_wave.txt 2500
  ..Fun10-113fencewelcome113 »113«: rbarts | .play -ctHi113 color_wave.txt 2000
  ..Fun10-114cya114 »114«: rbarts | .play -ctHi114 color_wave.txt 2000
  ..Fun10-115candletime115 »115«: rbarts | .play -ctHi115 color_wave.txt 2200
  ..Fun10-116byebye116 »116«: rbarts | .play -ctHi116 color_wave.txt 1800
  ..Fun10-117beacheve117 »117«: rbarts | .play -ctHi117 color_wave.txt 2400
  ..Fun10-118batcrazy118 »118«: rbarts | .play -ctHi118 color_wave.txt 2000
  ..Fun10-119AngelDevil119 »119«: rbarts | .play -ctHi119 color_wave.txt 2500
  ..Fun10-120RightOn120 »120«: rbarts | .play -ctHi120 color_wave.txt 1800
  ..Fun10-121PPPFFFTTT121 »121«: rbarts | .play -ctHi121 color_wave.txt 1800
  ..Fun10-122nite122 »122«: rbarts | .play -ctHi122 color_wave.txt 1800
  ..Fun10-123LOL123 »123«: rbarts | .play -ctHi123 color_wave.txt 1800
  .-
  .Share/Sending 
  ..Send color_wave.mrc--> $snick(#,1) : set %mrbfile color_wave | rbnick3 | dcc send %nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg %nick Place both the %mrbfile .txt and .mrc in \mirc\ | msg %nick type--> 4 /load -rs %mrbfile $+ .mrc
  ..Send color_wave Wavs--> $snick(#,1) : set %mrbfile color_wave-Wavs | rbnick3 | dcc send %nick %mrbfile $+ .zip | msg %nick Unzip Sounds to your mIRC Sounds Folder.
  ..Offers for color_wave
  .../color_wave (color_wave mrc):/color_waveoffer
  .../color_waveoffer-w (Wavs) :/color_waveoffer-w
  .-
  .Version /color_wave:/color_wave
}
