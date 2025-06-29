BEGIN RLMTaner

IF ~Global("RLMTanner", "GLOBAL", 0)~ THEN BEGIN RLMTanner

SAY @0

+ ~Global("RLTobiasAccept","GLOBAL",1)~ + @1 + MTan.1   

+ ~Global("RLTobiasAccept","GLOBAL",1)~ + @2 + MTan.1  

+ ~OR(2)Global("RLTobiasAccept","GLOBAL",3)Global("RLTobiasAccept","GLOBAL",2)~ + @3 + MTan.1   

+ ~OR(2)Global("RLTobiasAccept","GLOBAL",2)Global("RLTobiasAccept","GLOBAL",3)~ + @4 + MTan.1   
++ @5  

EXIT 

END

IF ~~ THEN BEGIN MTan.1

SAY @6 IF ~~ + MTan.2

END

IF ~~ THEN BEGIN MTan.2

SAY @7

+ ~Global("RLTobiasAccept","GLOBAL",1)~ + @8 + MTan.8   

+ ~Global("RLTobiasAccept","GLOBAL",1)~ + @9 + MTan.8  

+ ~Global("RLTobiasAccept","GLOBAL",2)~ + @10 + MTan.3  

+ ~OR(2)Global("RLTobiasAccept","GLOBAL",3)Global("RLTobiasAccept","GLOBAL",2)~ + @11 + MTan.8  

END

IF ~~ THEN BEGIN MTan.3

SAY @12

++ @13 + MTan.5

++ @14 + MTan.4

END

IF ~~ THEN BEGIN MTan.4

SAY @15

IF ~~ THEN DO ~SetGlobal("RLCritterArmor","GLOBAL",3)EscapeAreaDestroy(5)SetGlobal("RLMTanner", "GLOBAL", 1)~

EXIT

END

IF ~~ THEN BEGIN MTan.5

SAY @16

++ @17 + MTan.6

++ @18 + MTan.6

END

IF ~~ THEN BEGIN MTan.6

SAY @19 IF ~~ + MTan.7

END

IF ~~ THEN BEGIN MTan.7

SAY @20

IF ~~ THEN DO ~SetGlobal("RLCritterArmor","GLOBAL",1)SetGlobal("RLMTanner", "GLOBAL", 1)~

EXIT

END

IF ~~ THEN BEGIN MTan.8

SAY @21

++ @22 + MTan.9

++ @23 + MTan.9

END

IF ~~ THEN BEGIN MTan.9

SAY @24 

= @25 

= @26 

= @27

++ @28

DO ~SetGlobal("RLCritterArmor","GLOBAL",1)SetGlobal("RLMTanner", "GLOBAL", 1)~ EXIT

++ @29 

DO ~SetGlobal("RLCritterArmor","GLOBAL",1)SetGlobal("RLMTanner", "GLOBAL", 1)~ EXIT

END

IF ~OR(2)Global("RLCritterArmor","GLOBAL",1)Global("RLCritterArmor", "GLOBAL", 4)~ THEN BEGIN RLWaiting

SAY @30

IF ~~ THEN 

EXIT
 
END

IF ~Global("RLCritterArmor","GLOBAL",2)Global("RLTannerNotice", "GLOBAL", 0)PartyHasItem("RLToBody")~

THEN BEGIN RLNotice

SAY @31

IF ~~ THEN DO ~SetGlobal("RLTannerNotice", "GLOBAL", 1)~

EXIT 

END

CHAIN

IF ~Global("RLCritterArmor","GLOBAL",2)PartyHasItem("RLToBody")Global("RLTannerNotice", "GLOBAL", 1)~

THEN RLMTaner RLReturnTanner

@32 

== RLTobias 

@33 

== RLMTaner

@34 

DO ~SetGlobal("RLTobiasLeave","GLOBAL",1)~

= @35 

= @36

END

++ @37 EXTERN RLMTaner Rtan.5

++ @38 EXTERN RLMTaner Rtan.7

++ @39 EXTERN RLMTaner Rtan.7

CHAIN RLMTaner Rtan.5

@40 EXTERN RLMTaner Rtan.7

