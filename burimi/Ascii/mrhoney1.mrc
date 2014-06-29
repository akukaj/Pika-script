;mrS>mrHoney1:1.0-mIRC60+:::
;This file was written by {Honey} - Undernet's #Mirc_Rainbow.  
;To load HoneyArt1.mrc >> Make sure both HoneyArt1.mrc and mrhoney1.txt are in your main mirc folder.. then type:  /load -rs HoneyArt1.mrc 
;Edited for mIRC60+ by rebel & patches #mIRC_Rainbow - Undernet February 23, 2002 - New Scripting by DuKeCuPiD
;This file replaces Honey1, Honey2 and Honey3.mrc and adds 150 more pictures to the file.
;In includes random aliases /hhel and /hbye
;Scripting by texxy, addons by patches
;Tested by Sher^, Sammi, and Serina.
;This file will be made available at #mIRC_Rainbow's website http://www.mIRC-Rainbow.com/
;This is the 15th file and 63rd in 1999 #mIRC_Rainbow has released. Release date 4/18/99
; Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö 
; The script written by texxy from #mIRC_Rainbow on Undernet - Remote & Offer by patches & texxy 
; If txplay4.0+ is loaded /txmove mrhoney1.mrc then /txmove mrhoney1.txt
; Then to load mrhoney1.mrc type or paste:  /load -rs mrhoney1.mrc
; If txplay5.0+ is loaded type:  /txload mrhoney1
; mrhoney1.mrc was updated for mIRC5.6 by patches and Sher^ of #mIRC_Rainbow - Undernet  June 1999 because the original honeyart1.mrc used a previous alias that will not work for users of mIRC5.6
; This file will work in all versions of mIRC5.11+
; If your making more mrc files, please use the rbarts & Rbnick3 aliases. These are #mIRC_Rainbow's most current aliases for art mrc's.
; All aliases in this file are free to use without getting permission first, but we ask you to give credit given to the scripters and their respective channel.
; All occurrences of anything ddvar related were removed from this file so it becomes a stand alone file.  DDvar stuff was replaced with the $hoss alias.

ctcp 1:mrhoney1: notice $nick $me 4is using mrhoney1.mrc 2(v2 mIRC60+) February 23, 2002
alias mrhoney1 set %nick $1 | if ($1 == $null) { rbnick3 } | /ctcp %nick mrhoney1

