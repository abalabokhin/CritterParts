BEGIN RLTobias

IF ~Global("RLTobias", "GLOBAL", 0)~ THEN BEGIN RLTobias

SAY @0

++ @1 + toby.1

++ @2 + toby.1

++ @3 + toby.1

++ @4 + toby.1

END

IF ~~ THEN BEGIN toby.1

SAY @5 

= @6 

= @7

++ @8 + toby.4

++ @9 + toby.5 

++ @10 + toby.6

++ @11 + toby.4

END

IF ~~ THEN BEGIN toby.4

SAY @12

++ @13 + toby.7

END

IF ~~ THEN BEGIN toby.5

SAY @14  

IF ~~ THEN DO ~SetGlobal("RLTobiasAccept", "GLOBAL", 2)SetGlobal("RLTobias", "GLOBAL", 1)EscapeAreaDestroy(1)RestParty()~

EXIT

END

IF ~~ THEN BEGIN toby.6

SAY @15

++ @16 + toby.4

++ @17  

DO ~SetGlobal("RLTobiasAccept", "GLOBAL", 3)SetGlobal("RLTobias", "GLOBAL", 1)EscapeAreaDestroy(1)RestParty()~EXIT

END

IF ~~ THEN BEGIN toby.7

SAY @18 

= @19 

= @20 

= @21 

= @22 

= @23 

= @24 

= @25

++ @26 + toby.16

++ @27 + toby.16

++ @28 + toby.17

++ @29 + toby.20

END

IF ~~ THEN BEGIN toby.16

SAY @30 

= @31

++ @32 + toby.18

++ @33 + toby.18

++ @34 + toby.20

END

IF ~~ THEN BEGIN toby.17

SAY @31

++ @32 + toby.18

++ @35 + toby.18

++ @34 + toby.20

END

IF ~~ THEN BEGIN toby.18

SAY @36 

= @37 IF ~~ + toby.21

END

IF ~~ THEN BEGIN toby.20

SAY @38 IF ~~ + toby.21

END


IF ~~ THEN BEGIN toby.21

SAY @39 IF ~~ + toby.22

END

IF ~~ THEN BEGIN toby.22

SAY @40

++ @41 + toby.23

++ @42 + toby.23

++ @43 + toby.23

END

IF ~~ THEN BEGIN toby.23

SAY @44 

= @45 

= @46

++ @47 + toby.26

END

IF ~~ THEN BEGIN toby.26

SAY @48 

= @49 

= @50 

= @51 

= @52 

= @53 

= @54  

IF ~~ THEN DO ~SetGlobal("RLTobiasAccept", "GLOBAL", 1)SetGlobal("RLTobias", "GLOBAL", 1)EscapeAreaDestroy(1)RestParty()~ 

EXIT

END

IF ~Global("RLCritterArmor","GLOBAL",1)Global("RLTobiasW","GLOBAL",0)~ THEN BEGIN RLTobiasW

SAY @55 IF ~~ + tobW.1

END

IF ~~ THEN BEGIN tobW.1

SAY @56

++ @57 + tobW.2

++ @58 + tobW.2

++ @59 + tobW.2

++ @60 + tobW.2

END

IF ~~ THEN BEGIN tobW.2

SAY @61 

= @62 

= @63 

= @64 

= @65

++ @66 + tobW.7

END

IF ~~ THEN BEGIN tobW.7

SAY @67

++ @68 + tobW.9

++ @69 + tobW.9

++ @70 + tobW.8

END

IF ~~ THEN BEGIN tobW.8

SAY @71

++ @72 

DO ~SetGlobal("RLCritterArmor","GLOBAL",4)EscapeAreaDestroy(1)~

EXIT

END

IF ~~ THEN BEGIN tobW.9

SAY @73 

= @74 

= @75

++ @76

DO ~SetGlobal("RLCritterArmor","GLOBAL",2)SetGlobal("RLTobiasW","GLOBAL",1)CreateItem("RLToBody",1,1,0)GiveItem("RLToBody",LastTalkedToBy(Myself))EscapeAreaDestroy(1)RestParty()~

EXIT

++ @77

DO ~SetGlobal("RLCritterArmor","GLOBAL",2)SetGlobal("RLTobiasW","GLOBAL",1)CreateItem("RLToBody",1,1,0)GiveItem("RLToBody",LastTalkedToBy(Myself))EscapeAreaDestroy(1)RestParty()~

EXIT

++ @78

DO ~SetGlobal("RLCritterArmor","GLOBAL",2)SetGlobal("RLTobiasW","GLOBAL",1)CreateItem("RLToBody",1,1,0)GiveItem("RLToBody",LastTalkedToBy(Myself))EscapeAreaDestroy(1)RestParty()~

EXIT

END