CHAIN

RLMTaner Rtan.7 @41 

= @42

= @43 

= @44

END 

++ @45 DO ~SetGlobal("RLCritterArmor 2bR","GLOBAL",1)~ EXTERN RLMTaner Rtan.11  

++ @46 DO ~SetGlobal("RLCritterArmor 2bB","GLOBAL",1)~ EXTERN RLMTaner Rtan.11
  
++ @47 DO ~SetGlobal("RLCritterArmor 2bL","GLOBAL",1)~ EXTERN RLMTaner Rtan.11  

CHAIN RLMTaner Rtan.11

@48

DO ~TakePartyItem("RLToBody")SetGlobal("SpawnRLTobias","GLOBAL",4)~

EXIT

APPEND RLMTaner

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")!PartyHasItem("RLBearM")Global("RLTannerTakePRMeat","GLOBAL",0)Global("RLTannerTakePRHide","GLOBAL",0)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR1

SAY @49

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")Global("RLTannerTakePRMeat","GLOBAL",1)Global("RLTannerTakePRHide","GLOBAL",0)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR2

SAY @51

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")Global("RLTannerTakePRMeat","GLOBAL",1)Global("RLTannerTakePRHide","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR3

SAY @52

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")Global("RLTannerTakePRMeat","GLOBAL",1)Global("RLTannerTakePRHide","GLOBAL",2)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR4

SAY @53

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")Global("RLTannerTakePRMeat","GLOBAL",1)Global("RLTannerTakePRHide","GLOBAL",3)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR5

SAY @54

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")Global("RLTannerTakePRMeat","GLOBAL",1)Global("RLTannerTakePRHide","GLOBAL",4)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR6

SAY @55

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")!PartyHasItem("RLBearM")Global("RLTannerTakePRMeat","GLOBAL",0)Global("RLTannerTakePRHide","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR7

SAY @56

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")!PartyHasItem("RLBearM")Global("RLTannerTakePRMeat","GLOBAL",0)Global("RLTannerTakePRHide","GLOBAL",2)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR8

SAY @57

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")!PartyHasItem("RLBearM")Global("RLTannerTakePRMeat","GLOBAL",0)Global("RLTannerTakePRHide","GLOBAL",3)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR9

SAY @58

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLWolfH")!PartyHasItem("RLBearM")Global("RLTannerTakePRMeat","GLOBAL",0)Global("RLTannerTakePRHide","GLOBAL",4)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR10

SAY @59

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearM")Global("RLTannerTakePRMeat","GLOBAL",0)Global("RLTannerTakePRHide","GLOBAL",5)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerWaitR11

SAY @60

++ @50

EXIT

END

IF ~Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLBearM")Global("RLTannerTakePRHide","GLOBAL",0)!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR1

SAY @61

IF ~~ DO ~TakePartyItemNum("RLBearM",1)SetGlobal("RLTannerTakePRMeat","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLBearM")Global("RLTannerTakePRHide","GLOBAL",1)!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR2

SAY @62

IF ~~ DO ~TakePartyItemNum("RLBearM",1)SetGlobal("RLTannerTakePRMeat","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLBearM")Global("RLTannerTakePRHide","GLOBAL",2)!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR3

SAY @63

IF ~~ DO ~TakePartyItemNum("RLBearM",1)SetGlobal("RLTannerTakePRMeat","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLBearM")Global("RLTannerTakePRHide","GLOBAL",3)!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR4

SAY @64

IF ~~ DO ~TakePartyItemNum("RLBearM",1)SetGlobal("RLTannerTakePRMeat","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLBearM")Global("RLTannerTakePRHide","GLOBAL",4)!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR5

SAY @65

IF ~~ DO ~TakePartyItemNum("RLBearM",1)SetGlobal("RLTannerTakePRMeat","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",0)Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR6

SAY @66

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",1)Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR7

SAY @67

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",2)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",2)Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR8

SAY @68

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",3)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",3)Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR9

SAY @69

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",4)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",4)Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR10

SAY @70

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",5)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",0)Global("RLTannerTakePRMeat","GLOBAL",1)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR11

SAY @62

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",1)Global("RLTannerTakePRMeat","GLOBAL",1)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR12

