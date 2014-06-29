;mrS>dale_art:1.0-mIRC60+:::
;dale_art.mrc is made by dale of #mIRC_Rainbow - Undernet
;He comes to us from pirch, an already accomplished artist.
;Sher wrote this mrc for dale, with some testing by Nicky and Trisha
;Some ASCII is by jgs, http://www.ascii-art.com
;but for the most part Dale draws all his own ASCII art.
;This file will be available thru LeTurtle and at the #mIRC_Rainbow website. http://www.mirc-rainbow.com
; Updated by patches for mIRC60 February 21, 2002 - New Scripting by DuKeCuPiD

;aliases by texxy, chippy, and Lyin of #Mirc_Rainbow on Undernet
on 1:TEXT:"*:*: {
  set %mrbfile dale_art | if (($1 == " $+ $me) && ($2 ==  %mrbfile)) {
    echo -a 3,1��13�3� 0,3sending %mrbfile to $nick
    /dcc send $nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg $nick If txPlay50+ is loaded type: /txload %mrbfile | msg $nick Move 4both 1files to "root" mirc dir | msg $nick and type--> 4/load -rs %mrbfile $+ .mrc | msg $nick Use nicklist & query menus to play. | halt
  }
}

; mrPreview Script (Local, Latest) by DuKeCuPiD #mIRC_Rainbow Undernet - Art Previewer Window (For Art MRCs)
; /mrPreview $1 $2 $3 $4
; /mrPreview <Normal|Action> <Topic> <Txt Name> <Final Play Speed>
alias -l mrPreview {
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
alias daleart.play {
  if ( %DA.prev == ON ) || ( %DA.prev == $null ) {
    mrPreview $1 $2 dale_art.txt $3
    return
  }
  if ( $1 == Normal ) {
    rbarts 
    %mrPrev.cmnd = say
    .play -ct $+ $2 dale_art.txt $3
    return
  }
  if ( $1 == Action ) {
    rbarts
    %mrPrev.cmnd = me 
    .play -ct $+ $2 dale_art.txt $3
    return
  }
}

ctcp 1:dale_art: notice $nick $me is using dale_art.mrc (v2) Original release January 28, 2001 (Updated for mIRC60+ February 23, 2002)
alias dale_art set %nick $1 | if ($1 == $null) { rbnick3 } | /ctcp %nick dale_art
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
alias dale_artoffer {
  mrboffer2002 | set %mrbfile dale_art
  say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn1 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3 $+ $str(�,$len($me)) $+ ->To Grab %mrbfile $+ <-�� | /say  $+ %rc3 $+ , $+ %rc3  $+ %rc2 $+ , $+ %rc2  $+ %rc1 $+ , $+ %rc1 %mdsn2 $+  $+ %rc1 $+ , $+ %rc1  $+ %rc2 $+ , $+ %rc2   $+ %rc1 $+ , $+ %rc3 ��paste-->  $+ %rc3 $+ , $+ %rc1 $+ " $+ $me %mrbfile
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

;alias by Lyin
alias hoss2 { unset %tmpta | set %tmptcn $1 | inc %tmptcn 1 | set %tmpdn %tmptcn + 1 | set %tmpdl $ $+ %tmpdn $+ - | set %tmpd [ [ % [ $+ [ tmpdl ] ] ] ] | set %tmpta $ $+ gettok( | set %tmpi 1 
  :tmp | inc %tmpi 1 | set %tmpdy [ [ $ [ $+ [ %tmpi ] ] ] ]
  if (%tmpi < %tmptcn) { set %tmpta %tmpta $+ %tmpdy $+ $chr(38) | goto tmp }
  if (%tmpi == %tmptcn) { set %tmpta %tmpta $+ %tmpdy $+ ,%tmpc,38 $chr(41) } 
  unset %tmpo | set %tmpi $replace(%tmpd,$chr(32),�) | set %tmpp 1 | set %tmpc 1
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
  if (%asc == 97) { %rb = %rb $+ � | goto next }
  if (%asc == 99) { %rb = %rb $+ � | goto next }
  if (%asc == 101) { %rb = %rb $+ � | goto next }
  if (%asc == 105) { %rb = %rb $+ � | goto next }
  if (%asc == 108) { %rb = %rb $+ � | goto next }
  if (%asc == 110) { %rb = %rb $+ � | goto next }
  if (%asc == 111) { %rb = %rb $+ � | goto next }
  if (%asc == 112) { %rb = %rb $+ � | goto next }
  if (%asc == 117) { %rb = %rb $+ � | goto next }
  if (%asc == 121) { %rb = %rb $+ � | goto next }
  if (%asc == 65) { %rb = %rb $+ � | goto next }
  if (%asc == 66) { %rb = %rb $+ � | goto next }
  if (%asc == 67) { %rb = %rb $+ � | goto next }
  if (%asc == 68) { %rb = %rb $+ � | goto next }
  if (%asc == 69) { %rb = %rb $+ � | goto next }
  if (%asc == 73) { %rb = %rb $+ � | goto next }
  if (%asc == 76) { %rb = %rb $+ � | goto next }

  if (%asc == 78) { %rb = %rb $+ � | goto next }
  if (%asc == 79) { %rb = %rb $+ � | goto next }
  if (%asc == 80) { %rb = %rb $+ � | goto next }
  if (%asc == 83) { %rb = %rb $+ � | goto next }
  if (%asc == 85) { %rb = %rb $+ � | goto next }
  if (%asc == 89) { %rb = %rb $+ � | goto next }
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

alias ���1 set %mytopic hi $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���2 set %mytopic wb $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���3 set %mytopic hug $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���4 set %mytopic sn $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���5 set %mytopic nick $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���6 set %mytopic dv $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���7 set %mytopic dsp $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���8 set %mytopic deast $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���9 set %mytopic d4th $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���10 set %mytopic dhallo $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���11 set %mytopic dxmas $+ $1 | rbarts | daleart.play normal %mytopic $2
alias ���12 set %mytopic dny $+ $1 | rbarts | daleart.play normal %mytopic $2
alias sn { set %ran $rand(1,16)
  rbarts
  if (%ran == 16) %spd = 1500
  else { %spd = 1000 } 
  %mrPrev.cmnd = /say
  .play -ctsn [ $+ [ %ran ] ] dale_art.txt %spd
}
alias ��� rbarts | daleart.play normal $1 $2
alias DAprev {
  if (%DA.Prev == $null) || (%DA.Prev == ON) {
    return ( $+ ON $+ )
  }
  return ( $+ OFF $+ )
}
alias DA.prev {
  if ($1 == ON) {
    %DA.prev = ON
  }
  if ($1 == OFF) {
    %DA.prev = OFF
  }
}
menu nicklist,query {
  .-
  Dale's Art
  .Preview window $DAprev
  ..Turn it On:/DA.prev On
  ..Turn it Off:/DA.prev Off
  .-
  .Greets
  ..Bye
  ...ByeCh: ��� dbye1 800
  ..Hello
  ...Hello1: ���1 1 800
  ...Hello2: ���1 2 800
  ...Hello3: ���1 3 800
  ...Hello4: ���1 4 800
  ...Hello5: ���1 5 700
  ...Hello6: ���1 6 700
  ...Hello7: ���1 7 700
  ...Hello8: ���1 16 700
  ...HelloButter: ���1 13 2200
  ...HelloSun: ���1 14 2200
  ...Hi: ���1 8 800
  ...Hi2: ���1 9 800
  ...Hi3: ���1 10 800
  ...Hi4: ���1 11 800
  ...HiPelican: ���1 12 800
  ...HiHorses: ���1 15 800
  ...HappyBeeHere: ��� happyb 900
  ...Look Who:���  lookw 700
  ..Night
  ...Night: ��� dnight1 700
  ...NightCastle: ��� dnight2 1000
  ...NightCastleCh: ��� dnight3 1000
  ..Welcome To/Back
  ...Flooder: ��� flood 800
  ...WB1: ���2 1 500
  ...WB2: ���2 2 500
  ...WB3: ���2 3 500
  ...WB4: ���2 4 700
  ...WB5: ���2 5 700
  ...WelcomeHome:��� welcomeh 2000
  ...WelcomeToCh: ��� welcome 900
  .Hugs
  ..Beary Hug: ���3 9 800
  ..BHeart: ���3 10 900
  ..Big Hug: ���3 7 2300
  ..Bird: ���3 2 2700
  ..BunnyHug: ���3 5 1600
  ..HeartHug: ���3 8 2100
  ..HugMe: ���3 11 800
  ..HugsSpeak: ���3 6 1200
  ..LoveHugs: ���3 1 900
  ..Squeeze: ���3 4 800
  ..SingleH: ���3 3 1300
  .Nicks
  ..Small
  ...Random /sn: sn
  ...HeartN: ���4 13 700
  ...SNick1: ���4 1 1000
  ...SNick2: ���4 2 1000
  ...SNick3: ���4 3 800
  ...SNick4: ���4 4 600
  ...SNick5: ���4 5 600
  ...SNick6: ���4 6 800
  ...SNick7: ���4 7 600
  ...SNick8: ���4 8 600
  ...SNick9: ���4 9 600
  ...SNick10: ���4 10 600
  ...SNick11: ���4 11 700
  ...SNick12: ���4 12 700
  ...SNick13: ���4 13 700
  ...SNick14: ���4 14 700
  ...SNick15: ���4 15 1000
  ...SNick16: ���4 16 1500
  ..Large
  ...Nick1: ���5 1 1200
  ...Nick2: ���5 2 1500
  ...Nick4: ���5 4 1500
  ...Nick5: ���5 5 1500
  ...Nick6: ���5 6 1500
  ...Nick7: ���5 7 1500
  ...Nick8: ���5 8 1500
  ...Nick10: ���5 10 1500
  ...Nick11: ���5 11 1500
  ...Nick12: ���5 12 1500
  ...Nick13: ���5 13 2000
  ...Nick14: ���5 14 1300
  ...Nick15: ���5 15 1500
  ..Multi
  ...MNick1: set %many 8 | ��� mnick1 1500
  .Pics
  ..A-I
  ...A Couple: ��� acouple 1400
  ...BearHug: ��� bearhug 2400
  ...Castle: ��� castle 2800
  ...Dream: ��� dream 2300
  ...Dolphins: ��� dolphin1 2300
  ...Flirt: ��� flirt 2300
  ...Friend: ��� friend 900
  ...Friends: ��� friends 1200
  ...Go Baby: ��� gobaby 700
  ...Heart: ��� heart 900
  ...HeartHug: ��� hearth 2300
  ...IAm: ��� iam 1500
  ...ILoveYou: ��� iloveu 1000
  ..L-Y
  ...LipChips: ��� lipchips 1600
  ...LoveHeart: ��� loveheart 2300
  ...LoveIs: ��� loveis 1000
  ...Lucky: ��� lucky 2400
  ...Paint: ��� paint 1000
  ...ReadyBaby: ��� ready 1400
  ...RealLife: ��� reall 1400
  ...Silent: ��� silent 2000
  ...SpillBeer: ��� spillb 1300
  ...Spring: ��� spring 2300
  ...TeasMe: ��� tease 1000
  ...Sunsets: ��� sunset 1500
  ...You'reToast: ��� yourt 1500
  .Holidays
  ..Valentines
  ...Greets
  ....BalloonVal: ���6 1 1500
  ....BeMy: ���6 8 1000
  ....BeMyVal: ���6 3 1000
  ....Breath: ���6 7 1000
  ....Dragon: ���6 13 700
  ....Glad: ���6 10 1500
  ....Hand Val: ���6 15 1500
  ....Happy Val: ���6 4 1500
  ....HorseMouth: ���6 18 1800

  ....HeartWings: ���6 20 1200
  ....Hrts&Flwrs: ���6 2 1500
  ....Love Val: ���6 5 900
  ....Puppy Val: ���6 14 1000
  ....Roses: ���6 19 1500
  ....Val Dog: ���6 12 1000
  ....Val Flowers: ���6 17 1700
  ....Val Leaves: ���6 16 1000
  ....Woof You: ���6 21 900
  ....You and Me: ���6 6 1000
  ....Yours: ���6 9 700
  ....YourHeart: ���6 11 2000
  ...Val Multi
  ....8Valentines: set %many 8 | ��� dvmulti2 2200
  ....14ValHugs: set %many 14 | ��� dvmulti1 2400
  ..St. Patrick's
  ...Balloon: ���7 6 1000
  ...Blarney: ���7 14 1200
  ...Clover: ���7 16 1200
  ...Get Lucky: ���7 11 1000
  ...GreenBeer: ���7 13 800
  ...HappyDays: ���7 4 1000
  ...HappySP: ���7 1 2000
  ...HelloSP: ���7 8 800
  ...IrishLuck: ���7 12 800
  ...IrishRU: ���7 9 800
  ...Kiss: ���7 3 800
  ...Luck: ���7 5 800
  ...LuckChannel: ���7 15 1900
  ...Lucky: ���7 10 800
  ...PotOfGold: ���7 2 2000
  ...StPatrick: ���7 7 800
  ..Easter
  ...Basket: ���8 3 1000
  ...Crosses: ���8 2 1700
  ...Happy Easter: ���8 1 1200
  ...PinkRabbit: ���8 5 1700
  ...Rabbit: ���8 4 900
  ..4th July
  ...4th Kids: ���9 3 1100
  ...Eagle: ���9 6 2000
  ...Freedom: ���9 2 2400
  ...Heart: ���9 8 1400
  ...Liberty: ���9 7 1400
  ...Plane: ���9 5 800
  ...Safe: ���9 1 1400
  ...USA 4th: ���9 4 1400
  ..Halloween
  ...Greets
  ....BeMyVamp: ���10 1 1500
  ....BiteMe: ���10 2 1500
  ....BooCh: ���10 3 2000
  ....BooScare: ���10 4 2000
  ....CatFence: ���10 5 2000
  ....EyesForYou: ���10 15 1700
  ....FunHallow: ���10 6 1700
  ....GameofLife: ���10 7 1700
  ....GotCandy: ���10 8 1700
  ....HHalloween: ���10 9 1400
  ....HappyHalloween: ���10 10 1700
  ....HappyPumpkin: ���10 11 1700
  ....Hide: ���10 12 1700
  ....Masks: ���10 13 1700
  ....Nine Loves: ���10 14 1700
  ....Scarecrow: ���10 16 2000
  ....Skull: ���10 17 1700
  ....Smiles: ���10 18 1700
  ....Spell: ���10 19 2000
  ....SpiritCh: ���10 20 2000
  ....Tweety: ���10 21 2000
  ....Wanna Neck: ���10 22 2000
  ....Wanted: ���10 23 2300
  ....Web: ���10 24 2300
  ...Halloween Multi
  ....8Skulls: set %many 4 | ��� dhmulti1 1500
  ..Christmas&NYear
  ...Christmas
  ....BearyXmas: ���11 7 2500
  ....Fireplace: ���11 10 1500
  ....HollyBell: ���11 14 1500
  ....HoHoHo: ���11 15 1900
  ....Lights: ���11 18 1700
  ....Love: ���11 8 2300
  ....MerryXmas: ���11 22 1700
  ....Magic: ���11 19 2500
  ....NorthPole: ���11 5 2300
  ....Ornament: ���11 20 1500
  ....Ornaments: ���11 1 1500
  ....Path: ���11 21 2000
  ....Peace: ���11 16 2000
  ....SeasonGreet: ���11 2 1500
  ....Snowman: ���11 12 1300
  ....Snowman2: ���11 17 900
  ....Tree: ���11 13 1400
  ....UnderTree: ���11 23 2000
  ....WelcomeCh: ���11 11 2400
  ....Wishes: ���11 6 2400
  ....XmasDogs: ���11 3 2000
  ....XmasHappens: ���11 9 2000
  ....XmasTree: ���11 4 2400
  ...Xmas Multi
  ....10SeasonG: set %many 10 | ��� dxmulti1 2400
  ...New Years
  ....2001Ch: ���12 6 1200
  ....Band: ���12 4 1000
  ....Bubbly: ���12 3 900
  ....HappyNYCh: ���12 1 1400
  ....PeaceLove: ���12 2 1000
  ....Rockin`: ���12 5 800
  .-
  .Extras
  ..Version /dale_art: dale_art
  ..Unload dale_art.mrc:
  ...Are you really sure you wanna do this?:
  ....Their is time to still back out:
  .....Ok, if you insist:
  ......Ok, gone:/unload -rs dale_art.mrc
  .Share/Sending 
  ..Send dale_art.mrc--> $snick(#,1) : set %mrbfile dale_art | rbnick3 | dcc send %nick %mrbfile $+ .mrc %mrbfile $+ .txt | msg %nick Place both the %mrbfile .txt and .mrc in \mirc\ | msg %nick type--> 4 /load -rs %mrbfile $+ .mrc
  ..Offer dale^art /dale_offer:/dale_offer
}
