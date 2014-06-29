;mrS>animals56:1.0-mIRC60+:::
;Animals.mrc was originally written by Bravehart. Using other artists files about animals.
;Edited for mIRC60+ by rebel & patches #mIRC_Rainbow - Undernet Feb.23/2002 - New Scripting by DuKeCuPiD
;To Load animals56.mrc type or paste:  /load -rs animals56.mrc
;This file is made up of text files from various artists and put 
;together in a mrc file
;to speed up play. It was put together by a wee b with a hat on
;who apologises if anyone is upset at their files being in here but
;they would have been played as text files anyway..thank you 1sept98
; Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö Ö¿Ö 
; The script written by texxy from #mIRC_Rainbow on Undernet - Remote & Offer by patches & texxy 
; If txplay4.0+ is loaded /txmove animals56.mrc then /txmove animals56.txt
; Then to load animals56.mrc type or paste:  /load -rs animals56.mrc
; If txplay5.0+ is loaded type:  /txload animals56
; animals56.mrc was updated for mIRC5.6 by patches and Sher^ of #mIRC_Rainbow - Undernet  June 1999 because the original animals.mrc used a previous alias that will not work for users of mIRC5.6
; This file will work in all versions of mIRC5.11+
; If your making more mrc files, please use the rbarts & Rbnick3 aliases. These are #mIRC_Rainbow's most current aliases for art mrc's.
; All aliases in this file are free to use without getting permission first, but we ask you to give credit given to the scripters and their respective channel.

ctcp 1:animals56: notice $nick $me 4is using animals56.mrc 2(v2 mIRC60+) Feb.23/2002
alias animals56 set %nick $1 | if ($1 == $null) { rbnick3 } | /ctcp %nick animals56

