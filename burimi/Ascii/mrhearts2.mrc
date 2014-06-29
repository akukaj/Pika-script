;mrS>mrHearts2:1.0-mIRC60+:::
;mrHearts2.mrc updated in 2002 by patches
;mrHearts.mrc was updated with new art to mrHearts2.mrc by Sher^
;Edited for mIRC60+ by rebel & patches #mIRC_Rainbow - Undernet Feb.23/2002 - New Scripting by DuKeCuPiD
;mrHearts was renamed from HrtsNLuv.mrc which was the original file. IT was written by Angltooch & Laxn of #mIRC_Rainbow - Undernet
;HrtsNLuv.mrc was updated to mrHearts.mrc by patches
;Show and re-release held Feb. 12, 1999 This file was formerly hrtsnluv.mrc
;Artists included in this file are:  Aisa, Angltooch, Hazel, Keeper, Laxn,
;Lilfire, Osirus, Redmoon, Sansui, Serina, Sher^, & Tesla
;Rainbow website along with  mrHearts2.mrc. http://www.mirc-rainbow.com/
;The script for this file written by texxy, some fixes, and addons by patches both of #mIRC_Rainbow - Undernet
;No part of this file may be taken and used without the permission of Angltooch, or Laxn.
;Finished February 7, 1999, 54nd Rainbow release, 4th in 1999
;Special AddOn Section added by patches with permission from Angltooch
;to give the February Challenge of the month a home :)~~
; Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö 
; The script written by texxy from #mIRC_Rainbow on Undernet - Remote & Offer by patches & texxy 
; If your making more mrc files, please use the rbarts & Rbnick3 aliases. These are #mIRC_Rainbow's most current aliases for art mrc's.
; All aliases in this file are free to use without getting permission first, but we ask you to give credit given to the scripters and their respective channel.


on 1:disconnect: {
  if ($script(hrtsnlv.mrc) != $null) { /unload -rs hrtsnlv.mrc | echo 4 mrHearts2.mrc has unloaded hrtsnlv.mrc, your new mrHearts2.mrc replaces it. There is no need to reload hrtsnlv.mrc. }
  if ($script(hrtsnluv.mrc) != $null) { /unload -rs hrtsnluv.mrc | echo 4 mrHearts2.mrc has unloaded hrtsnluv.mrc, your new mrHearts2.mrc replaces it. There is no need to reload hrtsnluv.mrc. }
  if ($script(mrhearts.mrc) != $null) { /unload -rs mrhearts.mrc | echo 4 mrHearts2.mrc has unloaded mrhearts.mrc, your new mrHearts2.mrc replaces it. There is no need to reload mrhearts.mrc. }
}
on 1:TEXT:"*:*: {
  set %mrbfile mrHearts2 | if (($1 == " $+ $me) && ($2 ==  %mrbfile)) {
    echo -a 3,1Ö13¿3Ö 0,3sending %mrbfile to $nick
    /dcc send $nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg $nick If txPlay50+ is loaded type: /txload %mrbfile | msg $nick Move to "root" mirc dir | msg $nick and type--> 4/load -rs %mrbfile $+ .mrc | msg $nick Use nicklist & query menus to play. | halt
  }
}
ctcp 1:mrhearts2: notice $nick $me is using mrhearts2.mrc (v4 (2002) mIRC60+ Jan 22,2003) Original release as mrHearts.mrc 1999 & 2000, 2001 & 2002
on 1:CTCPREPLY:version*:/echo -a 8,2 Hey $me $+ , $+ 2,8 $nick uses $1-
alias mrhearts2 set %nick $1 | if ($1 == $null) { rbnick3 } | /ctcp %nick mrhearts2

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
alias mrhearts2offer {
  mrboffer2002 | set %mrbfile mrhearts2
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
; beta v1.04

; the #mIRC_Rainbow - Undernet rbarts alias
; $rbarts(N, Filler(s)).rnick by DuKeCuPiD
;   * where N = total string length
;   * where Filler(s) = any length of characters
; alias rbarts by texxy... modified by DuKeCuPiD
; added one filler support from previous rbarts
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
alias hartsrc1 {
  set %ran $rand(1,7) | if %ran == 1 { set %rc1 15 | set %rc2 0 } 
  if %ran == 2 { set %rc1 3 | set %rc2 9 } 
  if %ran == 3 { set %rc1 6 | set %rc2 13 } 
  if %ran == 4 { set %rc1 5 | set %rc2 4 } 
  if %ran == 5 { set %rc1 4 | set %rc2 15 } 
  if %ran == 6 { set %rc1 10 | set %rc2 11 }
  if %ran == 7 { set %rc1 7 | set %rc2 8 }
  unset %ran
}
;fix by chippy Oct 17, 2001
alias addwaver {
  unset %temprandwav
  %i = * $+ $1 $+ *.wav
  %j = $findfile($wavedir,%i,0)
  if (%j > 0) {
    %j = $rand(1,%j)
    %temprandwav =  $findfile($wavedir,%i,%j)
    echo %temprandwav :)
    sound " $+ %temprandwav $+ " 
  }
}
alias mrhrtswav {
  %temprandwavc = $rand(1,2)
  if (%temprandwavc == 1) { 
    addwaver *love*
    if (%temprandwav == $null) { addwaver luv }
  }
  else { 
    addwaver luv
    if (%temprandwav == $null) { addwaver *love* }
  }
  if (%temprandwav == $null) { addwaver lov }
  if (%temprandwav == $null) { addwaver heart }
  if (%temprandwav == $null) { addwaver hug* }
  if (%temprandwav == $null) { addwaver kiss* }
  if (%temprandwav == $null) { addwaver hold }
  if (%temprandwav == $null) { addwaver rom* }
  if (%temprandwav == $null) { addwaver *val* }
  if (%temprandwav == $null) { addwaver dream }
  unset %temprandwav*
}