SAY @63

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",2)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",2)Global("RLTannerTakePRMeat","GLOBAL",1)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR13

SAY @64

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",3)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",3)Global("RLTannerTakePRMeat","GLOBAL",1)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR14

SAY @71

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",4)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",4)Global("RLTannerTakePRMeat","GLOBAL",1)PartyHasItem("RLWolfH")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR15

SAY @72

IF ~~ DO ~TakePartyItemNum("RLWolfH",1)SetGlobal("RLTannerTakePRHide","GLOBAL",5)~

EXIT

END

IF ~Global("RLTannerTakePRHide","GLOBAL",5)Global("RLTannerTakePRMeat","GLOBAL",0)PartyHasItem("RLBearM")!Global("RLTannerReady","GLOBAL",1)OR(2)Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLCritterArmor 2bR","GLOBAL",1)~ THEN BEGIN RLTannerTakePR16

SAY @72

IF ~~ DO ~TakePartyItemNum("RLBearM",1)SetGlobal("RLTannerTakePRMeat","GLOBAL",1)~

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")!PartyHasItem("RLAniBo")Global("RLTannerTakeBRBone","GLOBAL",0)Global("RLTannerTakeBRHide","GLOBAL",0)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB1

SAY @73

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")Global("RLTannerTakeBRBone","GLOBAL",1)Global("RLTannerTakeBRHide","GLOBAL",0)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB2

SAY @74

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")Global("RLTannerTakeBRBone","GLOBAL",1)Global("RLTannerTakeBRHide","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB3

SAY @75

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")Global("RLTannerTakeBRBone","GLOBAL",1)Global("RLTannerTakeBRHide","GLOBAL",2)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB4

SAY @76

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")Global("RLTannerTakeBRBone","GLOBAL",1)Global("RLTannerTakeBRHide","GLOBAL",3)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB5

SAY @77

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")Global("RLTannerTakeBRBone","GLOBAL",1)Global("RLTannerTakeBRHide","GLOBAL",4)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB6

SAY @78

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")!PartyHasItem("RLAniBo")Global("RLTannerTakeBRBone","GLOBAL",0)Global("RLTannerTakeBRHide","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB7

SAY @79

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")!PartyHasItem("RLAniBo")Global("RLTannerTakeBRBone","GLOBAL",0)Global("RLTannerTakeBRHide","GLOBAL",2)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB8

SAY @80

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")!PartyHasItem("RLAniBo")Global("RLTannerTakeBRBone","GLOBAL",0)Global("RLTannerTakeBRHide","GLOBAL",3)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB9

SAY @81

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLBearH")!PartyHasItem("RLAniBo")Global("RLTannerTakeBRBone","GLOBAL",0)Global("RLTannerTakeBRHide","GLOBAL",4)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB10

SAY @82

++ @50

EXIT

END

IF ~!Global("RLTannerReady","GLOBAL",1)!PartyHasItem("RLAniBo")Global("RLTannerTakeBRBone","GLOBAL",0)Global("RLTannerTakeBRHide","GLOBAL",5)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerWaitB11

SAY @83

++ @50

EXIT

END

IF ~Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLAniBo")Global("RLTannerTakeBRHide","GLOBAL",0)!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR1

SAY @84

IF ~~ DO ~TakePartyItemNum("RLAniBo",1)SetGlobal("RLTannerTakeBRBone","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLAniBo")Global("RLTannerTakeBRHide","GLOBAL",1)!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR2

SAY @85

IF ~~ DO ~TakePartyItemNum("RLAniBo",1)SetGlobal("RLTannerTakeBRBone","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLAniBo")Global("RLTannerTakeBRHide","GLOBAL",2)!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR3

SAY @86

IF ~~ DO ~TakePartyItemNum("RLAniBo",1)SetGlobal("RLTannerTakeBRBone","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLAniBo")Global("RLTannerTakeBRHide","GLOBAL",3)!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR4

SAY @87

IF ~~ DO ~TakePartyItemNum("RLAniBo",1)SetGlobal("RLTannerTakeBRBone","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLAniBo")Global("RLTannerTakeBRHide","GLOBAL",4)!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR5

