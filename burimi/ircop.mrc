; ********************************************************
; ***      IRCop Script [Version 1.0] by RiniChat      ***
; ***   If ya need help with this script, come to      ***
; ***         www.proxyblind.org/phpBB2/               ***
; ***  This is the first version, so expect updates.   ***
; ********************************************************

on *:load:{
  if ($version >= 5.90) {
    rsicload
    echo -a Successfully Loaded IRCop Script [Version 1.0]
    echo -a To open, use Right-Click Pop-ups or type /ircop in any window.
  }
  if ($version < 5.8) { 
    echo -a Your mIRC is too old, IRCop only works with mIRC 5.9 or later.
    unload -rs $script
  } 
}

menu channel,status,nicklist,menubar,query {
  -
  IRCOP
  .Run IRCop: /ircop
  .Look for Updates: /run http://proxyblind.org 
  .Advertise: /amsg 7,5 $me përdorë 7,5 » RL-OP S©®|pT « 7,5 (IRCop-Version 1.0) përpunuar nga Stafi RIniaLive.  Shkarkoje te http://www.RiniaLive.Eu 
  -
}
; Aliases
alias IRCop { dialog -mo IRCoper IRCoper }
alias serverhasher { dialog -mo serverhash serverhash }
alias serverconnecter { dialog -mo serverconnect serverconnect }
alias serverakiller { dialog -mo serverakill serverakill }
alias serversquiter { dialog -mo serversquit serversquit }

; Main Menu System
dialog IRCoper {
  title "IRCop Helper by -=OdaChat=-"
  option dbu
  size -1 -1 112 100

  box "User Action",1,1 3 55 42
  button "Kill User", 2,4 11 51 8
  button "KLine User", 3,4 19 51 8
  button "UnKLine User", 4,4 27 51 8
  button "ZLine", 5,4 35 51 8

  box "Message IRCop",6,1 45 55 42
  button "WallOps", 7,4 53 51 8
  button "LocOps", 8,4 61 51 8
  button "GlobOps", 9,4 69 51 8
  button "ChatOps", 10,4 77 51 8

  box "Server Related", 11,57 3 52 42
  button "Rehash", 12,58 11 51 8
  button "Connect", 13,58 19 51 8
  button "Squit", 14,58 27 51 8
  button "Restart", 15,58 35 51 8

  box "Operserv", 16,57 45 52 42
  button "Global Message", 17,58 53 51 8
  button "Chg Channel Mode", 18,58 61 51 8
  button "Kick User", 19,58 69 51 8
  button "Akill (Mask)", 20,58 77 51 8
  button "Close", 21,4 90 105 8,cancel
}