menu @holiday {
  dclick { /holidaydclick }
  Choose $strip($line(@holiday,$sline(@holiday,1).ln)))) : {
    %holiday = $strip($line(@holiday,$sline(@holiday,1).ln))
    if (%holiday == CANCEL) { /window -c @holiday | halt }
    if (%holiday == Type Your Own) { %holiday = $$?="Enter a Holiday Name, limit 20 characters" }
    %holiday = $txss(20,%holiday)
    /window -c @holiday
    .play -ct $+ %tempholitopic %tempholichan holitest.mrc %holispeed
  }
}

alias holidaydclick {
  %holiday = $strip($line(@holiday,$sline(@holiday,1).ln))
  if (%holiday == CANCEL) { /window -c @holiday | halt }
  if (%holiday == Type Your Own) { %holiday = $$?="Enter a Holiday Name, limit 20 characters" }
  %holiday = $txss(20,%holiday)
  /window -c @holiday
  .play -ct $+ %tempholitopic %tempholichan mrhearts2.txt %holispeed
}
alias txss {
  %txc = $str($chr(160),$int($calc(($1 - $len($2-)) / 2))) $+ $2- $+ $str($chr(160),$int($calc(($1 - $len($2-)) / 2))) $+ $chr(160)
  %txc = $replace($left(%txc,$1),$chr(32),$chr(160))
  return %txc
}

