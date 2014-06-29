;IrcOp Scanner (ircop-scan.mrc)
;v1.4
;Written by AlbaServers


;;; Groups
#ircop.netscan off
raw 352:*:{ haltdef | did -a $ircop.scanner 11 $6 }
raw 315:*:{ haltdef | .disable #ircop.netscan }
#ircop.netscan end
#ircop.chanscan off
raw 352:*:{ haltdef | if (* isin $7) did -a $ircop.scanner 12 $6 }
raw 315:*:{ haltdef | .disable #ircop.chanscan }
#ircop.netscan end


;;; Menu Addons
menu Status,Channel,Nicklist,Query {
  Irc&Op Scanner...:Ircop-scan
}
menu Menubar {
  Irc&Op Scanner
  .&Scan...:Ircop-scan
  .-
  .&UnInstall: {
    if ($?!="A je i sigurt që don ta DeInstalosh IrcOp Scanner v1.4?" == $false) { halt }
    else { unset %ircop.* | echo -s *** IrcOp Scanner v1.4 është Dienstaluar me sukses | .unload -rs " $+ $script $+ " }
  }
}


;;; Dialogs
Dialog IrcOp.scanner.dialog {
  Title "IrcOp Scanner v1.4 - RiniaChat"
  Size -1 -1 200 103
  Option DBU

  Button "Ok", 1, 3 89 30 12, Ok Default
  Button "Cancel", 2, 36 89 30 12, Cancel
  Text "IrcOp Scanner v1.4", 4, 147 92 60 10,

  Box "Networku", 5, 3 2 73 84,
  Box "Kanali", 6, 79 2 73 84,
  Box "Opcione", 7, 155 2 40 84,

  Button "Scan", 8, 25 73 30 10,
  Button "Scan", 9, 83 73 30 10,
  Button "Refresh", 19, 118 73 30 10,

  Combo 10, 83 60 66 100, Sort Drop

  list 11, 7 10 65 67, sort autovs autohs
  list 12, 83 10 65 54, sort autovs autohs

  Button "Query", 13, 160 11 30 10,
  Button "Notice", 14, 160 23 30 10,
  Button "CTCP", 15, 160 35 30 10,
  Button "Whois", 16, 160 47 30 10,
  Button "Ignore", 17, 160 59 30 10,
  Button "Notify", 18, 160 71 30 10,
}
Dialog IrcOp.ctcp.dialog {
  Title "IrcOp Scanner - CTCP"
  Size -1 -1 102 74
  Option DBU

  Button "Send", 1, 3 60 30 12, Ok Default
  Button "Cancel", 2, 36 60 30 12, Cancel

  Box "CTCPs", 4, 3 2 96 55,

  Radio "Ping", 5, 7 11 30 10,
  Radio "Time", 6, 7 22 30 10,
  Radio "Version", 7, 7 33 30 10,
  Radio "Other:", 8, 7 44 30 10,
  Edit "", 9, 39 44 56 10,
}


;;; Aliases
alias ircop-scan { dialog -m $ircop.scanner $ircop.scanner }
alias -l ircop.scanner { return ircop.scanner.dialog }
alias -l ircop.ctcp { return ircop.ctcp.dialog }
alias -l ircop.rechan { 
  did -r $ircop.scanner 10 1 | ircop.addchan | did -c $ircop.scanner 10 1 
  if ($did($ircop.scanner,10) ischan) { did -e $ircop.scanner 9 }
  else { did -b $ircop.scanner 9 }
}
alias -l ircop.scan { 
  if ($1 == net) { .enable #ircop.netscan | who 0 o }
  elseif ($1 == chan) { .enable #ircop.chanscan | who $did($ircop.scanner,10,$did($ircop.scanner,10).sel).text }
}
alias -l ircop.addchan {
  var %~ircop.channum = 0
  while (%~ircop.channum >= 0) {
    inc %~ircop.channum
    var %~ircop.chan = $chan(%~ircop.channum)
    if (%~ircop.chan == $null) { goto Break }
    did -a $ircop.scanner 10 %~ircop.chan
  }
  :Break
}


;;; Remote Events
on *:DIALOG:ircop.scanner.dialog:init:0:{ 
  did -b $ircop.scanner 4,13,14,15,16,17,18 
  if ($server) { ircop.addchan | did -c $ircop.scanner 10 1 }
  else { did -b $ircop.scanner 8,9,10,19 }
  if ($did(10,$did(10).sel) == $null) { did -b $ircop.scanner 9 }
}
on *:DIALOG:ircop.ctcp.dialog:Init:0:{ did -c $ircop.ctcp 5 | did -b $ircop.ctcp 9 }
on *:DIALOG:ircop.scanner.dialog:Sclick:*:{
  if ($did == 1) { $iif($dialog($ircop.ctcp),dialog -x $ircop.ctcp) | unset %~ircop.* }
  if ($did == 2) { $iif($dialog($ircop.ctcp),dialog -x $ircop.ctcp) | unset %~ircop.* }
  if ($did == 8) { did -r $ircop.scanner 11 | $ircop.scan(net) }
  if ($did == 9) { did -r $ircop.scanner 12 | $ircop.scan(chan) }
  if ($did == 11) { 
    did -e $ircop.scanner 13,14,15,16,17,18
    if ($address($did(11,$did(11).sel),0) isignore) { did -o $ircop.scanner 17 1 UnIgnore } 
    else { did -o $ircop.scanner 17 1 Ignore }
    if ($address($did(11,$did(11).sel),0) isnotify) { did -o $ircop.scanner 18 1 UnNotify }
    else { did -o $ircop.scanner 18 1 Notify }
  }
  if ($did == 13) { query $did(11,$did(11).sel) }
  if ($did == 14) { notice $did(11,$did(11).sel) $$?="Notice to send to user:" }
  if ($did == 15) { 
    if ($dialog($ircop.ctcp)) { dialog -v $ircop.ctcp $ircop.ctcp }
    else { %~ircop.ctcpnick = $did(11,$did(11).sel) | dialog -m $ircop.ctcp $ircop.ctcp }
  }
  if ($did == 16) { whois $did(11,$did(11).sel) }
  if ($did == 17) { 
    if ($address($did(11,$did(11).sel),0) isignore) { ignore -r $address($did(11,$did(11).sel),0) | did -o $ircop.scanner 17 1 Ignore }
    else { ignore -cktinp $address($did(11,$did(11).sel),0) | did -o $ircop.scanner 17 1 UnIgnore }
  }
  if ($did == 18) { 
    if ($address($did(11,$did(11).sel),0) isnotify) { notify -r $address($did(11,$did(11).sel),0) | did -o $ircop.scanner 18 1 Notify }
    else { notify $address($did(11,$did(11).sel),0) | did -o $ircop.scanner 18 1 UnNotify }
  }
  if ($did == 19) { ircop.rechan }
}
on *:DIALOG:ircop.scanner.dialog:DClick:*:{
  if ($did == 11) { if ($server) whois $did(11,$did(11).sel) }
  if ($did == 12) { if ($server) whois $did(12,$did(12).sel) }
}
on *:DIALOG:ircop.ctcp.dialog:Sclick:*:{
  if ($did == 1) { 
    if ($did(5).state) { ctcp %~ircop.ctcpnick Ping }
    if ($did(6).state) { ctcp %~ircop.ctcpnick Time }
    if ($did(7).state) { ctcp %~ircop.ctcpnick Version }
    if ($did(8).state) { 
      if ($did(9)) { ctcp %~ircop.ctcpnick $strip($did(9)) }
      else { echo $colour(Info) -s * /ctcp: insufficient parameters }
    }
    unset %~ircop.ctcpnick
  }
  if (($did == 5) || ($did == 6) || ($did == 7)) { did -b $ircop.ctcp 9 }
  if ($did == 8) { did -e $ircop.ctcp 9 }
}
on *:CONNECT:{ 
  if ($dialog($ircop.scanner)) { 
    did -e $ircop.scanner 8,10,19
    if ($did($ircop.scanner,10)) { did -e $ircop.scanner 9 }
  }
}
on *:DISCONNECT:{ 
  if ($dialog($ircop.scanner)) { did -b $ircop.scanner 8,9,10,19 }
}
on me:JOIN:#:{ ircop.rechan }
on me:PART:#:{ ircop.rechan }
on *:LOAD:{
  if ($bits < 32) { echo -s *** Error: This addon requires mIRC32 in order to run.  You are using mirc $+ $bits $+ . | unload -rs " $+ $script $+ " }
  if ($version < 5.72) { echo -s *** Error: This addon requires mIRC version 5.72 or later.  You are using $version $+ . | unload -rs " $+ $script $+ " }
  else { echo -s *** IrcOp v1.4 u ngarkua me sukses.  Referohu te ReadMe.txt per menyren e perdorimit te ketij addonit. }
}