on 1:disconnect: if ($script(animals56.mrc) != $null) { /unload -rs animals56.mrc | echo 4 animals56.mrc has unloaded animals.mrc, your new animals56.mrc replaces it. There is no need to reload animals56.mrc. }
on 1:TEXT:"*:*: {
  set %mrbfile animals56 | if (( $1 == " $+ $me ) && ($2 ==  %mrbfile $+ )) {
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
alias animals56offer {
  mrboffer2002 | set %mrbfile animals56
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
menu nicklist,query {
  Animal
  .animals56
  ..A to H  
  ...ass: rbarts | .play -ctass animals56.txt 1000
  ...bambi: rbarts | .play -ctbambi animals56.txt 1000
  ...batchannel: rbarts | .play -ctbatchannel animals56.txt 1100
  ...bulltime: rbarts | .play -ctbulltime animals56.txt 700
  ...coyote2u: rbarts | .play -ctcoyote2u animals56.txt 800
  ...dogpeek: rbarts | .play -ctdogpeek animals56.txt 900
  ...dogkiss: rbarts | .play -ctdogkiss animals56.txt 900
  ...duckquack: rbarts | .play -ctduckquack animals56.txt 700
  ...elelove: rbarts | .play -ctelelove animals56.txt 1000
  ...elebum: rbarts | .play -ctelebum animals56.txt 700
  ...elephant: rbarts | .play -ctelephant animals56.txt 900
  ...farmgirl: rbarts | .play -ctfarmgirl animals56.txt 2200
  ...farmhi: rbarts | .play -ctfarmhi animals56.txt 800
  ...fishhello: rbarts | .play -ctfishhello animals56.txt 800
  ...fishseaof: rbarts | .play -ctfishseaof animals56.txt 700
  ...fox: rbarts | .play -ctfox animals56.txt 2200
  ...garfield2: rbarts | .play -ctgarfield2 animals56.txt 1000
  ...giraffe: rbarts | .play -ctgiraffe animals56.txt 1400
  ...giraffenecku: rbarts | .play -ctgiraffenecku animals56.txt 1200
  ...horse: rbarts | .play -cthorse animals56.txt 2400
  ...horses: rbarts | .play -cthorses animals56.txt 900
  ...horsehello: rbarts | .play -cthorsehello animals56.txt 1000
  ..I to Z
  ...kangawarm: rbarts | .play -ctkangawarm animals56.txt 900
  ...kanga2: rbarts | .play -ctkanga2 animals56.txt 1000
  ...koala: rbarts | .play -ctkoala animals56.txt 1200
  ...mickeymouse: rbarts | .play -ctmickeymouse animals56.txt 1800
  ...mickeytime: rbarts | .play -ctmickeytime animals56.txt 1400
  ...mouse: rbarts | .play -ctmouse animals56.txt 700
  ...mousecheese: rbarts | .play -ctmousecheese animals56.txt 700
  ...pigslop: rbarts | .play -ctpigslop animals56.txt 700
  ...panda: rbarts | .play -ctpanda animals56.txt 1800
  ...rabbitrose: rbarts | .play -ctrabbitrose animals56.txt 800
  ...rabbitlove: rbarts | .play -ctrabbitlove animals56.txt 700
  ...ratnocat: rbarts | .play -ctratnocat animals56.txt 1500
  ...seal: rbarts | .play -ctseal animals56.txt 800
  ...shark: rbarts | .play -ctshark animals56.txt 900
  ...sheep: rbarts | .play -ctsheep animals56.txt 700
  ...tiger: rbarts | .play -cttiger animals56.txt 2000
  ...tigerall: rbarts | .play -cttigerall animals56.txt 1500
  ...tigger: rbarts | .play -cttigger animals56.txt 800
  ...turtlekiss: rbarts | .play -ctturtlekiss animals56.txt 500
  ...unicorn: rbarts | .play -ctunicorn animals56.txt 2000
  ...unidonkey: rbarts | .play -ctunidonkey animals56.txt 1800
  ...blueunicorn: rbarts | .play -ctblueunicorn animals56.txt 1000
  ...invisible: rbarts | .play -ctinvisible animals56.txt 1400
  ...whale: rbarts | .play -ctwhale animals56.txt 700
  ...wolfmoon: rbarts | .play -ctwolfmoon animals56.txt 900
  .Bears
  ..beangel: rbarts | .play -ctbeangel animals56.txt 700
  ..3bears: set %many 3 | rbarts | .play -ct3bears animals56.txt 700  
  .Bunnies
  ..bunnyhart: rbarts | .play -ctbunnyhart animals56.txt 800
  ..bunnyhartsad: rbarts | .play -ctbunnyhartsad animals56.txt 2100
  ..bunnykiss: rbarts | .play -ctbunnykiss animals56.txt 1000
  ..bunnybutt: rbarts | .play -ctbunnybutt animals56.txt 900
  ..blonderabbit: rbarts | .play -ctblonderabbit animals56.txt 800
  ..bugsbunny: rbarts | .play -ctbugsbunny animals56.txt 1600
  ..easterbunny: rbarts | .play -cteasterbunny animals56.txt 800
  Cats   
  ..catdead: rbarts | .play -ctcatdead animals56.txt 900
  ..cathang: rbarts | .play -ctcathang animals56.txt 1000
  ..catmissyou: rbarts | .play -ctcatmissyou animals56.txt 700
  ..catdog: rbarts | .play -ctcatdog animals56.txt 900
  ..garfield: rbarts | .play -ctgarfield animals56.txt 1100
  ..garfieldhello: rbarts | .play -ctgarfieldhello animals56.txt 1700
  ..catnip: rbarts | .play -ctcatnip animals56.txt 1200
  ..catprowl: rbarts | .play -ctcatprowl animals56.txt 900
  ..catscratch: rbarts | .play -ctcatscratch animals56.txt 700
  ..catstrut: rbarts | .play -ctcatstrut animals56.txt 700
  ..tomaround: rbarts | .play -cttomaround animals56.txt 1600 
  ..catcar: rbarts | .play -ctcatcar animals56.txt 1400
  ..wildcat: rbarts | .play -ctwildcat animals56.txt 700
  ..3kittens: set %many 3 | rbarts | .play -ct3kittens animals56.txt 700
  .Cows  
  ..cowmoo: rbarts | .play -ctcowmoo animals56.txt 2000
  ..cowfunnee: rbarts | .play -ctcowfunnee animals56.txt 800
  ..cowmove: rbarts | .play -ctcowmove animals56.txt 700
  ..cowstraw: rbarts | .play -ctcowstraw animals56.txt 2000
  .Dragons
  ..notcu: rbarts | .play -ctnotcu animals56.txt 700
  ..green: rbarts | .play -ctgreen animals56.txt 700
  ..litefire: rbarts | .play -ctlitefire animals56.txt 1500
  ..flooder: rbarts | .play -ctflooder animals56.txt 700
  ..castle: rbarts | .play -ctcastle animals56.txt 1900
  ..chinese: rbarts | .play -ctchinese animals56.txt 1700
  ..cute: rbarts | .play -ctcute animals56.txt 700
  ..yellow: rbarts | .play -ctyellow animals56.txt 2000
  ..isthatyou: rbarts | .play -ctisthatyou animals56.txt 700
  ..magiccolor: rbarts | .play -ctmagiccolor animals56.txt 700
  ..tears: rbarts | .play -cttears animals56.txt 1500
  ..senn: rbarts | .play -ctsenn animals56.txt 700
  ..breath: rbarts | .play -ctbreath animals56.txt 2000
  .Frogs
  ..frog: rbarts | .play -ctfrog animals56.txt 1200
  ..prince: rbarts | .play -ctprince animals56.txt 900
  ..drunk: rbarts | .play -ctdrunk animals56.txt 1200
  ..showoff: rbarts | .play -ctshowoff animals56.txt 1000
  .Puppies
  ..bite: rbarts | .play -ctbite animals56.txt 500
  ..andcat: rbarts | .play -ctandcat animals56.txt 500
  ..cutepup: rbarts | .play -ctcutepup animals56.txt 500
  ..gift: rbarts | .play -ctgift animals56.txt 500
  ..cutest: rbarts | .play -ctcutest animals56.txt 500
  ..dayout: rbarts | .play -ctdayout animals56.txt 800
  ..fleas: rbarts | .play -ctfleas animals56.txt 700
  ..hello: rbarts | .play -cthello animals56.txt 900
  ..kissdie: rbarts | .play -ctkissdie animals56.txt 500
  ..pupylove: rbarts | .play -ctpupylove animals56.txt 700
  ..bestfriends: rbarts | .play -ctbestfriends animals56.txt 1200
  ..doghouse: rbarts | .play -ctdoghouse animals56.txt 500
  ..peeking: rbarts | .play -ctpeeking animals56.txt 500
  ..takehome: rbarts | .play -cttakehome animals56.txt 500
  ..sharebone: rbarts | .play -ctsharebone animals56.txt 500
  ..snoopy: rbarts | .play -ctsnoopy animals56.txt 900
  ..snoopy2: rbarts | .play -ctsnoopy2 animals56.txt 800
  ..puppytime: rbarts | .play -ctpuppytime animals56.txt 500
  ..puppylove: rbarts | .play -ctpuppylove animals56.txt 500
  .-
  .Share/Send/Load
  ..Send animals56 $+ .mrc--> $snick(#,1) : set %mrbfile animals56 | rbnick3 | dcc send %nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg %nick Place both the %mrbfile .txt and .mrc in \mirc\ | msg %nick type--> 4 /load -rs %mrbfile $+ .mrc
  ..Offer /animals56offer: animals56offer
  ..-
  ..Show How to Load: /say 101)12 Make sure animals56.mrc is in root mirc\ | /say 12   It cannot be in a download subdirectory. | /say 102) 12type----> 4/load -rs animals56.mrc | /say 103) 12Should say something like the following, | /say 2*** Loaded script 'c:\mirc\animals56.mrc' | /say 104) 12Tell me if it loaded please.
  ..Unload animals56: /unload -rs animals56.mrc
  .-
  .Version /animals56:/animals56
}
