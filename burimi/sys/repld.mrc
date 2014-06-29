dialog alter {
  title "Replace Text"
  size -1 -1 500 310
  button "OK",3, 430 275 50 25,OK
  button "Default",163, 320 275 90 25

  tab "Replace Text",99, 10 10 480 260

  text "Words to use within text",100, 50 40 150 13, tab 99
  text "1.",101, 25 60 13 18, tab 99
  text "2.",102, 25 80 13 18, tab 99
  text "3.",103, 25 100 13 18, tab 99
  text "4.",104,25 120 13 18, tab 99
  text "5.",105,25 140 13 18, tab 99
  text "6.",106,25 160 13 18, tab 99
  text "7.",107,25 180 13 18, tab 99
  text "8.",108,25 200 13 18, tab 99
  text "9.",109,25 220 13 18, tab 99
  text "10.",110,25 240 14 18, tab 99


  edit %alter1,111, 45 57 143 19, autohs,tab 99
  edit %alter2,112, 45 77 143 19, autohs,tab 99
  edit %alter3,113, 45 97 143 19, autohs,tab 99
  edit %alter4,114, 45 117 143 19, autohs,tab 99
  edit %alter5,115, 45 137 143 19, autohs,tab 99
  edit %alter6,116, 45 157 143 19, autohs,tab 99
  edit %alter7,117, 45 177 143 19, autohs,tab 99
  edit %alter8,118, 45 197 143 19, autohs,tab 99
  edit %alter9,119, 45 217 143 19, autohs,tab 99
  edit %alter10,120, 45 237 143 19, autohs,tab 99

  text "Switches",121, 210 40 150 13,tab 99
  radio "On",122, 200 57 40 19, group,tab 99
  radio "Off",123, 240 57 40 19,tab 99
  radio "On",124, 200 77 40 19, group,tab 99
  radio "Off",125, 240 77 40 19,tab 99
  radio "On",126, 200 97 40 19, group,tab 99
  radio "Off",127, 240 97 40 19,tab 99
  radio "On",128, 200 117 40 19, group,tab 99
  radio "Off",129, 240 117 40 19,tab 99
  radio "On",130, 200 137 40 19, group,tab 99
  radio "Off",131, 240 137 40 19,tab 99
  radio "On",132, 200 157 40 19, group,tab 99
  radio "Off",133, 240 157 40 19,tab 99
  radio "On",134, 200 177 40 19, group,tab 99
  radio "Off",135, 240 177 40 19,tab 99
  radio "On",136, 200 197 40 19, group,tab 99
  radio "Off",137, 240 197 40 19,tab 99
  radio "On",138, 200 217 40 19, group,tab 99
  radio "Off",139, 240 217 40 19,tab 99
  radio "On",140, 200 237 40 19, group,tab 99
  radio "Off",141, 240 237 40 19,tab 99

  text "Refers To",142, 300 40 150 13,tab 99
  edit %alter1txt,143, 280  57 143 19, autohs,tab 99
  edit %alter2txt,144, 280 77 143 19, autohs,tab 99
  edit %alter3txt,145, 280 97 143 19, autohs,tab 99
  edit %alter4txt,146, 280 117 143 19, autohs,tab 99
  edit %alter5txt,147, 280 137 143 19, autohs,tab 99
  edit %alter6txt,148, 280 157 143 19, autohs,tab 99
  edit %alter7txt,149, 280 177 143 19, autohs,tab 99
  edit %alter8txt,150, 280 197 143 19, autohs,tab 99
  edit %alter9txt,151, 280 217 143 19, autohs,tab 99
  edit %alter10txt,152, 280 237 143 19, autohs,tab 99

  button "View",153, 435 57 50 18,tab 99
  button "View",154, 435 77 50 18,tab 99
  button "View",155, 435 97 50 18,tab 99
  button "View",156, 435 117 50 18,tab 99
  button "View",157, 435 137 50 18,tab 99
  button "View",158, 435 157 50 18,tab 99
  button "View",159, 435 177 50 18,tab 99
  button "View",160, 435 197 50 18,tab 99
  button "View",161, 435 217 50 18,tab 99
  button "View",162, 435 237 50 18,tab 99


}
on 1:dialog:alter:sclick:*: {
  if ( $did = 153 ) { if ( %alter1txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter1txt } }
  if ( $did = 154 ) { if ( %alter2txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter2txt } }
  if ( $did = 155 ) { if ( %alter3txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter3txt } }
  if ( $did = 156 ) { if ( %alter4txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter4txt } }
  if ( $did = 157 ) { if ( %alter5txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter5txt } }
  if ( $did = 158 ) { if ( %alter6txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter6txt } }
  if ( $did = 159 ) { if ( %alter7txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter7txt } }
  if ( $did = 160 ) { if ( %alter8txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter8txt } }
  if ( $did = 161 ) { if ( %alter9txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter9txt } }
  if ( $did = 162 ) { if ( %alter10txt != $null ) { window -do @View 200 200 350 45 | window -r @View | aline @View %alter10txt } }


  if ( $did = 122 ) { set %alter1s ON }
  if ( $did = 123 ) { set %alter1s OFF }
  if ( $did = 124 ) { set %alter2s ON }
  if ( $did = 125 ) { set %alter2s OFF }
  if ( $did = 126 ) { set %alter3s ON }
  if ( $did = 127 ) { set %alter3s OFF }
  if ( $did = 128 ) { set %alter4s ON }
  if ( $did = 129 ) { set %alter4s OFF }
  if ( $did = 130 ) { set %alter5s ON }
  if ( $did = 131 ) { set %alter5s OFF }
  if ( $did = 132 ) { set %alter6s ON }
  if ( $did = 133 ) { set %alter6s OFF }
  if ( $did = 134 ) { set %alter7s ON }
  if ( $did = 135 ) { set %alter7s OFF }
  if ( $did = 136 ) { set %alter8s ON }
  if ( $did = 137 ) { set %alter8s OFF }
  if ( $did = 138 ) { set %alter9s ON }
  if ( $did = 139 ) { set %alter9s OFF }
  if ( $did = 140 ) { set %alter10s ON }
  if ( $did = 141 ) { set %alter10s OFF }

  if ( $did = 163 ) { defalter }
}
on 1:dialog:alter:init:0: {
  if ( %alter1s = ON ) { did -c alter 122 }
  else { did -c alter 123 }
  if ( %alter2s = ON ) { did -c alter 124 }
  else { did -c alter 125 }
  if ( %alter3s = ON ) { did -c alter 126 }
  else { did -c alter 127 }
  if ( %alter4s = ON ) { did -c alter 128 }
  else { did -c alter 129 }
  if ( %alter5s = ON ) { did -c alter 130 }
  else { did -c alter 131 }
  if ( %alter6s = ON ) { did -c alter 132 }
  else { did -c alter 133 }
  if ( %alter7s = ON ) { did -c alter 134 }
  else { did -c alter 135 }
  if ( %alter8s = ON ) { did -c alter 136 }
  else { did -c alter 137 }
  if ( %alter9s = ON ) { did -c alter 138 }
  else { did -c alter 139 }
  if ( %alter10s = ON ) { did -c alter 140 }
  else { did -c alter 141 }
}
on 1:dialog:alter:edit:*: {
  if ( $did = 111 ) { set %alter1 $did(111).text }
  if ( $did = 112 ) { set %alter2 $did(112).text }
  if ( $did = 113 ) { set %alter3 $did(113).text }
  if ( $did = 114 ) { set %alter4 $did(114).text }
  if ( $did = 115 ) { set %alter5 $did(115).text }
  if ( $did = 116 ) { set %alter6 $did(116).text }
  if ( $did = 117 ) { set %alter7 $did(117).text }
  if ( $did = 118 ) { set %alter8 $did(118).text }
  if ( $did = 119 ) { set %alter9 $did(119).text }
  if ( $did = 120 ) { set %alter10 $did(120).text }


  if ( $did = 143 ) { set %alter1txt $did(143).text }
  if ( $did = 144 ) { set %alter2txt $did(144).text }
  if ( $did = 145 ) { set %alter3txt $did(145).text }
  if ( $did = 146 ) { set %alter4txt $did(146).text }
  if ( $did = 147 ) { set %alter5txt $did(147).text }
  if ( $did = 148 ) { set %alter6txt $did(148).text }
  if ( $did = 149 ) { set %alter7txt $did(149).text }
  if ( $did = 150 ) { set %alter8txt $did(150).text }
  if ( $did = 151 ) { set %alter9txt $did(151).text }
  if ( $did = 152 ) { set %alter10txt $did(152).text }

}


alias defalter {

  set %alter10s ON
  set %alter1s ON
  set %alter9s ON
  set %alter8s ON
  set %alter7s ON
  set %alter6s ON
  set %alter5s ON
  set %alter4s ON
  set %alter3s ON
  set %alter2s ON
  set %alter1 ???
  set %alter1txt 2?4¿5?4¿5?4¿5?
  set %alter2 :D
  set %alter2txt :D
  set %alter3 :S
  set %alter8 ha
  set %alter8txt hahahahahahahahahaha oooo diqa :-)
  set %alter9 :-)
  set %alter9txt :-))))
  set %alter10 :P
  set %alter10txt :p
  set %alter3txt :S
  set %alter4 email
  set %alter4txt E-mail: psyking@msn.com
  set %alter5 he
  set %alter5txt loool :)
  set %alter6 Aop
  set %alter6txt Aop Vetem Permes E-Mail 4I1chat4@1rinialive.4e1u
  set %alter7 ?
  set %alter7txt ?¿?
  /dialog -x alter

}
