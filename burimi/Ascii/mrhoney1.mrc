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
; ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� ֿ� 
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
    echo -a 3,1�13�3� 0,3sending %mrbfile to $nick
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
  if (%ack == 1) { set %dsn1 {�)>=== | set %dsn2 ===<(�} }
  if (%ack == 2) { set %dsn1 �(�`�)�� | set %dsn2 ��`*��� }
  if (%ack == 3) { set %dsn1 �@�@� | set %dsn2 ~<�>~ }
  if (%ack == 4) { set %dsn1 �#mͮ�_� | set %dsn2 ������w }
  if (%ack == 5) { set %dsn1 �(`o�)� | set %dsn2 ���.��� }
  if (%ack == 6) { set %dsn1 �(`��)� | set %dsn2 ��`���� }
  if (%ack == 7) { set %dsn1 �(�`�)� | set %dsn2 ��`.��� }
  if (%ack == 8) { set %dsn1 (�(�`�) | set %dsn2 �`�`��� }
  if (%ack == 9) { set %dsn1 �@���@� | set %dsn2 ~�~�~�~ }
  if (%ack == 10) { set %dsn1 --={{@} | set %dsn2 {@}}=-- }
  if (%ack == 11) { set %dsn1 �۠��۠ | set %dsn2 ~�~�~�~ }
  if (%ack == 12) { set %dsn1 ��=:-\� | set %dsn2 ���:-)� }
  if (%ack == 13) { set %dsn1 ���:-)� | set %dsn2 �c=;o)� }
  if (%ack == 14) { set %dsn1 �*< $+ 8=)� | set %dsn2 �c=:-]� }
  if (%ack == 15) { set %dsn1 ���;+]� | set %dsn2 �c=;o)� }
  if (%ack == 16) { set %dsn1 �*{�o)� | set %dsn2 ��>;=)� }
  if (%ack == 17) { set %dsn1 ��;=.)� | set %dsn2 ��:o/~� }
  if (%ack == 18) { set %dsn1 ��Q:=]� | set %dsn2 �c=��~� }
  if (%ack == 19) { set %dsn1 ��;O]�� | set %dsn2 �{:*)�� }
  if (%ack == 20) { set %dsn1 �����~� | set %dsn2 ��=:-\� }
  if (%ack == 21) { set %dsn1 �(\_/)� | set %dsn2 �=^:^=� }
  if (%ack == 22) { set %dsn1 -=(�)=- | set %dsn2 -=(�)=- }
  if (%ack == 23) { set %dsn1 .���`�. | set %dsn2 ������w }
  if (%ack == 24) { set %dsn1 �/\/\/\ | set %dsn2 �\/\/\/ }
  if (%ack == 25) { set %dsn1 \\\|/// | set %dsn2 ///|\\\ }
  set %ii 1 | :next2
  set %i 1 | :next | set %temp %dsn [ $+ [ %ii ] ]
  set %p $+ %i  $+ $mid(%temp,%i,1) | if (%i < 8) { inc %i | goto next } | set %i 1
  if (%rc1 == 1) { set %mdsn $+ %ii  $+ %rc3 $+ ,1 $+ %p1 $+  $+ %rc2 $+ %p2 $+  $+ %rc3 $+ %p3 $+  $+ %rc2 $+ %p4 $+  $+ %rc3 $+ %p5 $+  $+ %rc2 $+ %p6 $+  $+ %rc3 $+ %p7 }
  else { set %mdsn $+ %ii  $+ %rc1 $+ ,1 $+ %p1 $+  $+ %rc3 $+ %p2 $+  $+ %rc2 $+ %p3 $+  $+ %rc1 $+ %p4 $+  $+ %rc2 $+ %p5 $+  $+ %rc3 $+ %p6 $+  $+ %rc1 $+ %p7 } | if (%ii == 1) { set %ii 2 | goto next2 }
}
alias mrhoney1offer {
  mrboffer2002 | set %mrbfile mrhoney1
  say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn1 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3 $+ $str(�,$len($me)) $+ ->To Grab %mrbfile $+ <-�� | /say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn2 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3 ��paste-->  $+ %rc3 $+ , $+ %rc1 $+ " $+ $me %mrbfile
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
alias H�� rbarts | .play -ct $+ $1 mrHoney1.txt $2
menu nicklist,query {
  HoneyArt
  .Greets /hhel
  ..HeLLo'S 
  ...HeLLo'S 1-102
  ....HeLLo's 1-12
  .....HeLLo1-1 �1�: H�� hello1 800
  .....HeLLo2-1 �2�: H�� hello2 800
  .....HeLLo3-1 �3�: H�� hello3 800
  .....HeLLo4-1 �4�: H�� hello4 800
  .....HeLLo5-1 �5�: H�� hello5 900
  .....HeLLo6-1 �6�: H�� hello6 900
  .....HeLLo7-1 �7�: H�� hello7 900
  .....HeLLo8-1 �8�: H�� hello8 800
  .....HeLLo9-1 �9�: H�� hello9 900
  .....HeLLo10-1 �10�: H�� hello10 900
  .....HeLLo11-1 �11�: H�� hello11 900
  .....HeLLo12-1 �12�: H�� hello12 900
  ....HeLLo's 13-25
  .....HeLLo13-1 �13�: H�� hello13 800
  .....HeLLo14-1 �14�: H�� hello14 900
  .....HeLLo15-1 �15�: H�� hello15 1200
  .....HeLLo16-1 �16�: H�� hello16 900
  .....HeLLo17-1 �17�: H�� hello17 800
  .....HeLLo18-1 �18�: H�� hello18 900
  .....HeLLo19-1 �19�: H�� hello19 800
  .....HeLLo20-1 �20� : H�� hello20 900
  .....HeLLo21-1 �21�: H�� hello21 900
  .....HeLLo22-1 �22�: H�� hello22 900
  .....HeLLo23-1 �23�: H�� hello23 900
  .....HeLLo24-1 �24�: H�� hello24 900
  .....HeLLo25-1 �25�: H�� hello25 1200
  ....HeLLo's 26-35
  .....HeLLo26-1 �26�: H�� hello26 900
  .....HeLLo27-1 �27�: H�� hello27 900
  .....HeLLo28-1 �28�: H�� hello28 900
  .....HeLLo29-1 �29�: H�� hello29 900
  .....HeLLo30-1 �30�: H�� hello30 900
  .....HeLLo31-1 �31�: H�� hello31 900
  .....HeLLo32-1 �32�: H�� hello32 900
  .....HeLLo33-1 �33�: H�� hello33 900
  .....HeLLo34-1 �34�: H�� hello34 900
  .....HeLLo35-1 �35�: H�� hello35 900
  ....HeLLo's 36-48
  .....HoNHeLLo1 �36�: H�� hello36 900
  .....HoNHeLLo2 �37�: H�� hello37 900
  .....HoNHeLLo3 �38�: H�� hello38 900
  .....HoNHeLLo4 �39�: H�� hello39 900
  .....HoNHeLLo5 �40�: H�� hello40 900
  .....HoNHeLLo6 �41�: H�� hello41 900
  .....HoNHeLLo7 �42�: H�� hello42 900
  .....HoNHeLLo8 �43�: H�� hello43 1200
  .....HoNHeLLo9 �44�: H�� hello44 900
  .....HoNHeLLo10 �45�: H�� hello45 900
  .....HoNHeLLo11 �46�: H�� hello46 900
  .....HoNHeLLo12 �47�: H�� hello47 900
  .....HoNHeLLo13 �48�: H�� hello48 900
  ....HeLLo's 49-61
  .....HoNHeLLo14 �49�: H�� hello49 900
  .....HoNHeLLo15 �50�: H�� hello50 900
  .....HoNHeLLo16 �51�: H�� hello51 900
  .....HoNHeLLo17 �52�: H�� hello52 900
  .....HoNHeLLo18 �53�: H�� hello53 900
  .....HoNHeLLo19 �54�: H�� hello54 900
  .....HoNHeLLo20 �55�: H�� hello55 900
  .....HoNHeLLo21 �56�: H�� hello56 1000
  .....HoNHeLLo22 �57�: H�� hello57 900
  .....HoNHeLLo23 �58�: H�� hello58 900
  .....HoNHeLLo24 �59�: H�� hello59 900
  .....HoNHeLLo25 �60�: H�� hello60 900
  .....HoNHeLLo26 �61�: H�� hello61 900
  ....HeLLo's 62-76
  .....HoNHeLLo27 �62�: H�� hello62 900
  .....HoNHeLLo28 �63�: H�� hello63 900
  .....HoNHeLLo29 �64�: H�� hello64 900
  .....HoNHeLLo30 �65�: H�� hello65 900
  .....HoNHeLLo31 �66�: H�� hello66 900
  .....HoNHeLLo32 �67�: H�� hello67 900
  .....HoNHeLLo33 �68�: H�� hello68 900
  .....HoNHeLLo34 �69�: H�� hello69 900
  .....HoNHeLLo35 �70�: H�� hello70 900
  .....HoNHeLLo36 �71�: H�� hello71 900
  .....HoNHeLLo37 �72�: H�� hello72 900
  .....HoNHeLLo38 �73�: H�� hello73 900
  .....HoNHeLLo39 �74�: H�� hello74 900
  .....HoNHeLLo40 �75�: H�� hello75 900
  .....HoNHeLLo41 �76�: H�� hello76 900
  ....HeLLo's 77-89
  .....HoNHi1-3 �77�: H�� hello77 1100
  .....HoNHi2-3 �78�: H�� hello78 1100
  .....HoNHi3-3 �79�: H�� hello79 1100
  .....HoNHi4-3 �80�: H�� hello80 1100
  .....HoNHi5-3 �81�: H�� hello81 1100
  .....HoNHi6-3 �82�: H�� hello82 1100
  .....HoNHi7-3 �83�: H�� hello83 1100
  .....HoNHi8-3 �84�: H�� hello84 1100
  .....HoNHi9-3 �85�: H�� hello85 1100
  .....HoNHi10-3 �86�: H�� hello86 1100
  .....HoNHi11-3 �87�: H�� hello87 1100
  .....HoNHi1-1-3 �88�: H�� hello88 1100
  .....HoNHi1-3 �89�: H�� hello89 1100
  ....HeLLo's 90-102
  .....HoNHi1-3-3 �90�: H�� hello90 1100
  .....HoNHi1-4-3 �91�: H�� hello91 1100
  .....HoNHi1-5-3 �92�: H�� hello92 1100
  .....HoNHi1-6-3 �93�: H�� hello93 1100
  .....HoNHi2-1-3 �94�: H�� hello94 1100
  .....HoNHi2-3 �95�: H�� hello95 1100
  .....HoNHi2-3-3 �96�: H�� hello96 1100
  .....HoNHi2-4-3 �97�: H�� hello97 1100
  .....HoNHi2-5-3 �98�: H�� hello98 1100
  .....HoNHi2-6-3 �99�: H�� hello99 1100
  .....HoNHi3-1-3 �100�: H�� hello100 1100
  .....HoNHi3-3 �101�: H�� hello101 1100
  .....HoNHi3-3-3 �102�: H�� hello102 1100
  ...HeLLo'S 103-217
  ....HeLLo's 103-115
  .....HoNHi3-4-3 �103�: H�� hello103 1100
  .....HoNHi3-5-3 �104�: H�� hello104 1100
  .....Hnick1-4 �105�: H�� hello105 900
  .....Hnick2-4 �106�: H�� hello106 900
  .....Hnick3-4 �107�: H�� hello107 900
  .....Hnick4-4 �108�: H�� hello108 900
  .....Hnick5-4 �109�: H�� hello109 900
  .....Hnick6-4 �110�: H�� hello110 900
  .....Hnick7-4 �111�: H�� hello111 900
  .....Hnick8-4 �112�: H�� hello112 900
  .....Hnick9-4 �113�: H�� hello113 900
  .....Hnick10-4 �114�: H�� hello114 900
  .....Hnick11-4 �115�: H�� hello115 900
  ....HeLLo's 116-128
  .....Hnick12-4 �116�: H�� hello116 900
  .....Hnick13-4 �117�: H�� hello117 900
  .....Hnick14-4 �118�: H�� hello118 900
  .....Hnick15-4 �119�: H�� hello119 900
  .....Hnick16-4 �120�: H�� hello120 900
  .....Hnick17-4 �121�: H�� hello121 900
  .....Hnick18-4 �122�: H�� hello122 900
  .....Hnick19-4 �123�: H�� hello123 900
  .....Hnick20-4 �124�: H�� hello124 900
  .....Hnick21-4 �125�: H�� hello125 900
  .....Hnick22-4 �126�: H�� hello126 900
  .....Hnick23-4 �127�: H�� hello127 900
  .....Hnick24-4 �128�: H�� hello128 900
  ....HeLLo's 128-140
  .....Hnick25-4 �129�: H�� hello129 900
  .....Hnick26-4 �130�: H�� hello130 900
  .....Hnick27-4 �131�: H�� hello131 900
  .....Hnick28-4 �132�: H�� hello132 900
  .....Hnick29-4 �133�: H�� hello133 900
  .....Hnick30-4 �134�: H�� hello134 900
  .....Hnick31-4 �135�: H�� hello135 900
  .....Hnick32-4 �136�: H�� hello136 900
  .....Hnick33-4 �137�: H�� hello137 900
  .....Hnick34-4 �138�: H�� hello138 900
  .....Hnick35-4 �139�: H�� hello139 900
  .....Hnick36-4 �140�: H�� hello140 900
  ....HeLLo's 141-153
  .....Hnick37-4 �141�: H�� hello141 900
  .....Hnick38-4 �142�: H�� hello142 900
  .....Hnick39-4 �143�: H�� hello143 900
  .....Hnick40-4 �144�: H�� hello144 900
  .....Hnick41-4 �145�: H�� hello145 900
  .....Hnick42-4 �146�: H�� hello146 900
  .....Hnick43-4 �147�: H�� hello147 900
  .....Hnick44-4 �148�: H�� hello148 900
  .....Hnick45-4 �149�: H�� hello149 900
  .....Hnick46-4 �150�: H�� hello150 900
  .....Hnick47-4 �151�: H�� hello151 900
  .....Hnick48-4 �152�: H�� hello152 900
  .....Hnick49-4 �153�: H�� hello153 900
  ....HeLLo's 154-166
  .....Hnick50-4 �154�: H�� hello154 900
  .....HoNHi1-5 �155�: H�� hello155 1100
  .....HoNHi2-5 �156�: H�� hello156 1100
  .....HoNHi3-5 �157�: H�� hello157 1100
  .....HoNHi4-5 �158�: H�� hello158 1100
  .....HoNHi5-5 �159�: H�� hello159 1100
  .....HoNHi6-5 �160�: H�� hello160 1100
  .....HoNHi7-5 �161�: H�� hello161 1100
  .....HoNHi8-5 �162�: H�� hello162 1100
  .....HoNHi9-5 �163� : H�� hello163 1100
  .....HoNHi10-5 �164� : H�� hello164 1100
  .....HoNHi11-5 �165� : H�� hello165 1100
  ....HeLLo's 167-179
  .....HoNHi12-5 �166�: H�� hello166 1100
  .....HoNHi13-5 �167�: H�� hello167 1100
  .....HoNHi14-5 �168�: H�� hello168 1100
  .....HoNHi15-5 �169� : H�� hello169 1100
  .....HoNHi16-5 �170�: H�� hello170 1100
  .....HoNHi17-5 �171�: H�� hello171 1100
  .....HoNHi18-5 �172�: H�� hello172 1100
  .....HoNHi19-5 �173�: H�� hello173 1100
  .....HoNHi20-5 �174�: H�� hello174 1100
  .....HoNHi21-5 �175�: H�� hello175 1100
  .....HoNHi22-5 �176�: H�� hello176 1100
  .....HoNHi23-5 �177�: H�� hello177 1100
  .....HoNHi24-5 �178�: H�� hello178 1100
  .....HoNHi25-5 �179�: H�� hello179 1100
  ....HeLLo's 180-192
  .....HoNHi26-5 �180�: H�� hello180 1100
  .....HoNHi27-5 �181�: H�� hello181 1100
  .....HoNHi28-5 �182�: H�� hello182 1100
  .....HoNHi29-5 �183�: H�� hello183 1100
  .....HoNHi30-5 �184�: H�� hello184 1100
  .....HoNHi31-5 �185�: H�� hello185 1100
  .....HoNHi32-5 �186�: H�� hello186 1100
  .....HoNHi33-5 �187�: H�� hello187 1100
  .....HoNHi34-5 �188�: H�� hello188 1100
  .....HoNHi35-5 �189�: H�� hello189 1100
  .....HoNHi36-5 �190�: H�� hello190 1100
  .....HoNHi37-5 �191�: H�� hello191 1100
  .....HoNHi38-5 �192�: H�� hello192 1100
  ....HeLLo's 193-205
  .....HoNHi39-5 �193�: H�� hello193 1100
  .....HoNHi40-5 �194�: H�� hello194 1100
  .....HoNHi41-5 �195�: H�� hello195 1100
  .....HoNHi42-5 �196�: H�� hello196 1100
  .....HoNHi43-5 �197�: H�� hello197 1100
  .....HoNHi44-5 �198�: H�� hello198 1100
  .....HoNHi45-5 �199�: H�� hello199 1100
  .....HoNHi46-5 �200�: H�� hello200 1100
  .....HoNHi47-5 �201�: H�� hello201 1100
  .....HoNHi48-5 �202�: H�� hello202 1100
  .....HoNHi49-5 �203�: H�� hello203 1100
  .....HoNHi50-5 �204�: H�� hello204 1100
  ....HeLLo's 205-217
  .....HoNHi51-5 �205�: H�� hello205 1100
  .....HoNHi52-5 �206�: H�� hello206 1100
  .....MiSc HeLLoS
  ......HeLLo1 �207�: H�� hello207 1100
  ......HeLLo2 �208�: H�� hello208 2000
  ......HeLLo3 �209�: H�� hello209 1100
  ......HeLLo4 �210�: H�� hello210 1100
  ......HeLLo5 �211�: H�� hello211 1100
  ......HeLLo6 �212�: H�� hello212 1100
  ......Hearthi �213�: H�� hello213 1100
  ......gingerbreadhi �214�: H�� hello214 1100
  ......bearhi: H�� bearhi 2000
  ......applehello: H�� applehello 2000
  ..WeLcOmE
  ...WeLcOmE1 : H�� hello215 1100 
  ...WeLcOmE2: H�� hello216 1100 
  ...WeLcOmE3 : H�� hello217 1100 
  ..Hi EveryOne
  ...hievery1: H�� hievery1 1100
  ...hievery2: H�� hievery2 1100
  ...hievery3: H�� hievery3 1100
  ..WeLcOmEbAcK
  ...WB1: H�� wb1 1100   
  ...WB2: H�� wb2 1100 
  ...WB3: H�� wb3 1100 
  .Parts /hbye
  ..ByE's
  ...ByEbYe �1�: H�� byebye 1100
  ...ByEbYe1 �2�: H�� byebye1 1100
  ...ByEbYe2 �3�: H�� byebye2 1100
  ...ByEbYe3 �4�: H�� byebye3 1100
  ...ByEbYe4 �5�: H�� byebye4 1100
  ...ByEbYe5 �6�: H�� byebye5 1100
  ..GooDNitE
  ...GooDNitE1 �7�: H�� byebye7 1100 
  ...GooDNitE2 �8�: H�� byebye8 1100 
  ...GooDNitE3 �9�: H�� byebye9 1100 
  ...GooDNitE4 �10�: H�� byebye10 1100 
  ...GooDNitE5 �11�: H�� byebye11 1100 
  ...BlAnKiE �12�: H�� byebye6 1100 
  .FuN 
  ..FuN 1-10
  ...casperhi: H�� casperhi 1100  .
  ...lionhi: H�� lionhi 1100
  ...mylove: H�� mylove 1500
  ...sweetheart: H�� sweetheart 1100
  ...hedgehogs: H�� hedgehogs 1100
  ...puppyhi: H�� puppyhi 1100
  ...mm: H�� mm 1100
  ...clue: H�� clue 1100
  ...bearTshirt: H�� bearTshirt 1900
  ...cracked: H�� cracked 1500
  ..FuN 11-20
  ...mirckid: H�� mirckid 1100
  ...drool: H�� drool 1100
  ...guestcard: H�� guestcard 1100
  ...honheart1: H�� heart1 1100
  ...honheart2: H�� heart2 1100
  ...ninny: H�� ninny 1100
  ...sunshine: H�� sunshine 1100
  ...slipper: H�� slipper 1100
  ...athome: H�� athome 1100
  ...paper: H�� paper 1100
  .FuN 21-28
  ...work: H�� work 1100
  ...car: H�� car 1100
  ...kite: H�� kite 1100
  ...bear: H�� bear 1100
  ...feet: H�� feet 1100
  ...seeu: H�� seeu 1100
  ...niceday: H�� niceday 1100
  ...poof: H�� poof 1100 
  .-
  .NiCk ArT
  ..FrIeNdS A-B
  ...angl: H�� angl 900
  ...asia: H�� asia 900
  ...acc: H�� acc 900
  ...aladdin: H�� aladdin 900
  ...-
  ...bakerldy: H�� bakerldy 900
  ...banditt: H�� banditt 900
  ...barbie: H�� barbie 900 
  ...bear44: H�� bear44 900 
  ...bill5: H�� bill5 900
  ...bravehart: H�� bravehart 900
  ...brenner: H�� brenner 900 
  ...bub: H�� bub 900 
  ...buddy40: H�� buddy40 900   
  ..FrIeNdS C-D
  ...cabo: H�� cabo 900   
  ...carman: H�� carman 900
  ...cb: H�� cb 900
  ...chet: H�� chet 900
  ...cd32x: H�� cd32x 1000 
  ...cody: H�� cody 1000
  ...crmsoda: H�� crmsoda 1200
  ...cupicake: H�� cupicake 1000 
  ...cute1: H�� cute1 1200
  ...-
  ...db1: H�� db1 1000 
  ...dot: H�� dot 1000 
  ...dents: H�� dents 900
  ...dnholli: H�� dnholli 1000
  ...dynaflux: H�� dynaflux 1000
  ..FrIeNdS E-H
  ...efy: H�� efy 1200
  ...echo: H�� echo 800
  ...-
  ...farmgirl: H�� farmgirl 1200
  ...fragrance: H�� fragrance 800
  ...-
  ...glint: H�� glint 800 
  ...giggles: H�� giggles 1800
  ...-
  ...happyone: H�� happyone 1200  
  ...handeman: H�� handeman 1000
  ...hazel: H�� hazel 900
  ...hf: H�� hf 800
  ...honey: H�� honey 900 
  ...huggybear: H�� huggybear 1200
  ..FrIeNdS I-J
  ...iaaron: H�� iaaron 800
  ...ich: H�� ich 1000
  ...irc-doc: H�� irc-doc 800
  ...its-demi: H�� its-demi 800
  ...itisi: H�� itisi 1200 
  ...-
  ...jazzman: H�� jazzman 1000
  ...jd: H�� jd 1300  
  ...jodeci: H�� jodeci 1000
  ...joker: H�� joker 1200
  ..FrIeNdS K-L
  ...k39: H�� k39 800
  ...kjo: H�� kjo 900
  ...keeper: H�� keeper 800
  ...kite2: H�� kite2 800  
  ...kitten: H�� kitten 900
  ...kris: H�� kris 800
  ...krptonite: H�� krptonite 1200
  ...kymmy: H�� kymmy 600
  ...-
  ...linda: H�� linda 900
  ...lildevil: H�� lildevil 900
  ...L69: H�� L69 1000
  ...lilfire: H�� lilfire 1200
  ...lionessy: H�� lionessy 1000
  ...LPK: H�� LPK 1200
  ..FrIeNdS M-P
  ...m: H�� m 1200
  ...mag: H�� mag 1200
  ...migirl: H�� migirl 1000
  ...monica: H�� monica 900
  ...mysticldy: H�� mysticldy 1000
  ...mrd: H�� mrd 1000 
  ...mulder: H�� mulder 1200
  ...-
  ...nightrose: H�� nightrose 1000
  ...nuffers: H�� nuffers 900
  ...-
  ...osirus: H�� osirus 900
  ...-
  ...patches *W*: H�� patches 1000
  ...paula: H�� paula 800
  ...puriel: H�� puriel 1000
  ...pru: H�� pru 1000
  ..FrIeNdS R-S
  ...Friends R
  ....redmoon: H�� redmoon 900
  ....relaxing: H�� relaxing 1200
  ....rena: H�� rena 800
  ....ribbon: H�� ribbon 1000
  ....rzbrat: H�� rzbrat 900
  ...FrIeNdS S 1-9
  ....sam: H�� sam 800  
  ....samantha: H�� samantha 800
  ....samus: H�� samus 800  
  ....starfire: H�� starfire 800  
  ....sansui *W*: H�� sansui 1600
  ....scot: H�� scot 1200 
  ....seamist: H�� seamist 1000
  ....selina: H�� selina 900
  ...FrIeNdS S 10-18
  ....serina: H�� serina 800
  ....shellly: H�� shellly 1000
  ....sher: H�� sher 1200
  ....sweet: H�� sweet 800
  ....sir: H�� sir 800
  ....sno-dov: H�� sno-dov 1000
  ....swt1: H�� swt1 1200
  ....studlly: H�� studlly 1000 
  ....sybbie: H�� sybbie 800
  ..FrIeNdS T-Z
  ...tagirl: H�� tagirl 900
  ...tes: H�� tes 1200
  ...tera: H�� tera 800
  ...txhoney: H�� txhoney 1000
  ...texxy: H�� texxy 1200
  ...tlc: H�� tlc 1200
  .-
  .Legend
  ..*C*:/echo 0,10 Channel files that will not play in query or dcc chat windows.
  ..*L*:/echo 0,10 L-o-n-g text -8 like it says0 ;}~�
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
