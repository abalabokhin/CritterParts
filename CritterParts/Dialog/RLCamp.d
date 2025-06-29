BEGIN RLCamp

IF ~Global("RLCampTalk","GLOBAL",0)~ THEN BEGIN RLCamp 

SAY @0
 
IF ~~ THEN DO ~SetGlobal("RLCampTalk","GLOBAL",1)~

EXIT

END



