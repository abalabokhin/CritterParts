BEGIN RLSildah

IF ~Global("RLSildah","GLOBAL",0)~ THEN BEGIN RLSildah

SAY @0
 
= @1

++ @2 + sild.2

++ @3 + sild.7

++ @4 + sild.2

++ @5 + sild.2

++ @6 + sild.8

END

IF ~~ THEN BEGIN sild.7

SAY @7

++ @8 + sild.2

END

IF ~~ THEN BEGIN sild.8

SAY @9

IF ~~ THEN DO ~SetGlobal("RLSildah","GLOBAL",3)  
 ActionOverride("RLHenry",Enemy()) ActionOverride("RLGertru",Enemy()) ActionOverride("RLDearie",Enemy())
 ActionOverride("RLSamuel",Enemy()) ActionOverride("RLDaisy",Enemy()) ActionOverride("RLCaleb",Enemy()) Enemy()~
 
EXIT

END

IF ~~ THEN BEGIN sild.2

SAY @10

++ @11 + sild.3

++ @12 + sild.3

++ @13 + sild.3

++ @14 + sild.3

END

IF ~~ THEN BEGIN sild.3

SAY @15

++ @16 + sild.4

++ @17 + sild.4

++ @18 + sild.5

END

IF ~~ THEN BEGIN sild.4

SAY @19 IF ~~ + sild.5 

END

IF ~~ THEN BEGIN sild.5

SAY @20
 
= @21

++ @22 + sild.9

++ @23 + sild.9

++ @24 + sild.9

++ @25 + sild.8

END

IF ~~ THEN BEGIN sild.9

SAY @26 

= @27

++ @28 + sild.11

++ @29 + sild.11

++ @30 

DO ~SetGlobal("RLSildah", "GLOBAL", 2)~ EXIT

END

IF ~~ THEN BEGIN sild.11

SAY @31
 
= @32
 
= @33

++ @34 + sild.14

END

IF ~~ THEN BEGIN sild.14

SAY @35 

= @36
 
= @37

IF ~~ THEN DO ~SetGlobal("RLSildah", "GLOBAL", 1)~ 

EXIT

END

IF ~Global("RLSildah", "GLOBAL", 2)~ THEN BEGIN RLSildaTicked

SAY @38

IF ~~ EXIT

END

IF ~Global("RLSildah", "GLOBAL", 1) PartyHasItem("RLSpVeB")~ THEN BEGIN RLSildahBody

SAY @39 

= @40

IF ~~ DO ~CreateItem("POTN20",1,1,0) GiveItem("POTN20",LastTalkedToBy(Myself)) TakePartyItemNum("RLSpVeB",1)
SetGlobal("RLSildahLikes", "GLOBAL", 1) SetGlobal("RLSpVeB", "GLOBAL", 1)~

EXIT

END

IF ~Global("RLSildah", "GLOBAL", 1)PartyHasItem("RLSpVen")~ THEN BEGIN RLSildahVenom

SAY @41

++ @42 DO ~CreateItem("DART04",1,1,0) GiveItem("DART04",LastTalkedToBy(Myself)) TakePartyItemNum("RLSpVen",1)~ EXIT 

++ @43 DO ~CreateItem("AROW05",1,1,0) GiveItem("AROW05",LastTalkedToBy(Myself)) TakePartyItemNum("RLSpVen",1)~ EXIT 

++ @44 DO ~CreateItem("BOLT04",1,1,0) GiveItem("Bolt04",LastTalkedToBy(Myself)) TakePartyItemNum("RLSpVen",1)~ EXIT 


END


IF ~Global("RLSildah", "GLOBAL", 1)~ THEN BEGIN RLSildahNone

SAY @45

IF ~~ EXIT

END




