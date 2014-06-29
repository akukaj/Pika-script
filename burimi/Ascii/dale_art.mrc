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
    echo -a 3,1 Ö13¿3Ö 0,3sending %mrbfile to $nick
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
alias dale_artoffer {
  mrboffer2002 | set %mrbfile dale_art
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

alias Ðà£ë1 set %mytopic hi $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë2 set %mytopic wb $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë3 set %mytopic hug $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë4 set %mytopic sn $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë5 set %mytopic nick $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë6 set %mytopic dv $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë7 set %mytopic dsp $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë8 set %mytopic deast $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë9 set %mytopic d4th $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë10 set %mytopic dhallo $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë11 set %mytopic dxmas $+ $1 | rbarts | daleart.play normal %mytopic $2
alias Ðà£ë12 set %mytopic dny $+ $1 | rbarts | daleart.play normal %mytopic $2
alias sn { set %ran $rand(1,16)
  rbarts
  if (%ran == 16) %spd = 1500
  else { %spd = 1000 } 
  %mrPrev.cmnd = /say
  .play -ctsn [ $+ [ %ran ] ] dale_art.txt %spd
}
alias Ðà£ë rbarts | daleart.play normal $1 $2
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
  ...ByeCh: Ðà£ë dbye1 800
  ..Hello
  ...Hello1: Ðà£ë1 1 800
  ...Hello2: Ðà£ë1 2 800
  ...Hello3: Ðà£ë1 3 800
  ...Hello4: Ðà£ë1 4 800
  ...Hello5: Ðà£ë1 5 700
  ...Hello6: Ðà£ë1 6 700
  ...Hello7: Ðà£ë1 7 700
  ...Hello8: Ðà£ë1 16 700
  ...HelloButter: Ðà£ë1 13 2200
  ...HelloSun: Ðà£ë1 14 2200
  ...Hi: Ðà£ë1 8 800
  ...Hi2: Ðà£ë1 9 800
  ...Hi3: Ðà£ë1 10 800
  ...Hi4: Ðà£ë1 11 800
  ...HiPelican: Ðà£ë1 12 800
  ...HiHorses: Ðà£ë1 15 800
  ...HappyBeeHere: Ðà£ë happyb 900
  ...Look Who:Ðà£ë  lookw 700
  ..Night
  ...Night: Ðà£ë dnight1 700
  ...NightCastle: Ðà£ë dnight2 1000
  ...NightCastleCh: Ðà£ë dnight3 1000
  ..Welcome To/Back
  ...Flooder: Ðà£ë flood 800
  ...WB1: Ðà£ë2 1 500
  ...WB2: Ðà£ë2 2 500
  ...WB3: Ðà£ë2 3 500
  ...WB4: Ðà£ë2 4 700
  ...WB5: Ðà£ë2 5 700
  ...WelcomeHome:Ðà£ë welcomeh 2000
  ...WelcomeToCh: Ðà£ë welcome 900
  .Hugs
  ..Beary Hug: Ðà£ë3 9 800
  ..BHeart: Ðà£ë3 10 900
  ..Big Hug: Ðà£ë3 7 2300
  ..Bird: Ðà£ë3 2 2700
  ..BunnyHug: Ðà£ë3 5 1600
  ..HeartHug: Ðà£ë3 8 2100
  ..HugMe: Ðà£ë3 11 800
  ..HugsSpeak: Ðà£ë3 6 1200
  ..LoveHugs: Ðà£ë3 1 900
  ..Squeeze: Ðà£ë3 4 800
  ..SingleH: Ðà£ë3 3 1300
  .Nicks
  ..Small
  ...Random /sn: sn
  ...HeartN: Ðà£ë4 13 700
  ...SNick1: Ðà£ë4 1 1000
  ...SNick2: Ðà£ë4 2 1000
  ...SNick3: Ðà£ë4 3 800
  ...SNick4: Ðà£ë4 4 600
  ...SNick5: Ðà£ë4 5 600
  ...SNick6: Ðà£ë4 6 800
  ...SNick7: Ðà£ë4 7 600
  ...SNick8: Ðà£ë4 8 600
  ...SNick9: Ðà£ë4 9 600
  ...SNick10: Ðà£ë4 10 600
  ...SNick11: Ðà£ë4 11 700
  ...SNick12: Ðà£ë4 12 700
  ...SNick13: Ðà£ë4 13 700
  ...SNick14: Ðà£ë4 14 700
  ...SNick15: Ðà£ë4 15 1000
  ...SNick16: Ðà£ë4 16 1500
  ..Large
  ...Nick1: Ðà£ë5 1 1200
  ...Nick2: Ðà£ë5 2 1500
  ...Nick4: Ðà£ë5 4 1500
  ...Nick5: Ðà£ë5 5 1500
  ...Nick6: Ðà£ë5 6 1500
  ...Nick7: Ðà£ë5 7 1500
  ...Nick8: Ðà£ë5 8 1500
  ...Nick10: Ðà£ë5 10 1500
  ...Nick11: Ðà£ë5 11 1500
  ...Nick12: Ðà£ë5 12 1500
  ...Nick13: Ðà£ë5 13 2000
  ...Nick14: Ðà£ë5 14 1300
  ...Nick15: Ðà£ë5 15 1500
  ..Multi
  ...MNick1: set %many 8 | Ðà£ë mnick1 1500
  .Pics
  ..A-I
  ...A Couple: Ðà£ë acouple 1400
  ...BearHug: Ðà£ë bearhug 2400
  ...Castle: Ðà£ë castle 2800
  ...Dream: Ðà£ë dream 2300
  ...Dolphins: Ðà£ë dolphin1 2300
  ...Flirt: Ðà£ë flirt 2300
  ...Friend: Ðà£ë friend 900
  ...Friends: Ðà£ë friends 1200
  ...Go Baby: Ðà£ë gobaby 700
  ...Heart: Ðà£ë heart 900
  ...HeartHug: Ðà£ë hearth 2300
  ...IAm: Ðà£ë iam 1500
  ...ILoveYou: Ðà£ë iloveu 1000
  ..L-Y
  ...LipChips: Ðà£ë lipchips 1600
  ...LoveHeart: Ðà£ë loveheart 2300
  ...LoveIs: Ðà£ë loveis 1000
  ...Lucky: Ðà£ë lucky 2400
  ...Paint: Ðà£ë paint 1000
  ...ReadyBaby: Ðà£ë ready 1400
  ...RealLife: Ðà£ë reall 1400
  ...Silent: Ðà£ë silent 2000
  ...SpillBeer: Ðà£ë spillb 1300
  ...Spring: Ðà£ë spring 2300
  ...TeasMe: Ðà£ë tease 1000
  ...Sunsets: Ðà£ë sunset 1500
  ...You'reToast: Ðà£ë yourt 1500
  .Holidays
  ..Valentines
  ...Greets
  ....BalloonVal: Ðà£ë6 1 1500
  ....BeMy: Ðà£ë6 8 1000
  ....BeMyVal: Ðà£ë6 3 1000
  ....Breath: Ðà£ë6 7 1000
  ....Dragon: Ðà£ë6 13 700
  ....Glad: Ðà£ë6 10 1500
  ....Hand Val: Ðà£ë6 15 1500
  ....Happy Val: Ðà£ë6 4 1500
  ....HorseMouth: Ðà£ë6 18 1800

  ....HeartWings: Ðà£ë6 20 1200
  ....Hrts&Flwrs: Ðà£ë6 2 1500
  ....Love Val: Ðà£ë6 5 900
  ....Puppy Val: Ðà£ë6 14 1000
  ....Roses: Ðà£ë6 19 1500
  ....Val Dog: Ðà£ë6 12 1000
  ....Val Flowers: Ðà£ë6 17 1700
  ....Val Leaves: Ðà£ë6 16 1000
  ....Woof You: Ðà£ë6 21 900
  ....You and Me: Ðà£ë6 6 1000
  ....Yours: Ðà£ë6 9 700
  ....YourHeart: Ðà£ë6 11 2000
  ...Val Multi
  ....8Valentines: set %many 8 | Ðà£ë dvmulti2 2200
  ....14ValHugs: set %many 14 | Ðà£ë dvmulti1 2400
  ..St. Patrick's
  ...Balloon: Ðà£ë7 6 1000
  ...Blarney: Ðà£ë7 14 1200
  ...Clover: Ðà£ë7 16 1200
  ...Get Lucky: Ðà£ë7 11 1000
  ...GreenBeer: Ðà£ë7 13 800
  ...HappyDays: Ðà£ë7 4 1000
  ...HappySP: Ðà£ë7 1 2000
  ...HelloSP: Ðà£ë7 8 800
  ...IrishLuck: Ðà£ë7 12 800
  ...IrishRU: Ðà£ë7 9 800
  ...Kiss: Ðà£ë7 3 800
  ...Luck: Ðà£ë7 5 800
  ...LuckChannel: Ðà£ë7 15 1900
  ...Lucky: Ðà£ë7 10 800
  ...PotOfGold: Ðà£ë7 2 2000
  ...StPatrick: Ðà£ë7 7 800
  ..Easter
  ...Basket: Ðà£ë8 3 1000
  ...Crosses: Ðà£ë8 2 1700
  ...Happy Easter: Ðà£ë8 1 1200
  ...PinkRabbit: Ðà£ë8 5 1700
  ...Rabbit: Ðà£ë8 4 900
  ..4th July
  ...4th Kids: Ðà£ë9 3 1100
  ...Eagle: Ðà£ë9 6 2000
  ...Freedom: Ðà£ë9 2 2400
  ...Heart: Ðà£ë9 8 1400
  ...Liberty: Ðà£ë9 7 1400
  ...Plane: Ðà£ë9 5 800
  ...Safe: Ðà£ë9 1 1400
  ...USA 4th: Ðà£ë9 4 1400
  ..Halloween
  ...Greets
  ....BeMyVamp: Ðà£ë10 1 1500
  ....BiteMe: Ðà£ë10 2 1500
  ....BooCh: Ðà£ë10 3 2000
  ....BooScare: Ðà£ë10 4 2000
  ....CatFence: Ðà£ë10 5 2000
  ....EyesForYou: Ðà£ë10 15 1700
  ....FunHallow: Ðà£ë10 6 1700
  ....GameofLife: Ðà£ë10 7 1700
  ....GotCandy: Ðà£ë10 8 1700
  ....HHalloween: Ðà£ë10 9 1400
  ....HappyHalloween: Ðà£ë10 10 1700
  ....HappyPumpkin: Ðà£ë10 11 1700
  ....Hide: Ðà£ë10 12 1700
  ....Masks: Ðà£ë10 13 1700
  ....Nine Loves: Ðà£ë10 14 1700
  ....Scarecrow: Ðà£ë10 16 2000
  ....Skull: Ðà£ë10 17 1700
  ....Smiles: Ðà£ë10 18 1700
  ....Spell: Ðà£ë10 19 2000
  ....SpiritCh: Ðà£ë10 20 2000
  ....Tweety: Ðà£ë10 21 2000
  ....Wanna Neck: Ðà£ë10 22 2000
  ....Wanted: Ðà£ë10 23 2300
  ....Web: Ðà£ë10 24 2300
  ...Halloween Multi
  ....8Skulls: set %many 4 | Ðà£ë dhmulti1 1500
  ..Christmas&NYear
  ...Christmas
  ....BearyXmas: Ðà£ë11 7 2500
  ....Fireplace: Ðà£ë11 10 1500
  ....HollyBell: Ðà£ë11 14 1500
  ....HoHoHo: Ðà£ë11 15 1900
  ....Lights: Ðà£ë11 18 1700
  ....Love: Ðà£ë11 8 2300
  ....MerryXmas: Ðà£ë11 22 1700
  ....Magic: Ðà£ë11 19 2500
  ....NorthPole: Ðà£ë11 5 2300
  ....Ornament: Ðà£ë11 20 1500
  ....Ornaments: Ðà£ë11 1 1500
  ....Path: Ðà£ë11 21 2000
  ....Peace: Ðà£ë11 16 2000
  ....SeasonGreet: Ðà£ë11 2 1500
  ....Snowman: Ðà£ë11 12 1300
  ....Snowman2: Ðà£ë11 17 900
  ....Tree: Ðà£ë11 13 1400
  ....UnderTree: Ðà£ë11 23 2000
  ....WelcomeCh: Ðà£ë11 11 2400
  ....Wishes: Ðà£ë11 6 2400
  ....XmasDogs: Ðà£ë11 3 2000
  ....XmasHappens: Ðà£ë11 9 2000
  ....XmasTree: Ðà£ë11 4 2400
  ...Xmas Multi
  ....10SeasonG: set %many 10 | Ðà£ë dxmulti1 2400
  ...New Years
  ....2001Ch: Ðà£ë12 6 1200
  ....Band: Ðà£ë12 4 1000
  ....Bubbly: Ðà£ë12 3 900
  ....HappyNYCh: Ðà£ë12 1 1400
  ....PeaceLove: Ðà£ë12 2 1000
  ....Rockin`: Ðà£ë12 5 800
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