alias holipick {
  rbarts
  %tempholichan = $active
  unset %holiday
  /window -c @holiday | /window -dlo @holiday 424 88 139 300 @holiday | titlebar @holiday PICK HOLIDAY
  aline @holiday 4Merry Christmas
  aline @holiday 4Happy Fourth of July
  aline @holiday 4Happy Mothers Day
  aline @holiday 4Happy Fathers Day
  aline @holiday 4Happy Thanksgiving
  aline @holiday 4Happy New Years
  aline @holiday 4Happy Birthday
  aline @holiday 4Happy Anniversary
  aline @holiday 4Happy Easter
  aline @holiday 4Happy Valentines Day
  aline @holiday 4Happy St. Patricks Day
  aline @holiday 4Happy Labor Day
  aline @holiday 4Happy Veterans Day
  aline @holiday 4Happy Presidents Day
  aline @holiday 4Happy Halloween
  aline @holiday 4Happy Hannukah
  aline @holiday 12Type Your Own
  aline @holiday 4CANCEL
}
alias hrts set %ran $rand(1,222)  | if ((%ran == 55) || (%ran == 74) || (%ran == 76) || (%ran == 83) || (%ran == 88) || (%ran == 110) || (%ran == 111) || (%ran == 190) || (%ran == 207)) return | rbarts | .play -cthrts $+ %ran mrhearts2.txt | mrhrtswav
menu nicklist,query {
  $chr(40) $+ `´ $+ $chr(41) mrHearts2 $chr(40) $+ `´ $+ $chr(41) 
  .Alias /hrts : hrts
  .-
  .Artists A - M
  ..Aisa: mrhearts2.play normal hrts1 2500
  ..ANGLTOOCH
  ...A thru H
  ....2Hearts: mrhearts2.play normal hrts131 2100
  ....3Hearts: mrhearts2.play normal hrts7 2500
  ....3RedHearts: mrhearts2.play normal hrts237 1600
  ....AllMyHeart: mrhearts2.play normal hrts12 2000
  ....BearHeart: mrhearts2.play normal hrts9 2300
  ....BgPkHeart: mrhearts2.play normal hrts132 2000
  ....BlueRoseLove: mrhearts2.play normal hrts236 1100
  ....BluHrtCan: mrhearts2.play normal hrts133 1100
  ....BluHrt: mrhearts2.play normal hrts134 1400
  ....c-Red Candle: mrhearts2.play normal hrts231 1700.txt
  ....c-RedHeartSteps: mrhearts2.play normal hrts233 1400
  ....c-WhiteBoxes: mrhearts2.play normal hrts234 1700
  ....ClrHrts: mrhearts2.play normal hrts138 1200
  ....Cupid: mrhearts2.play normal hrts10 1700
  ....Dance: mrhearts2.play normal hrts2 3000
  ....FlowerLove: mrhearts2.play normal hrts139 2500
  ....Forever: mrhearts2.play normal hrts140 2000
  ....HeartBox: mrhearts2.play normal hrts135 1200
  ....Heart: mrhearts2.play normal hrts136 1100
  ....Heart2: mrhearts2.play normal hrts141 1000
  ....Heart3: mrhearts2.play normal hrts142 800
  ....HeartFloat: mrhearts2.play normal hrts137 1100
  ....HeartLei: mrhearts2.play normal hrts143 800
  ...I thru W
  ....ILuvUHrt_flowr: mrhearts2.play normal hrts8 1500
  ....Jet: mrhearts2.play normal hrts232 1100
  ....Love: mrhearts2.play normal hrts3 3000
  ....LoveCandle: mrhearts2.play normal hrts144 1000
  ....LoveIs: mrhearts2.play normal hrts145 2000
  ....LoveLast: mrhearts2.play normal hrts146 800
  ....LoveLift: mrhearts2.play normal hrts147 1200
  ....LoveResponds: mrhearts2.play normal hrts5 2000
  ....LoveYou: mrhearts2.play normal hrts148 1700
  ....PoohHunny: mrhearts2.play normal hrts13 1900
  ....Soars: mrhearts2.play normal hrts149 700
  ....Snugglebunnies: mrhearts2.play normal hrts11 1100
  ....Wings: mrhearts2.play normal hrts150 800
  ....whitebordHrt: mrhearts2.play normal hrts235 1700
  ..Catniip: mrhearts2.play normal hrts114 700
  ..Cute1^
  ...Happyday: mrhearts2.play normal hrts60 1700
  ...Valentine: mrhearts2.play normal hrts59 1600
  ..Dale^
  ...14ValHugs: set %many 14 | mrhearts2.play normal 110 2400
  ...Breath: mrhearts2.play normal hrts95 1000
  ...Dragon: mrhearts2.play normal hrts101 700
  ...Glad: mrhearts2.play normal hrts98 1500
  ...Woof You: mrhearts2.play normal hrts109 900
  ...You and Me: mrhearts2.play normal hrts94 1000
  ...Yours: mrhearts2.play normal hrts97 700
  ...YourHeart: mrhearts2.play normal hrts99 2000
  ..Gigi8
  ...Catlove: mrhearts2.play normal hrts62 2000
  ...Knees: mrhearts2.play normal hrts63 1100
  ...Lovhrts: mrhearts2.play normal hrts64 2000
  ...Lovrose: mrhearts2.play normal hrts65 1000
  ...Rnbohrt: mrhearts2.play normal hrts66 1500
  ..Glint
  ...Colors: mrhearts2.play normal hrts214 600
  ...DoThat: mrhearts2.play normal hrts219 800
  ...Dreams: mrhearts2.play normal hrts215 900
  ...Holdheart: mrhearts2.play normal hrts67 800
  ...HoldYou: mrhearts2.play normal hrts218 800
  ...Lockedheart: mrhearts2.play normal hrts68 700
  ...MeltMe: mrhearts2.play normal hrts216 700
  ...ShootMe: mrhearts2.play normal hrts217 700
  ...Tweetheart: mrhearts2.play normal hrts213 700
  ..happyone c-friends: mrhearts2.play normal hrts238 700
  ..£ÂXÑ
  ...ILove: mrhearts2.play normal hrts19 1700
  ...ShowBeau: mrhearts2.play normal hrts71 2000
  ..Lilfire
  ...Heart-belongs: mrhearts2.play normal hrts25 2500
  ...Love-Between: mrhearts2.play normal hrts27 2000
  ..litty Heart: mrhearts2.play normal hrts266 1100
  ..Lovable
  ...2Plove: set %many 2 | mrhearts2.play normal hrts74 1700
  ...Clownval: mrhearts2.play normal hrts72 1800
  ...flowing: mrhearts2.play normal hrts239 2100
  ...Phearts: mrhearts2.play normal hrts73 2100
  ..Mototsume
  ...C-purple heart: mrhearts2.play normal hrts245 800
  ...C-ewe: mrhearts2.play normal hrts246 700
  .Artists N - Z
  ..Nicky
  ...Flower: mrhearts2.play normal hrts185 800
  ...Heart: mrhearts2.play normal hrts75 2000
  ...PointHrt: mrhearts2.play normal hrts183 2000
  ...Point2: mrhearts2.play normal hrts184 2000
  ...HotDog Rose: mrhearts2.play normal hrts248 1100
  ...Consonants: mrhearts2.play normal hrts250 400
  ...C-has pudding: mrhearts2.play normal hrts251 800
  ...C-Together: mrhearts2.play normal hrts252 500
  ..Nightrose
  ...Val1: set %many 2 | mrhearts2.play normal hrts76 1700 
  ...Val5: mrhearts2.play normal hrts117 1700
  ...Val6: mrhearts2.play normal hrts118 1500
  ...Val7: mrhearts2.play normal hrts119 1200
  ..Osirus
  ...Our_Hearts: mrhearts2.play normal hrts29 1100
  ...Valentine: mrhearts2.play normal hrts28 1100
  ...Valentine2: mrhearts2.play normal hrts30 1100
  ..patches
  ...4PinkHrt: set %many 4 | mrhearts2.play normal hrts203 1200
  ...10Pickme: set %many 10 | mrhearts2.play normal hrts83 2000
  ...BeMine: mrhearts2.play normal hrts201 600
  ...Formen: mrhearts2.play normal hrts80 1400
  ...HrtCircle: mrhearts2.play normal hrts199 1000
  ...HrtSurround: mrhearts2.play normal hrts198 900
  ...PinkHrt: mrhearts2.play normal hrts202 900
  ...Pink Heart: mrhearts2.play normal hrts281 800
  ...Red Heart: mrhearts2.play normal hrts280 800
  ...Inmyheart: mrhearts2.play normal hrts82 1700
  ...SmHrt: mrhearts2.play normal hrts200 500
  ...-
  ...Your Choice
  ....pink hearts 1: holipick | %tempholitopic = hrts223 | %holispeed = 800 | mrhrtswav
  ....pink hearts 2: holipick | %tempholitopic = hrts224 | %holispeed = 800 | mrhrtswav
  ....pink hearts 3: holipick | %tempholitopic = hrts225 | %holispeed = 800 | mrhrtswav
  ....pink hearts 4: holipick | %tempholitopic = hrts226 | %holispeed = 800 | mrhrtswav
  ....red hearts 1: holipick | %tempholitopic = hrts227 | %holispeed = 800 | mrhrtswav
  ....red hearts 2: holipick | %tempholitopic = hrts228 | %holispeed = 800 | mrhrtswav
  ....red hearts 3: holipick | %tempholitopic = hrts229 | %holispeed = 800 | mrhrtswav
  ....red hearts 4: holipick | %tempholitopic = hrts230 | %holispeed = 800 | mrhrtswav
  ..PogoBean
  ...pogo (C-Elegance): mrhearts2.play normal hrts253 1300
  ...pogo (C-Throne): mrhearts2.play normal hrts255 1700
  ...pogo (Beautiful): mrhearts2.play normal hrts256 1700
  ..Puriel
  ...BeMine1: mrhearts2.play normal hrts163 900
  ...BeMine2: mrhearts2.play normal hrts162 1600
  ...BeMine3: mrhearts2.play normal hrts161 900
  ...Best Friend: mrhearts2.play normal hrts259 800
  ...C-Best Gift: mrhearts2.play normal hrts262 700
  ...C-Touched: mrhearts2.play normal hrts263 700
  ...C-Friend: mrhearts2.play normal hrts264 800
  ...HeartNick: mrhearts2.play normal hrts189 800
  ...HelloHrt: mrhearts2.play normal hrts164 800
  ...Hugs&Kiss: mrhearts2.play normal hrts167 900
  ...Kisses: mrhearts2.play normal hrts170 800
  ...Knock Knock: mrhearts2.play normal hrts260 800
  ...InLust: mrhearts2.play normal hrts158 1400
  ...LaceHrt: mrhearts2.play normal hrts160 1300
  ...LilHrts: mrhearts2.play normal hrts165 700
  ...Love1: mrhearts2.play normal hrts159 900
  ...WelcometoCh: mrhearts2.play normal hrts166 700
  ...Who luvs ya: mrhearts2.play normal hrts258 500
  ..redmoon
  ...Angdev: mrhearts2.play normal hrts33 1100
  ...Brave: mrhearts2.play normal hrts31 1400
  ...Brickoluv: mrhearts2.play normal hrts37 2000
  ...BrokenHrt: mrhearts2.play normal hrts38 2000
  ...Declare: mrhearts2.play normal hrts34 700
  ...FireHrt: mrhearts2.play normal hrts40 2000
  ...GoRound: mrhearts2.play normal hrts211 900
  ...HeartBelongs: mrhearts2.play normal hrts212 900
  ...Kissintree: mrhearts2.play normal hrts32 1000
  ...Men: mrhearts2.play normal hrts187 900
  ...MyHeart: mrhearts2.play normal hrts173 1200
  ...RCoaster: mrhearts2.play normal hrts174 1300
  ...Relationship: mrhearts2.play normal hrts197 900
  ...Upsidedown: mrhearts2.play normal hrts42 2000
  ...Wakeup: mrhearts2.play normal hrts43 2000
  ..SaNsUi: mrhearts2.play normal hrts44 3000
  ..Serina
  ...Candles: mrhearts2.play normal hrts124 1000
  ...Carved: mrhearts2.play normal hrts128 1000
  ...Dual Heart: mrhearts2.play normal hrts269 700
  ...Heart 1: mrhearts2.play normal hrts126 800
  ...Heart 2: mrhearts2.play normal hrts267 700
  ...LoveB: mrhearts2.play normal hrts127 1000
  ...LoveG: mrhearts2.play normal hrts125 1000
  ...MyLove: mrhearts2.play normal hrts129 1000
  ...PinkBear: mrhearts2.play normal hrts154 800
  ...RedNick: mrhearts2.play normal hrts130 800
  ...Seribox17: mrhearts2.play normal hrts46 700
  ...Seribox19: mrhearts2.play normal hrts47 800
  ...Seribox20: mrhearts2.play normal hrts48 900
  ...Seribox22: mrhearts2.play normal hrts49 800
  ..Sher
  ...c-CheckHeart: mrhearts2.play normal hrts272 800
  ...c-Pedestal: mrhearts2.play normal hrts273 800
  ...c-RedHearts: mrhearts2.play normal hrts276 1200
  ...DoggyVal: mrhearts2.play normal hrts112 700
  ...Heart1: mrhearts2.play normal hrts57 1400
  ...Heart2: mrhearts2.play normal hrts50 1400
  ...Heart3: mrhearts2.play normal hrts51 1400
  ...Heart5: mrhearts2.play normal hrts53 800
  ...Heart6: mrhearts2.play normal hrts58 2300
  ...PinkHeart: mrhearts2.play normal hrts274 800
  ..Slaps
  ...Bear: mrhearts2.play normal hrts178 1400
  ...Butt: mrhearts2.play normal hrts220 1400
  ...EachHeart: mrhearts2.play normal hrts192 2000
  ...Heart2: mrhearts2.play normal hrts181 1700
  ...Heart3: mrhearts2.play normal hrts182 1700
  ...Heart4: mrhearts2.play normal hrts221 800
  ..Sno_Dov
  ...Heart2: mrhearts2.play normal hrts86 2500
  ...Heart3: mrhearts2.play normal hrts87 2000
  ..Startech
  ...Eyes: mrhearts2.play normal hrts122 800
  ...ForYour: mrhearts2.play normal hrts123 800
  ..steakie c-flutter: mrhearts2.play normal hrts268 2500
  ..Tack
  ...tack: mrhearts2.play normal hrts115 1300
  ...lovekidney: mrhearts2.play normal hrts277 2000
  ..TaLdy
  ...BeMine: mrhearts2.play normal hrts186 800
  ...LHearts: mrhearts2.play normal hrts155 800
  ..Tesla
  ...2Heart2: set %many 2 | mrhearts2.play normal hrts55 1600
  ...Heart1: mrhearts2.play normal hrts54 800
  ...Heart3: mrhearts2.play normal hrts56 1500
  ...RHearts: mrhearts2.play normal hrts175 1000
  ..Widget
  ...LoveIs: mrhearts2.play normal hrts205 1000
  ...Server: mrhearts2.play normal hrts204 1200
  .-
  .Valentines Day A thru D
  ..Angltooch LoveStamp: mrhearts2.play normal hrts4 700
  ..Angltooch ILoveYou: mrhearts2.play normal hrts6 1000
  ..Angltooch LoveCats: mrhearts2.play normal hrts206 1200
  ..Cute1 Happyday: mrhearts2.play normal hrts60 1700
  ..Dale 8Valentines: set %many 8 | mrhearts2.play normal hrts111 2200
  ..Dale BalloonVal: mrhearts2.play normal hrts89 1500
  ..Dale Hand Val: mrhearts2.play normal hrts103 1500
  ..Dale Happy Val: mrhearts2.play normal hrts92 1500
  ..Dale HeartWings: mrhearts2.play normal hrts108 1700
  ..Dale HorseMouth: mrhearts2.play normal hrts106 2300
  ..Dale Hrts&Flwrs: mrhearts2.play normal hrts90 2000
  ..Dale BeMyVal: mrhearts2.play normal hrts91 1000
  ..Dale BeMy: mrhearts2.play normal hrts96 1000
  ..Dale Love Val: mrhearts2.play normal hrts93 900
  ..Dale Puppy Val: mrhearts2.play normal hrts102 1000
  ..Dale Val Dog: mrhearts2.play normal hrts100 1000
  ..Dale Val Flowers: mrhearts2.play normal hrts105 1700
  ..Dale Val Leaves: mrhearts2.play normal hrts104 1000
  ..Dale Roses: mrhearts2.play normal hrts107 1500
  ..dholli ValBear: mrhearts2.play normal hrts61 2000
  .Valentines Day H thru L
  ..Hazel Smile: mrhearts2.play normal hrts14 1100
  ..Honey Bearhrt: mrhearts2.play normal hrts69 700
  ..Honey Heart: mrhearts2.play normal hrts70 1100
  ..Keeper Torch: mrhearts2.play normal hrts15 1800
  ..Keeper Luvyou: mrhearts2.play normal hrts16 1800
  ..Keeper Wine: mrhearts2.play normal hrts17 1200
  ..Laxn BearLove: mrhearts2.play normal hrts18 1200
  ..Laxn 2Hearts: mrhearts2.play normal hrts20 800
  ..Laxn 3Dhrt: mrhearts2.play normal hrts21 2300
  ..Laxn Rosehrt: mrhearts2.play normal hrts22 1800
  ..Laxn ValdayBlu: mrhearts2.play normal hrts23 2400
  ..Lilfire Socks: mrhearts2.play normal hrts24 1400
  ..Lilfire Be_Mine: mrhearts2.play normal hrts26 2500
  ..litty Be Mine: mrhearts2.play normal hrts265 1400
  ..Lovable C-Banner: mrhearts2.play normal hrts240 1700
  ..Lovable C-Steps of Love: mrhearts2.play normal hrts241 1700
  .Valentines Day M thru O
  ..MistyDawn Butterfly: mrhearts2.play normal hrts244 2500
  ..MistyDawn C-Love: mrhearts2.play normal hrts242 1700
  ..MistyDawn C-Rose: mrhearts2.play normal hrts243 2500
  ..Nicky BHapVal: mrhearts2.play normal hrts208 2000
  ..Nicky C-valentine truck: mrhearts2.play normal hrts247 800
  ..Nicky HapVal: mrhearts2.play normal hrts208 2000
  ..Nicky RHapVal: mrhearts2.play normal hrts209 2000
  ..Nicky WienerVal: mrhearts2.play normal hrts222 2000
  ..Nicky HotDog wagon: mrhearts2.play normal hrts249 700
  ..NiteAngel: mrhearts2.play normal hrts282 2100
  ..NightRose Val2: mrhearts2.play normal hrts77 2000
  ..NightRose Val3: mrhearts2.play normal hrts78 2000
  ..NightRose Val4: mrhearts2.play normal hrts116 1400
  ..NightRose Val8: mrhearts2.play normal hrts120 1200
  .Valentines Day P thru R
  ..patches Hapvaldy2: mrhearts2.play normal hrts81 2000
  ..patches Heart1: mrhearts2.play normal hrts79 3000
  ..Pogo (C-Love): mrhearts2.play normal hrts254 800
  ..Pogo (Hap Val Day): mrhearts2.play normal hrts257 800
  ..Puriel 4HrtList: set %many 4 | mrhearts2.play normal hrts190 1000
  ..Puriel Heart: mrhearts2.play normal hrts168 800
  ..Puriel HpyVal2: mrhearts2.play normal hrts157 900
  ..Puriel HpyVal3: mrhearts2.play normal hrts169 800
  ..Puriel HpyVal1: mrhearts2.play normal hrts156 900
  ..Puriel (Special Day): mrhearts2.play normal hrts261 700
  ..Puriel ValentineCh: mrhearts2.play normal hrts171 1100
  ..redmoon WarmMe: mrhearts2.play normal hrts188 900
  ..redmoon Lust: mrhearts2.play normal hrts195 800
  ..redmoon YourHeart: mrhearts2.play normal hrts196 900
  ..redmoon ValGift: mrhearts2.play normal hrts84 1700
  ..redmoon MyValentine: mrhearts2.play normal hrts35 2500
  ..redmoon Blueheart: mrhearts2.play normal hrts36 2000
  ..redmoon Dimension: mrhearts2.play normal hrts39 2000
  ..redmoon Surprize: mrhearts2.play normal hrts41 2000
  ..redmoon You: mrhearts2.play normal hrts85 800
  .Valentines Day S thru Z
  ..Sennaxor FunnyVal: mrhearts2.play normal hrts172 1000
  ..Seri (c-Rose): mrhearts2.play normal hrts271 1200
  ..Seri (Hap Val): mrhearts2.play normal hrts270 800
  ..Serina HappyVDay: mrhearts2.play normal hrts153 900
  ..Serina Seribox16: mrhearts2.play normal hrts45 1100
  ..sher Heart4: mrhearts2.play normal hrts52 1100
  ..sher 8ValGreet: set %many 8 | mrhearts2.play normal hrts88 1800
  ..Sher PinkHrt: mrhearts2.play normal hrts113 1300
  ..Sher (redHeart): mrhearts2.play normal hrts275 1700
  ..Sher SplitHrt: mrhearts2.play normal hrts121 1700
  ..Sher ValtoGirl: mrhearts2.play normal hrts176 1400
  ..Sher ValtoGuy: mrhearts2.play normal hrts177 1400
  ..Sher 14Hearts: set %many 14 | mrhearts2.play normal hrts207 2100
  ..Slaps BigBear: mrhearts2.play normal hrts179 2000
  ..Slaps Heart: mrhearts2.play normal hrts180 1700
  ..Slaps OfferHeart: mrhearts2.play normal hrts191 2000
  ..Slaps Chocolate: mrhearts2.play normal hrts193 1100
  ..Slaps Probable: mrhearts2.play normal hrts194 2000
  ..Slaps Kneeling: mrhearts2.play normal hrts210 2000
  ..Tack (c-stronglove): mrhearts2.play normal hrts278 2000
  ..Tack (Heart): mrhearts2.play normal hrts279 2000
  ..Taldy BeMy: mrhearts2.play normal hrts151 800
  ..Taldy Hearts: mrhearts2.play normal hrts152 700
  .-
  .Share mrHearts2
  ..Send mrHearts2--> $snick(#,1) : set %mrbfile mrHearts2 | rbnick3 | dcc send %nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg %nick Place both the %mrbfile .txt and .mrc in \mirc\ | msg %nick type--> 4 /load -rs %mrbfile $+ .mrc
  ..Offer /mrhearts2offer: mrhearts2offer
  .-
  .Preview window $mrhearts2.prev
  ..Turn it On:/mrhearts2.prevon On
  ..Turn it Off:/mrhearts2.prevon Off
  .-
  .Version of /mrHearts2:/mrhearts2
}
; 
; mrPreview Script by DuKeCuPiD #mIRC_Rainbow Undernet - Art Previewer Window (For Art MRCs)
; /mrPreview $1 $2 $3 $4
; /mrPreview <Normal|Action> <Topic> <Txt Name> <Final Play Speed>
alias mrPreview {
  if ( [ [ $ [ $+ [ active ] ] ] ] != Status Window ) {
    if ( $4 != $null ) {
      if $4 isnum {
        %mrPrev.play = [ [ $ [ $+ [ active ] ] ] ]
        %mrPrev.type = [ [ $ [ $+ [ 1 ] ] ] ]
        %mrPrev.topc = [ [ $ [ $+ [ 2 ] ] ] ]
        %mrPrev.txt = [ [ $ [ $+ [ 3 ] ] ] ]
        %mrPrev.spd = [ [ $ [ $+ [ 4 ] ] ] ]
        [ rbarts ] 
        window -c @mrPreviewer
        window @mrPreviewer fixedsys 9
        %mrPrev.sound = [ mrPrev.splay ]
        if ( %mrPrev.type == Normal ) {
          %mrPrev.me = $chr(3) $+ $colour(Own Text) $+ < $+ $me $+ > $+ 
        }
        if ( %mrPrev.type == Action ) {
          %mrPrev.me = $chr(3) $+ $colour(Own Text) $+ * $me $+ 
        }
        %mrPrev.cmnd = [ aline @mrPreviewer %mrPrev.me ]
        titlebar @mrPreviewer Double Click Window (Will Play to %mrPrev.play $+ )
        .play -ct [ $+ [ % [ $+ [ mrPrev.topc ] ] ] ] $3 1
        return
      }
      echo 4 -a *** $4 is not a valid delay.
      unset %mrPrev.*
      halt
    }
  }
  echo 4 -a *** You Can't Play Art On Your Status Window!
  unset %mrPrev.*
  halt
}

menu @mrPreviewer {
  dclick: {
    %mrPrev.sound = [ mrPrev.s ]
    if ( %mrPrev.type == Normal ) {
      %mrPrev.cmnd = [ msg %mrPrev.play ]
      window -c @mrPreviewer
      .play -ct [ $+ [ % [ $+ [ mrPrev.topc ] ] ] ] [ %mrPrev.play ] [ %mrPrev.txt ] [ %mrPrev.spd ]
      return
    }
    if ( %mrPrev.type == Action ) {
      %mrPrev.cmnd = [ describe %mrPrev.play ]
      window -c @mrPreviewer

      .play -ct [ $+ [ % [ $+ [ mrPrev.topc ] ] ] ] [ %mrPrev.play ] [ %mrPrev.txt ] [ %mrPrev.spd ]
      return
    }
  }
}

alias mrPrev.s { 
  %mrPrev.s = $findfile( $wavedir , $1- , 1 )
  if ( %mrPrev.s != $null ) {
    if $inwave {
      splay -w stop
      goto sound
    }
    if $inmidi {
      splay -m stop
      goto sound
    }
    if $inmp3 {
      splay -p stop
      goto sound
    }
    :sound
    splay " $+ %mrPrev.s $+ "
    .ctcp %mrPrev.play SOUND $nopath( [ %mrPrev.s ] )
    echo %mrPrev.play $chr(3) $+ $colour(ctcp text) $+ [SOUND] $chr(3) $+ $colour(normal text) $+ $nopath( [ %mrPrev.s ] )
    return
  }
  echo %mrPrev.play $chr(3) $+ $colour(ctcp text) $+ *** $nopath( $1- ) not found.
  return
}
alias mrPrev.splay {
  %mrPrev.s = $findfile( $wavedir , $1- , 1 )
  if ( %mrPrev.s != $null ) {
    splay " $+ %mrPrev.s $+ "
    %mrPrev.line = $chr(3) $+ $colour(ctcp text) $+ [SOUND] $nopath( [ %mrPrev.s ] )
    aline @mrPreviewer %mrPrev.line
    return
  }
  %mrPrev.line = Sound File Missing: " $+ $nopath( [ $1- ] ) $+ "
  aline @mrPreviewer %mrPrev.line
  return
}
alias mrhearts2.play {
  if ( %mrhearts2.Prev == ON ) || ( %mrhearts2.Prev == $null ) {
    mrPreview $1 $2 mrhearts2.txt $3 | mrhrtswav
    return
  }
  if ( $1 == Normal ) {
    rbarts 
    %mrPrev.cmnd = say
    .play -ct $+ $2 mrhearts2.txt $3 | mrhrtswav
    return
  }
  if ( $1 == Action ) {
    rbarts
    %mrPrev.cmnd = me 
    .play -ct $+ $2 mrhearts2.txt $3
    return
  }
}
alias mrhearts2.prev {
  if (%mrhearts2.Prev == $null) || (%mrhearts2.Prev == ON) {
    return ( $+ ON $+ )
  }
  return ( $+ OFF $+ )
}
alias mrhearts2.prevon {
  if $1 = ON {
    %mrhearts2.prev = ON
  }
  if $1 = OFF {
    %mrhearts2.prev = OFF
  }
}