on *:dialog:IRCoper:sclick:*:{
  if ($did == 2) { /echo 5[2INFO5]2: Disconnects user <nick> from the IRC server he/she is connected to with reason. | /kill $$?="Enter User" $$?="Enter Reason" }
  if ($did == 3) { /echo 5[2INFO5]2: Adds a KLINE to the ircd.conf or klines.conf file which will ban the specified user from using that server. | /kline $$?="Enter Kline Time" $$?="Enter Nick/User Host" $$?="Enter Reason" }
  if ($did == 4) { /echo 5[2INFO5]2: Will attempt to unkline the given <user@host> | /unkline $$?="Enter user@host" }
  if ($did == 5) { /echo 5[2INFO5]2: Adds a ZLINE to the ircd.conf or klines.conf file which will deny any connections from the IP address of the banned client. | /zline $$?="Enter Nick/IP" $$?="Enter Reason" }
  if ($did == 7) { /echo 5[2INFO5]2: Server sent wallops go to all users who are umode +w, oper or not. | /wallops $$?="Enter Message" }
  if ($did == 8) { /echo 5[2INFO5]2: Sends an LOCOPS message of <message> to all opers on local server who are umode +g | /locops $$?="Enter Message" }
  if ($did == 9) { /echo 5[2INFO5]2: Sends an GLOBOPS message of <message> to all opers on the network who are umode +g | /globops $$?="Enter Message" }
  if ($did == 10) { /echo 5[2INFO5]2: Sends an CHATOPS message of <message> to all opers on the network who are umode +b | /chatops $$?="Enter Message" }
  if ($did == 12) { /echo 5[2INFO5]2: Rehash's Server | /serverhasher }
  if ($did == 13) { /echo 5[2INFO5]2: Connects Server(s) | /serverconnecter }
  if ($did == 14) { /echo 5[2INFO5]2: Squits Server(s) | /serversquiter }
  if ($did == 15) { /echo 5[2INFO5]2: Restarts the Server (Password May be Required). | /restart $?="Enter Password" }
  if ($did == 17) { /echo 5[2INFO5]2: Allows IRCops to send messages to all users on the network. | /.msg OperServ GLOBAL $?="Enter Message" }
  if ($did == 18) { /echo 5[2INFO5]2: Allows Services operators to set channel modes for any channel. | /.msg OperServ MODE $?="Enter Channel (e.g #Chat)" $$?="Enter Modes (e.g +tn)" }
  if ($did == 19) { /echo 5[2INFO5]2: Allows IRCops to kick a user from any channel. | /.msg OperServ KICK $?="Enter Channel (e.g #Chat)" $$?="Enter User/Nick" $$?="Enter Reason" }
  if ($did == 20) { /echo 5[2INFO5]2: Allows Services operators to manipulate the autokill (AKILL) list.  If a user matching an AKILL mask attempts to connect, Services will issue a KILL for that user and, on supported  server types, will instruct all servers to add a ban (K-line) for the mask which the user matched. | /serverakiller }
  if ($did == 21) { /dialog -x IRCoper }
}

; Rehash Menu System
dialog serverhash {
  title "Rehasher"
  option dbu
  size -1 -1 58 70

  box "Server Rehasher",1,1 3 56 66
  button "Rehash IRCD", 2,4 11 51 8,default
  button "DNS", 3,4 19 51 8
  button "Temp KLines", 4,4 27 51 8
  button "Del Excess Memory", 5,4 35 51 8
  button "MOTD", 6,4 43 51 8
  button "Clears Throttles", 7,4 51 51 8
  button "- BACK -", 8,4 59 51 8,cancel
}

on *:dialog:serverhash:sclick:*:{
  if ($did == 2) { /rehash | /echo 5[2 $server is rehashing 5]2: Re-reading ircd.conf file }
  if ($did == 3) { /rehash DNS | /echo 5[2 $server is rehashing 5]2: Re-reading /etc/resolv.conf file }
  if ($did == 4) { /rehash TKLINES | /echo 5[2 $server is rehashing 5]2: Clearing Temp Klines }
  if ($did == 5) { /rehash GC | /echo 5[2 $server is rehashing 5]2: Collecting Excessive Memory }
  if ($did == 6) { /rehash MOTD | /echo 5[2 $server is rehashing 5]2: Re-reading MOTD file }
  if ($did == 7) { /rehash THROTTLES | /echo 5[2 $server is rehashing 5]2: Clearing Connection Throttles }
  if ($did == 8) { /dialog -x serverhash }
}

; Connect Menu System
dialog serverconnect {
  title "IRCop SubMenu"
  option dbu
  size -1 -1 100 105

  box "Connect Split Servers",1,5 3 90 59
  text "Server [A]:",2,7 11 51 10
  edit $server,3,7 19 51 10,autohs
  text "Server [B]:",4,7 30 51 10
  edit $network,5,7 38 51 10,autohs
  text "Port:                    (Default)",6,25 50 81 10
  edit "6667",7,38 50 20 9
  button "Connect",8,62 19 30 10,default
  button "BACK", 9,62 38 30 10,cancel

  box "Description:",10,5 63 90 40
  text "Server [A] is the server that tries to connect to Server [B]",11,6 69 99 20
  text "Server [B] is the server you wanna connect to.",12,6 84 99 20
} 

on *:dialog:serverconnect:sclick:*:{
  if ($did == 8) { /echo 5[2INFO5]2: Trying to connect $did(serverconnect,5) with $did(serverconnect,3) using port: $did(serverconnect,7) | /connect $did(serverconnect,5) $did(serverconnect,7) $did(serverconnect,3) }
  if ($did == 9) { /dialog -x serverconnect }
}

; AKILL Menu System
dialog serverakill {
  title "IRCop SubMenu"
  option dbu
  size -1 -1 100 165

  box "AKill Menu",1,5 3 92 65
  text "AKill Mask:",2,9 11 51 10
  edit "",3,7 19 51 10,autohs
  text "Time (Expiry):",4,9 30 51 10
  edit "+30m",5,7 37 51 10,autohs
  text "Reason:",6,9 48 51 10
  edit $me Says So,7,7 54 51 10,autohs

  button "Add",8,62 19 30 10
  button "Delete",9,62 37 30 10
  button "BACK",10,62 54 30 10

  box "Other Commands",11,5 68 92 43
  text "AKill Mask:",12,9 76 51 10
  edit "",13,7 84 51 10,autohs
  button "List",14,62 79 30 10
  button "View",15,62 89 30 10
  button "Count",16,62 99 30 10
  text "Does not use Mask <--",17,6 99 55 10

  box "Hints: (Expiry)",18,5 115 92 45
  text "+d [days] e.g +2d = 2 days",19,6 122 99 20
  text "+h [hours] e.g +12h = 12 hours",20,6 129 99 20
  text "+m [minutes] e.g +30m = 30 minutes",21,6 136 99 20
  text "Note: Combinations do not work!",22,6 143 99 20
  text "(e.g +1h30m)",23,21 150 99 20
} 

on *:dialog:serverakill:sclick:*:{
  if ($did == 8) { /echo 5[2INFO5]2: Adding akill for $did(serverakill,3) with time limit: $did(serverakill,5) with Reason: $did(serverakill,7) | /.msg operserv akill add $did(serverakill,5) $did(serverakill,3) $did(serverakill,7) }
  if ($did == 9) { /echo 5[2INFO5]2: Removing akill for $did(serverakill,3) | /.msg operserv akill del $did(serverakill,3) }
  if ($did == 10) { /dialog -x serverakill }
  if ($did == 14) { /echo 5[2INFO5]2: Akill List | /.msg operserv akill list $did(serverakill,13) }
  if ($did == 15) { /echo 5[2INFO5]2: Akill View | /.msg operserv akill view $did(serverakill,13) }
  if ($did == 16) { /echo 5[2INFO5]2: Akill Count | /.msg operserv akill count }
}

; Squit Menu System
dialog serversquit {
  title "IRCop SubMenu"
  option dbu
  size -1 -1 100 80

  box "Squit Server(s)",1,5 3 90 49
  text "Server:",2,7 11 51 10
  edit $network,3,7 19 51 10,autohs
  text "Reason:",4,7 30 51 10
  edit "Reconfiguration",5,7 38 51 10,autohs
  button "Squit",8,62 19 30 10,default
  button "BACK", 9,62 38 30 10,cancel

  box "Description:",10,5 53 90 22
  text "Splits <server> away from your side",11,6 59 99 20
  text "of the net with a <reason>",12,6 65 99 20
} 

on *:dialog:serversquit:sclick:*:{
  if ($did == 8) { /echo 5[2INFO5]2: Squit server: $did(serversquit,3) with Reason: $did(serversquit,5) | /squit $did(serversquit,3) $did(serversquit,5) }
  if ($did == 9) { /dialog -x serversquit }
}