SAY @88

IF ~~ DO ~TakePartyItemNum("RLAniBo",1)SetGlobal("RLTannerTakeBRBone","GLOBAL",1)~

EXIT

END


IF ~Global("RLTannerTakeBRHide","GLOBAL",0)Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR6

SAY @89

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",1)Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR7

SAY @90

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",2)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",2)Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR8

SAY @91

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",3)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",3)Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR9

SAY @92

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",4)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",4)Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR10

SAY @93

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",5)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",0)Global("RLTannerTakeBRBone","GLOBAL",1)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR11

SAY @85

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",1)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",1)Global("RLTannerTakeBRBone","GLOBAL",1)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR12

SAY @86

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",2)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",2)Global("RLTannerTakeBRBone","GLOBAL",1)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR13

SAY @87

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",3)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",3)Global("RLTannerTakeBRBone","GLOBAL",1)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR14

SAY @94

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",4)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",4)Global("RLTannerTakeBRBone","GLOBAL",1)PartyHasItem("RLBearH")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR15

SAY @72

IF ~~ DO ~TakePartyItemNum("RLBearH",1)SetGlobal("RLTannerTakeBRHide","GLOBAL",5)~

EXIT

END

IF ~Global("RLTannerTakeBRHide","GLOBAL",5)Global("RLTannerTakeBRBone","GLOBAL",0)PartyHasItem("RLAniBo")!Global("RLTannerReady","GLOBAL",1)Global("RLCritterArmor 2bB","GLOBAL",1)~ THEN BEGIN RLTannerTakeBR16

SAY @72

IF ~~ DO ~TakePartyItemNum("RLAniBo",1)SetGlobal("RLTannerTakeBRBone","GLOBAL",1)~

EXIT

END


IF ~Global("RLTannerReady","GLOBAL",1)~ THEN BEGIN RLTannerMake

SAY @95

IF ~~ DO ~SetGlobal("RLTannerWorks","GLOBAL",1)SetGlobal("RLTannerReady","GLOBAL",2)RealSetGlobalTimer("RLTanWorkingTimer","GLOBAL",900)~

EXIT

END

IF ~Global("RLTannerWorks","GLOBAL",1)!RealGlobalTimerExpired("RLTanWorkingTimer","GLOBAL")	~ THEN BEGIN RLTannerBusy

SAY @96

IF ~~ EXIT

END

IF ~Global("RLCritterArmor 2bR","GLOBAL",1)Global("RLTannerWorks","GLOBAL",1)RealGlobalTimerExpired("RLTanWorkingTimer","GLOBAL")	~ THEN BEGIN RLTannerGives

SAY @97

IF ~~ DO ~CreateItem("RLMageL",1,1,0)GiveItem("RLMageL",LastTalkedToBy(Myself))AddexperienceParty(1000)SetGlobal("RLCritterArmor 2bR","GLOBAL","3")EscapeAreaDestroy(1)~

EXIT

END 

IF ~Global("RLCritterArmor 2bL","GLOBAL",1)Global("RLTannerWorks","GLOBAL",1)RealGlobalTimerExpired("RLTanWorkingTimer","GLOBAL")	~ THEN BEGIN RLTannerGives

SAY @97

IF ~~ DO ~CreateItem("RLDruidL",1,1,0)GiveItem("RLDruidL",LastTalkedToBy(Myself))AddexperienceParty(1000)SetGlobal("RLCritterArmor 2bL","GLOBAL","3")EscapeAreaDestroy(1)~

EXIT

END 

IF ~Global("RLCritterArmor 2bB","GLOBAL",1)Global("RLTannerWorks","GLOBAL",1)RealGlobalTimerExpired("RLTanWorkingTimer","GLOBAL")	~ THEN BEGIN RLTannerGives

SAY @97

IF ~~ DO ~CreateItem("RLBoneL",1,1,0)GiveItem("RLBoneL",LastTalkedToBy(Myself))AddexperienceParty(1000)SetGlobal("RLCritterArmor 2bB","GLOBAL","3")EscapeAreaDestroy(1)~

EXIT

END 

END