on 1:disconnect: if ($script(honeyart1.mrc) != $null) { /unload -rs honeyart1.mrc | echo 4 mrhoney1.mrc has unloaded honeyart1.mrc, your new mrhoney1.mrc replaces it. There is no need to reload honeyart1.mrc. }
on 1:TEXT:"*:*: {
  set %mrbfile mrhoney1 | if (( $1 == " $+ $me ) && ($2 ==  %mrbfile $+ )) {
    echo -a 3,1Ö13¿3Ö 0,3sending %mrbfile to $nick
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
alias mrhoney1offer {
  mrboffer2002 | set %mrbfile mrhoney1
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
alias hhel rbarts | set %ran $rand(1,217) | set %pplay hello | echo 11,1 $+ Currently playing %pplay $+ %ran in HoNeYaRt1.mrc | .play -ct $+ %pplay $+ %ran mrhoney1.txt 2000
alias hbye rbarts | set %ran $rand(1,12) | set %pplay byebye | echo 11,1 $+ Currently playing %pplay $+ %ran in HoNeYaRt1.mrc | .play -ct $+ %pplay $+ %ran mrhoney1.txt 2000
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
alias HÕÑ rbarts | .play -ct $+ $1 mrHoney1.txt $2
menu nicklist,query {
  HoneyArt
  .Greets /hhel
  ..HeLLo'S 
  ...HeLLo'S 1-102
  ....HeLLo's 1-12
  .....HeLLo1-1 »1«: HÕÑ hello1 800
  .....HeLLo2-1 »2«: HÕÑ hello2 800
  .....HeLLo3-1 »3«: HÕÑ hello3 800
  .....HeLLo4-1 »4«: HÕÑ hello4 800
  .....HeLLo5-1 »5«: HÕÑ hello5 900
  .....HeLLo6-1 »6«: HÕÑ hello6 900
  .....HeLLo7-1 »7«: HÕÑ hello7 900
  .....HeLLo8-1 »8«: HÕÑ hello8 800
  .....HeLLo9-1 »9«: HÕÑ hello9 900
  .....HeLLo10-1 »10«: HÕÑ hello10 900
  .....HeLLo11-1 »11«: HÕÑ hello11 900
  .....HeLLo12-1 »12«: HÕÑ hello12 900
  ....HeLLo's 13-25
  .....HeLLo13-1 »13«: HÕÑ hello13 800
  .....HeLLo14-1 »14«: HÕÑ hello14 900
  .....HeLLo15-1 »15«: HÕÑ hello15 1200
  .....HeLLo16-1 »16«: HÕÑ hello16 900
  .....HeLLo17-1 »17«: HÕÑ hello17 800
  .....HeLLo18-1 »18«: HÕÑ hello18 900
  .....HeLLo19-1 »19«: HÕÑ hello19 800
  .....HeLLo20-1 »20« : HÕÑ hello20 900
  .....HeLLo21-1 »21«: HÕÑ hello21 900
  .....HeLLo22-1 »22«: HÕÑ hello22 900
  .....HeLLo23-1 »23«: HÕÑ hello23 900
  .....HeLLo24-1 »24«: HÕÑ hello24 900
  .....HeLLo25-1 »25«: HÕÑ hello25 1200
  ....HeLLo's 26-35
  .....HeLLo26-1 »26«: HÕÑ hello26 900
  .....HeLLo27-1 »27«: HÕÑ hello27 900
  .....HeLLo28-1 »28«: HÕÑ hello28 900
  .....HeLLo29-1 »29«: HÕÑ hello29 900
  .....HeLLo30-1 »30«: HÕÑ hello30 900
  .....HeLLo31-1 »31«: HÕÑ hello31 900
  .....HeLLo32-1 »32«: HÕÑ hello32 900
  .....HeLLo33-1 »33«: HÕÑ hello33 900
  .....HeLLo34-1 »34«: HÕÑ hello34 900
  .....HeLLo35-1 »35«: HÕÑ hello35 900
  ....HeLLo's 36-48
  .....HoNHeLLo1 »36«: HÕÑ hello36 900
  .....HoNHeLLo2 »37«: HÕÑ hello37 900
  .....HoNHeLLo3 »38«: HÕÑ hello38 900
  .....HoNHeLLo4 »39«: HÕÑ hello39 900
  .....HoNHeLLo5 »40«: HÕÑ hello40 900
  .....HoNHeLLo6 »41«: HÕÑ hello41 900
  .....HoNHeLLo7 »42«: HÕÑ hello42 900
  .....HoNHeLLo8 »43«: HÕÑ hello43 1200
  .....HoNHeLLo9 »44«: HÕÑ hello44 900
  .....HoNHeLLo10 »45«: HÕÑ hello45 900
  .....HoNHeLLo11 »46«: HÕÑ hello46 900
  .....HoNHeLLo12 »47«: HÕÑ hello47 900
  .....HoNHeLLo13 »48«: HÕÑ hello48 900
  ....HeLLo's 49-61
  .....HoNHeLLo14 »49«: HÕÑ hello49 900
  .....HoNHeLLo15 »50«: HÕÑ hello50 900
  .....HoNHeLLo16 »51«: HÕÑ hello51 900
  .....HoNHeLLo17 »52«: HÕÑ hello52 900
  .....HoNHeLLo18 »53«: HÕÑ hello53 900
  .....HoNHeLLo19 »54«: HÕÑ hello54 900
  .....HoNHeLLo20 »55«: HÕÑ hello55 900
  .....HoNHeLLo21 »56«: HÕÑ hello56 1000
  .....HoNHeLLo22 »57«: HÕÑ hello57 900
  .....HoNHeLLo23 »58«: HÕÑ hello58 900
  .....HoNHeLLo24 »59«: HÕÑ hello59 900
  .....HoNHeLLo25 »60«: HÕÑ hello60 900
  .....HoNHeLLo26 »61«: HÕÑ hello61 900
  ....HeLLo's 62-76
  .....HoNHeLLo27 »62«: HÕÑ hello62 900
  .....HoNHeLLo28 »63«: HÕÑ hello63 900
  .....HoNHeLLo29 »64«: HÕÑ hello64 900
  .....HoNHeLLo30 »65«: HÕÑ hello65 900
  .....HoNHeLLo31 »66«: HÕÑ hello66 900
  .....HoNHeLLo32 »67«: HÕÑ hello67 900
  .....HoNHeLLo33 »68«: HÕÑ hello68 900
  .....HoNHeLLo34 »69«: HÕÑ hello69 900
  .....HoNHeLLo35 »70«: HÕÑ hello70 900
  .....HoNHeLLo36 »71«: HÕÑ hello71 900
  .....HoNHeLLo37 »72«: HÕÑ hello72 900
  .....HoNHeLLo38 »73«: HÕÑ hello73 900
  .....HoNHeLLo39 »74«: HÕÑ hello74 900
  .....HoNHeLLo40 »75«: HÕÑ hello75 900
  .....HoNHeLLo41 »76«: HÕÑ hello76 900
  ....HeLLo's 77-89
  .....HoNHi1-3 »77«: HÕÑ hello77 1100
  .....HoNHi2-3 »78«: HÕÑ hello78 1100
  .....HoNHi3-3 »79«: HÕÑ hello79 1100
  .....HoNHi4-3 »80«: HÕÑ hello80 1100
  .....HoNHi5-3 »81«: HÕÑ hello81 1100
  .....HoNHi6-3 »82«: HÕÑ hello82 1100
  .....HoNHi7-3 »83«: HÕÑ hello83 1100
  .....HoNHi8-3 »84«: HÕÑ hello84 1100
  .....HoNHi9-3 »85«: HÕÑ hello85 1100
  .....HoNHi10-3 »86«: HÕÑ hello86 1100
  .....HoNHi11-3 »87«: HÕÑ hello87 1100
  .....HoNHi1-1-3 »88«: HÕÑ hello88 1100
  .....HoNHi1-3 »89«: HÕÑ hello89 1100
  ....HeLLo's 90-102
  .....HoNHi1-3-3 »90«: HÕÑ hello90 1100
  .....HoNHi1-4-3 »91«: HÕÑ hello91 1100
  .....HoNHi1-5-3 »92«: HÕÑ hello92 1100
  .....HoNHi1-6-3 »93«: HÕÑ hello93 1100
  .....HoNHi2-1-3 »94«: HÕÑ hello94 1100
  .....HoNHi2-3 »95«: HÕÑ hello95 1100
  .....HoNHi2-3-3 »96«: HÕÑ hello96 1100
  .....HoNHi2-4-3 »97«: HÕÑ hello97 1100
  .....HoNHi2-5-3 »98«: HÕÑ hello98 1100
  .....HoNHi2-6-3 »99«: HÕÑ hello99 1100
  .....HoNHi3-1-3 »100«: HÕÑ hello100 1100
  .....HoNHi3-3 »101«: HÕÑ hello101 1100
  .....HoNHi3-3-3 »102«: HÕÑ hello102 1100
  ...HeLLo'S 103-217
  ....HeLLo's 103-115
  .....HoNHi3-4-3 »103«: HÕÑ hello103 1100
  .....HoNHi3-5-3 »104«: HÕÑ hello104 1100
  .....Hnick1-4 »105«: HÕÑ hello105 900
  .....Hnick2-4 »106«: HÕÑ hello106 900
  .....Hnick3-4 »107«: HÕÑ hello107 900
  .....Hnick4-4 »108«: HÕÑ hello108 900
  .....Hnick5-4 »109«: HÕÑ hello109 900
  .....Hnick6-4 »110«: HÕÑ hello110 900
  .....Hnick7-4 »111«: HÕÑ hello111 900
  .....Hnick8-4 »112«: HÕÑ hello112 900
  .....Hnick9-4 »113«: HÕÑ hello113 900
  .....Hnick10-4 »114«: HÕÑ hello114 900
  .....Hnick11-4 »115«: HÕÑ hello115 900
  ....HeLLo's 116-128
  .....Hnick12-4 »116«: HÕÑ hello116 900
  .....Hnick13-4 »117«: HÕÑ hello117 900
  .....Hnick14-4 »118«: HÕÑ hello118 900
  .....Hnick15-4 »119«: HÕÑ hello119 900
  .....Hnick16-4 »120«: HÕÑ hello120 900
  .....Hnick17-4 »121«: HÕÑ hello121 900
  .....Hnick18-4 »122«: HÕÑ hello122 900
  .....Hnick19-4 »123«: HÕÑ hello123 900
  .....Hnick20-4 »124«: HÕÑ hello124 900
  .....Hnick21-4 »125«: HÕÑ hello125 900
  .....Hnick22-4 »126«: HÕÑ hello126 900
  .....Hnick23-4 »127«: HÕÑ hello127 900
  .....Hnick24-4 »128«: HÕÑ hello128 900
  ....HeLLo's 128-140
  .....Hnick25-4 »129«: HÕÑ hello129 900
  .....Hnick26-4 »130«: HÕÑ hello130 900
  .....Hnick27-4 »131«: HÕÑ hello131 900
  .....Hnick28-4 »132«: HÕÑ hello132 900
  .....Hnick29-4 »133«: HÕÑ hello133 900
  .....Hnick30-4 »134«: HÕÑ hello134 900
  .....Hnick31-4 »135«: HÕÑ hello135 900
  .....Hnick32-4 »136«: HÕÑ hello136 900
  .....Hnick33-4 »137«: HÕÑ hello137 900
  .....Hnick34-4 »138«: HÕÑ hello138 900
  .....Hnick35-4 »139«: HÕÑ hello139 900
  .....Hnick36-4 »140«: HÕÑ hello140 900
  ....HeLLo's 141-153
  .....Hnick37-4 »141«: HÕÑ hello141 900
  .....Hnick38-4 »142«: HÕÑ hello142 900
  .....Hnick39-4 »143«: HÕÑ hello143 900
  .....Hnick40-4 »144«: HÕÑ hello144 900
  .....Hnick41-4 »145«: HÕÑ hello145 900
  .....Hnick42-4 »146«: HÕÑ hello146 900
  .....Hnick43-4 »147«: HÕÑ hello147 900
  .....Hnick44-4 »148«: HÕÑ hello148 900
  .....Hnick45-4 »149«: HÕÑ hello149 900
  .....Hnick46-4 »150«: HÕÑ hello150 900
  .....Hnick47-4 »151«: HÕÑ hello151 900
  .....Hnick48-4 »152«: HÕÑ hello152 900
  .....Hnick49-4 »153«: HÕÑ hello153 900
  ....HeLLo's 154-166
  .....Hnick50-4 »154«: HÕÑ hello154 900
  .....HoNHi1-5 »155«: HÕÑ hello155 1100
  .....HoNHi2-5 »156«: HÕÑ hello156 1100
  .....HoNHi3-5 »157«: HÕÑ hello157 1100
  .....HoNHi4-5 »158«: HÕÑ hello158 1100
  .....HoNHi5-5 »159«: HÕÑ hello159 1100
  .....HoNHi6-5 »160«: HÕÑ hello160 1100
  .....HoNHi7-5 »161«: HÕÑ hello161 1100
  .....HoNHi8-5 »162«: HÕÑ hello162 1100
  .....HoNHi9-5 »163« : HÕÑ hello163 1100
  .....HoNHi10-5 »164« : HÕÑ hello164 1100
  .....HoNHi11-5 »165« : HÕÑ hello165 1100
  ....HeLLo's 167-179
  .....HoNHi12-5 »166«: HÕÑ hello166 1100
  .....HoNHi13-5 »167«: HÕÑ hello167 1100
  .....HoNHi14-5 »168«: HÕÑ hello168 1100
  .....HoNHi15-5 »169« : HÕÑ hello169 1100
  .....HoNHi16-5 »170«: HÕÑ hello170 1100
  .....HoNHi17-5 »171«: HÕÑ hello171 1100
  .....HoNHi18-5 »172«: HÕÑ hello172 1100
  .....HoNHi19-5 »173«: HÕÑ hello173 1100
  .....HoNHi20-5 »174«: HÕÑ hello174 1100
  .....HoNHi21-5 »175«: HÕÑ hello175 1100
  .....HoNHi22-5 »176«: HÕÑ hello176 1100
  .....HoNHi23-5 »177«: HÕÑ hello177 1100
  .....HoNHi24-5 »178«: HÕÑ hello178 1100
  .....HoNHi25-5 »179«: HÕÑ hello179 1100
  ....HeLLo's 180-192
  .....HoNHi26-5 »180«: HÕÑ hello180 1100
  .....HoNHi27-5 »181«: HÕÑ hello181 1100
  .....HoNHi28-5 »182«: HÕÑ hello182 1100
  .....HoNHi29-5 »183«: HÕÑ hello183 1100
  .....HoNHi30-5 »184«: HÕÑ hello184 1100
  .....HoNHi31-5 »185«: HÕÑ hello185 1100
  .....HoNHi32-5 »186«: HÕÑ hello186 1100
  .....HoNHi33-5 »187«: HÕÑ hello187 1100
  .....HoNHi34-5 »188«: HÕÑ hello188 1100
  .....HoNHi35-5 »189«: HÕÑ hello189 1100
  .....HoNHi36-5 »190«: HÕÑ hello190 1100
  .....HoNHi37-5 »191«: HÕÑ hello191 1100
  .....HoNHi38-5 »192«: HÕÑ hello192 1100
  ....HeLLo's 193-205
  .....HoNHi39-5 »193«: HÕÑ hello193 1100
  .....HoNHi40-5 »194«: HÕÑ hello194 1100
  .....HoNHi41-5 »195«: HÕÑ hello195 1100
  .....HoNHi42-5 »196«: HÕÑ hello196 1100
  .....HoNHi43-5 »197«: HÕÑ hello197 1100
  .....HoNHi44-5 »198«: HÕÑ hello198 1100
  .....HoNHi45-5 »199«: HÕÑ hello199 1100
  .....HoNHi46-5 »200«: HÕÑ hello200 1100
  .....HoNHi47-5 »201«: HÕÑ hello201 1100
  .....HoNHi48-5 »202«: HÕÑ hello202 1100
  .....HoNHi49-5 »203«: HÕÑ hello203 1100
  .....HoNHi50-5 »204«: HÕÑ hello204 1100
  ....HeLLo's 205-217
  .....HoNHi51-5 »205«: HÕÑ hello205 1100
  .....HoNHi52-5 »206«: HÕÑ hello206 1100
  .....MiSc HeLLoS
  ......HeLLo1 »207«: HÕÑ hello207 1100
  ......HeLLo2 »208«: HÕÑ hello208 2000
  ......HeLLo3 »209«: HÕÑ hello209 1100
  ......HeLLo4 »210«: HÕÑ hello210 1100
  ......HeLLo5 »211«: HÕÑ hello211 1100
  ......HeLLo6 »212«: HÕÑ hello212 1100
  ......Hearthi »213«: HÕÑ hello213 1100
  ......gingerbreadhi »214«: HÕÑ hello214 1100
  ......bearhi: HÕÑ bearhi 2000
  ......applehello: HÕÑ applehello 2000
  ..WeLcOmE
  ...WeLcOmE1 : HÕÑ hello215 1100 
  ...WeLcOmE2: HÕÑ hello216 1100 
  ...WeLcOmE3 : HÕÑ hello217 1100 
  ..Hi EveryOne
  ...hievery1: HÕÑ hievery1 1100
  ...hievery2: HÕÑ hievery2 1100
  ...hievery3: HÕÑ hievery3 1100
  ..WeLcOmEbAcK
  ...WB1: HÕÑ wb1 1100   
  ...WB2: HÕÑ wb2 1100 
  ...WB3: HÕÑ wb3 1100 
  .Parts /hbye
  ..ByE's
  ...ByEbYe »1«: HÕÑ byebye 1100
  ...ByEbYe1 »2«: HÕÑ byebye1 1100
  ...ByEbYe2 »3«: HÕÑ byebye2 1100
  ...ByEbYe3 »4«: HÕÑ byebye3 1100
  ...ByEbYe4 »5«: HÕÑ byebye4 1100
  ...ByEbYe5 »6«: HÕÑ byebye5 1100
  ..GooDNitE
  ...GooDNitE1 »7«: HÕÑ byebye7 1100 
  ...GooDNitE2 »8«: HÕÑ byebye8 1100 
  ...GooDNitE3 »9«: HÕÑ byebye9 1100 
  ...GooDNitE4 »10«: HÕÑ byebye10 1100 
  ...GooDNitE5 »11«: HÕÑ byebye11 1100 
  ...BlAnKiE »12«: HÕÑ byebye6 1100 
  .FuN 
  ..FuN 1-10
  ...casperhi: HÕÑ casperhi 1100  .
  ...lionhi: HÕÑ lionhi 1100
  ...mylove: HÕÑ mylove 1500
  ...sweetheart: HÕÑ sweetheart 1100
  ...hedgehogs: HÕÑ hedgehogs 1100
  ...puppyhi: HÕÑ puppyhi 1100
  ...mm: HÕÑ mm 1100
  ...clue: HÕÑ clue 1100
  ...bearTshirt: HÕÑ bearTshirt 1900
  ...cracked: HÕÑ cracked 1500
  ..FuN 11-20
  ...mirckid: HÕÑ mirckid 1100
  ...drool: HÕÑ drool 1100
  ...guestcard: HÕÑ guestcard 1100
  ...honheart1: HÕÑ heart1 1100
  ...honheart2: HÕÑ heart2 1100
  ...ninny: HÕÑ ninny 1100
  ...sunshine: HÕÑ sunshine 1100
  ...slipper: HÕÑ slipper 1100
  ...athome: HÕÑ athome 1100
  ...paper: HÕÑ paper 1100
  .FuN 21-28
  ...work: HÕÑ work 1100
  ...car: HÕÑ car 1100
  ...kite: HÕÑ kite 1100
  ...bear: HÕÑ bear 1100
  ...feet: HÕÑ feet 1100
  ...seeu: HÕÑ seeu 1100
  ...niceday: HÕÑ niceday 1100
  ...poof: HÕÑ poof 1100 
  .-
  .NiCk ArT
  ..FrIeNdS A-B
  ...angl: HÕÑ angl 900
  ...asia: HÕÑ asia 900
  ...acc: HÕÑ acc 900
  ...aladdin: HÕÑ aladdin 900
  ...-
  ...bakerldy: HÕÑ bakerldy 900
  ...banditt: HÕÑ banditt 900
  ...barbie: HÕÑ barbie 900 
  ...bear44: HÕÑ bear44 900 
  ...bill5: HÕÑ bill5 900
  ...bravehart: HÕÑ bravehart 900
  ...brenner: HÕÑ brenner 900 
  ...bub: HÕÑ bub 900 
  ...buddy40: HÕÑ buddy40 900   
  ..FrIeNdS C-D
  ...cabo: HÕÑ cabo 900   
  ...carman: HÕÑ carman 900
  ...cb: HÕÑ cb 900
  ...chet: HÕÑ chet 900
  ...cd32x: HÕÑ cd32x 1000 
  ...cody: HÕÑ cody 1000
  ...crmsoda: HÕÑ crmsoda 1200
  ...cupicake: HÕÑ cupicake 1000 
  ...cute1: HÕÑ cute1 1200
  ...-
  ...db1: HÕÑ db1 1000 
  ...dot: HÕÑ dot 1000 
  ...dents: HÕÑ dents 900
  ...dnholli: HÕÑ dnholli 1000
  ...dynaflux: HÕÑ dynaflux 1000
  ..FrIeNdS E-H
  ...efy: HÕÑ efy 1200
  ...echo: HÕÑ echo 800
  ...-
  ...farmgirl: HÕÑ farmgirl 1200
  ...fragrance: HÕÑ fragrance 800
  ...-
  ...glint: HÕÑ glint 800 
  ...giggles: HÕÑ giggles 1800
  ...-
  ...happyone: HÕÑ happyone 1200  
  ...handeman: HÕÑ handeman 1000
  ...hazel: HÕÑ hazel 900
  ...hf: HÕÑ hf 800
  ...honey: HÕÑ honey 900 
  ...huggybear: HÕÑ huggybear 1200
  ..FrIeNdS I-J
  ...iaaron: HÕÑ iaaron 800
  ...ich: HÕÑ ich 1000
  ...irc-doc: HÕÑ irc-doc 800
  ...its-demi: HÕÑ its-demi 800
  ...itisi: HÕÑ itisi 1200 
  ...-
  ...jazzman: HÕÑ jazzman 1000
  ...jd: HÕÑ jd 1300  
  ...jodeci: HÕÑ jodeci 1000
  ...joker: HÕÑ joker 1200
  ..FrIeNdS K-L
  ...k39: HÕÑ k39 800
  ...kjo: HÕÑ kjo 900
  ...keeper: HÕÑ keeper 800
  ...kite2: HÕÑ kite2 800  
  ...kitten: HÕÑ kitten 900
  ...kris: HÕÑ kris 800
  ...krptonite: HÕÑ krptonite 1200
  ...kymmy: HÕÑ kymmy 600
  ...-
  ...linda: HÕÑ linda 900
  ...lildevil: HÕÑ lildevil 900
  ...L69: HÕÑ L69 1000
  ...lilfire: HÕÑ lilfire 1200
  ...lionessy: HÕÑ lionessy 1000
  ...LPK: HÕÑ LPK 1200
  ..FrIeNdS M-P
  ...m: HÕÑ m 1200
  ...mag: HÕÑ mag 1200
  ...migirl: HÕÑ migirl 1000
  ...monica: HÕÑ monica 900
  ...mysticldy: HÕÑ mysticldy 1000
  ...mrd: HÕÑ mrd 1000 
  ...mulder: HÕÑ mulder 1200
  ...-
  ...nightrose: HÕÑ nightrose 1000
  ...nuffers: HÕÑ nuffers 900
  ...-
  ...osirus: HÕÑ osirus 900
  ...-
  ...patches *W*: HÕÑ patches 1000
  ...paula: HÕÑ paula 800
  ...puriel: HÕÑ puriel 1000
  ...pru: HÕÑ pru 1000
  ..FrIeNdS R-S
  ...Friends R
  ....redmoon: HÕÑ redmoon 900
  ....relaxing: HÕÑ relaxing 1200
  ....rena: HÕÑ rena 800
  ....ribbon: HÕÑ ribbon 1000
  ....rzbrat: HÕÑ rzbrat 900
  ...FrIeNdS S 1-9
  ....sam: HÕÑ sam 800  
  ....samantha: HÕÑ samantha 800
  ....samus: HÕÑ samus 800  
  ....starfire: HÕÑ starfire 800  
  ....sansui *W*: HÕÑ sansui 1600
  ....scot: HÕÑ scot 1200 
  ....seamist: HÕÑ seamist 1000
  ....selina: HÕÑ selina 900
  ...FrIeNdS S 10-18
  ....serina: HÕÑ serina 800
  ....shellly: HÕÑ shellly 1000
  ....sher: HÕÑ sher 1200
  ....sweet: HÕÑ sweet 800
  ....sir: HÕÑ sir 800
  ....sno-dov: HÕÑ sno-dov 1000
  ....swt1: HÕÑ swt1 1200
  ....studlly: HÕÑ studlly 1000 
  ....sybbie: HÕÑ sybbie 800
  ..FrIeNdS T-Z
  ...tagirl: HÕÑ tagirl 900
  ...tes: HÕÑ tes 1200
  ...tera: HÕÑ tera 800
  ...txhoney: HÕÑ txhoney 1000
  ...texxy: HÕÑ texxy 1200
  ...tlc: HÕÑ tlc 1200
  .-
  .Legend
  ..*C*:/echo 0,10 Channel files that will not play in query or dcc chat windows.
  ..*L*:/echo 0,10 L-o-n-g text -8 like it says0 ;}~ 
  ..*W*:/echo 0,10 Wide text -8 Shorten your nick to at least 3 characters for texts with *W  
  .-
  .Share/Send/Load
  ..Send mrHoney1.mrc--> $snick(#,1) : set %mrbfile mrhoney1 | rbnick3 | dcc send %nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg %nick Place both the %mrbfile .txt and .mrc in \mirc\ | msg %nick type--> 4 /load -rs %mrbfile $+ .mrc
  ..Offer /mrhoney1offer: mrhoney1offer
  ..-
  ..How to Load mrHoney1: /say  to load place both files in main mirc folder and type 10 /load -rs mrHoney1.mrc
  ..Unload your mrHoney1: /unload -rs mrHoney1.mrc
  .-
  .Version /mrhoney1:/mrhoney1
}
