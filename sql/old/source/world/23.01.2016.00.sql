UPDATE creature_template SET AIName='', ScriptName='npc_alpine_songbird', HoverHeight=1, npcflag=0, faction_A=2252, faction_H=2252, unit_flags=33587200 WHERE entry in (52595);
UPDATE creature_template SET AIName='', ScriptName='npc_forest_owl', HoverHeight=1, npcflag=0, faction_A=2252, faction_H=2252, unit_flags=33587200 WHERE entry in (52596);
UPDATE creature_template SET AIName='', ScriptName='npc_goldwing_hawk', HoverHeight=1, npcflag=0, faction_A=2252, faction_H=2252, unit_flags=33587200 WHERE entry in (52594);
UPDATE creature_template SET AIName='', ScriptName='npc_squirrel', IconName='LootAll', unit_flags=33587200, npcflag=0 WHERE entry in (52195);
UPDATE creature_template SET AIName='', ScriptName='npc_child_of_tortolla', IconName='LootAll' WHERE entry in (52177,52208);
-- S.A.F.E. Operative <S.A.F.E.>
SET @ENTRY := 45847;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,0,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,0,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,0,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Survivor SAI
SET @ENTRY := 46268;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,17,431,0,0,0,0,0,1,0,0,0,0,0,0,0,"Survivor - on spawn - set emote state (431)"),
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Spawn'),
(@ENTRY,0,2,3,8,0,100,0,86264,0,5000,5000,33,46268,0,0,0,0,0,7,0,0,0,0,0,0,0,"Quest Kredit"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,11,83369,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Teleport Spell"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Survivor - linked - despawn after 5 seconds"),
(@ENTRY,0,5,0,1,0,10,0,60000,300000,60000,300000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Survivor - linked - say text 0 (10% chance)");

-- Living Contamination
SET @ENTRY := 43089;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,12000,15000,11,21067,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Poison Bolt'),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,63227,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP');
-- NPC talk text insert
SET @ENTRY := 43089;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s becomes enraged!',16,0,100,0,0,0, 'combat Enrage');

-- √номреганский призывник
SET @ENTRY := 43092;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,0,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,0,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,0,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Gnomeregan Trainee SAI
SET @ENTRY := 42329;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,0,1200,1700,1800,2000,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,"Play ONESHOT_ATTACK1H emote"),
(@ENTRY,0,1,0,1,0,100,0,0,4000,2000,10000,5,440,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chance to Dodge"),
(@ENTRY,0,2,0,1,0,100,0,0,4000,2000,10000,5,54,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chance for Special");
-- Dragonmaw Shadowwarder SAI
SET @ENTRY := 1038;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3500,6400,11,20807,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,11,20807,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - On Aggro - Cast 20807"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3500,6400,11,20807,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-40 Range - Cast 20807 (Phase 1)"),
(@ENTRY,0,4,5,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Mana - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Mana - Increment Event Phase (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 35-80 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 5-15 Range - Disallow Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-5 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 30-100% Mana - Decrement Event Phase (Phase 2)"),
(@ENTRY,0,10,11,2,1,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Set Event Phase 3"),
(@ENTRY,0,11,12,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Allow Combat Movement"),
(@ENTRY,0,12,0,61,1,100,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Flee For Assist");

-- Mechashark X-Steam Controller SAI
SET @ENTRY := 202108;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,0,0,0,0,85,71662,2,0,0,0,0,7,0,0,0,0,0,0,0,"On Gossip - Cast Mechashark X");

-- Bale of Hay SAI
SET @ENTRY := 206682;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,8,0,100,1,88646,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bale of Hay - Despawn after 2 second");
insert  into `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`,`quest_start_status`,`quest_end_status`) values (80653,5495,0,0,0,0,64,2,1,64,11);

UPDATE `creature_template` SET `unit_flags` = 770 WHERE `entry` = 47250;
UPDATE `creature_template` SET `unit_flags` = 33666 WHERE `entry` = 46268;

UPDATE `gameobject` SET `phaseMask` = 2 WHERE `id`=195201;

DELETE FROM `creature` WHERE `id`=36103;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(240341, 36103, 648, 0, 0, 1, 2, 0, 0, 869.755, 3337.36, 7.86488, 4.92183, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240320, 36103, 648, 0, 0, 1, 2, 0, 0, 871.045, 3313.51, 10.67, 5.49779, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240315, 36103, 648, 0, 0, 1, 2, 0, 0, 915.21, 3292.09, 12.0413, 5.77704, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240310, 36103, 648, 0, 0, 1, 2, 0, 0, 915.17, 3265.25, 14.5414, 0.0698132, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240307, 36103, 648, 0, 0, 1, 2, 0, 0, 851.427, 3296.82, 12.0335, 6.10865, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240305, 36103, 648, 0, 0, 1, 2, 0, 0, 888.474, 3296.27, 11.7876, 0.0523599, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240304, 36103, 648, 0, 0, 1, 2, 0, 0, 914.891, 3327.15, 8.45568, 4.62512, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240303, 36103, 648, 0, 0, 1, 2, 0, 0, 890.427, 3271.21, 13.6715, 0.261799, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240299, 36103, 648, 0, 0, 1, 2, 0, 0, 953.219, 3327.65, 2.35126, 3.80482, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240298, 36103, 648, 0, 0, 1, 2, 0, 0, 942.915, 3271.6, 17.5481, 6.23082, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240297, 36103, 648, 0, 0, 1, 2, 0, 0, 942.878, 3275.29, 17.0352, 1.0492, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240296, 36103, 648, 0, 0, 1, 2, 0, 0, 943.266, 3278.93, 16.7576, 5.77704, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240295, 36103, 648, 0, 0, 1, 2, 0, 0, 943.193, 3268.65, 18.0313, 0.261799, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240294, 36103, 648, 0, 0, 1, 2, 0, 0, 942.93, 3276.77, 16.9444, 6.03884, 90, 0, 5, 1, 0, 1, 0, 0, 0),
(240293, 36103, 648, 0, 0, 1, 2, 0, 0, 944.88, 3266.03, 19.0167, 0.541052, 90, 0, 5, 1, 0, 1, 0, 0, 0);

UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = 39074;


DELETE FROM `gameobject` WHERE `id`=201938;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(57618, 201938, 648, 0, 0, 1, 1, 913.625, 2329.86, 11.2378, 2.65289, 0, 0, 0, 1, 120, 255, 1);


DELETE FROM `gameobject` WHERE `id`=202166;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(57529, 202166, 648, 0, 0, 1, 1, 915.075, 2328.73, 4.99332, 0.898844, 0, 0, 0, 1, 120, 255, 1);



UPDATE `creature_template` SET `unit_flags` = 512 WHERE `entry` = 38518;
UPDATE `creature_template` SET `unit_flags` = 902, `dynamicflags` = 0 WHERE `entry` = 385310;

UPDATE `gameobject` SET `phaseMask` = 2048 WHERE `phaseMask` = 6144;
UPDATE `creature_template` SET `InhabitType` = 2 WHERE `entry` = 36681;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Flags` = 786432;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Flags` = 524296;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Flags` = 524288;

DELETE FROM `creature` WHERE `id`=385310;

-- Gobber SAI
SET @ENTRY := 38746;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,200,0,64,0,100,0,0,0,0,0,10,1,3,5,6,0,0,1,0,0,0,0,0,0,0,"on gossip set emote"),
(@ENTRY,0,201,0,8,0,100,0,73583,0,0,0,33,38746,0,0,0,0,0,7,0,0,0,0,0,0,0,"Spellhit get killcredit"),
(@ENTRY,0,202,0,8,0,100,1,73583,0,0,0,85,73612,4,0,0,0,0,0,0,0,0,0,0,0,0,"Gobber friend");

-- Izzy SAI
SET @ENTRY := 38647;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,24925,0,0,0,28,66987,0,0,0,0,0,7,0,0,0,0,0,0,0,"remove helmet"),
(@ENTRY,0,1,2,19,0,100,0,24937,0,0,0,62,648,0,0,0,0,0,7,0,0,0,928.741,2344.02,5.534,1.78,"tele"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,85,59073,1,0,0,0,0,1,0,0,0,0,0,0,0,"tele"),
(@ENTRY,0,3,0,8,0,100,0,73583,0,0,0,33,38647,0,0,0,0,0,7,0,0,0,0,0,0,0,"Spellhit get killcredit");



UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 10, `RequiredSourceItemId1` = 0, `RequiredSourceItemCount1` = 0 WHERE `Id` = 24942;


UPDATE `creature_template` SET `minlevel`=15, `maxlevel`=15, `faction_A`=2159, `faction_H`=2159, `npcflag`=2, `speed_walk`=1.142857, `speed_run`=1, `baseattacktime`=2000, `rangeattacktime`=2000, `HoverHeight`=1 WHERE `entry`=35086; -- Labor Captain Grabbit

	UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestIdChain` = 0 WHERE `Id` = 14129;
	REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('19', '14129', '8', '28496');
	REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('19', '14129', '8', '25275');
	REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('20', '14129', '8', '28496');
	REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('20', '14129', '8', '25275');
	-- The Captain's Logs (14134)
	UPDATE `quest_template` SET `PrevQuestId` = 14129, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestIdChain` = 0 WHERE `Id` = 14134;
	
	UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 35086;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `Id` = 14134;
UPDATE `quest_template` SET `PrevQuestId` = 0, `RequiredItemId1` = 0, `RequiredItemCount1` = 0 WHERE `Id` = 14134;

UPDATE `creature_template` SET `npcflag` = 3 WHERE `npcflag` = 2;
insert  into `playercreateinfo_spell`(`race`,`class`,`Spell`,`Note`) values  (7,1,86106,'Decontamination'),(7,2,86106,'Decontamination'),(7,3,86106,'Decontamination'),(7,4,86106,'Decontamination'),(7,5,86106,'Decontamination'),(7,6,86106,'Decontamination'),(7,7,86106,'Decontamination'),(7,8,86106,'Decontamination'),(7,9,86106,'Decontamination');

UPDATE `quest_template` SET `Details` = 'You''ve been down here in Gnomeregan for a long time, $N, and it''s amazing that you''ve survived and kept your wits so long! We need to get you out.$B$BBefore we can send you to the surface to join the rest of the gnomes, you have to go through the decontamination process. Just head into the next room and board the Sanitron 500 using your Racial Ability Decontamination.It will do the rest! It shouldn''t even hurt... much.$B$BWhen you''re all done, check in with Technician Braggle and he''ll make sure you get some suitable gear.' WHERE `Id` = 27635;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 26208;

/* 
* World\2013_06_02_quest_Missing in Action.sql 
*/ 
DELETE FROM `creature_questrelation` WHERE `quest` = 26284;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (42708, 26284);

-- Makeshift Cage
SET @ENTRY := 204019;
SET @SOURCETYPE := 1;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE gameobject_template SET AIName="SmartGameObjectAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,64,0,100,0,0,0,0,0,80,20401900,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On gossip Hello");

-- Makeshift Cage
SET @ENTRY := 20401900;
SET @SOURCETYPE := 9;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,1000,1000,0,0,45,0,1,0,0,0,0,11,42645,10,0,0.0,0.0,0.0,0.0,"Send data 1 to Princess"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,0,0,0,0,33,42645,0,0,0,0,0,18,100,0,0,0.0,0.0,0.0,0.0,"give credit to player");

UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 42645;

-- Captured Demolitionist
SET @ENTRY := 42645;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,38,0,100,0,0,1,0,0,80,4264500,0,0,0,0,0,1,20,0,0,0.0,0.0,0.0,0.0,"On data set do action");




-- Captured Demolitionist
SET @ENTRY := 4264500;
SET @SOURCETYPE := 9;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,18,10,0,0,0.0,0.0,0.0,0.0,"talk to player"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,0,0,0,0,46,20,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Move forward"),
(@ENTRY,@SOURCETYPE,2,0,0,0,100,0,10000,10000,0,0,37,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Die self"),
(@ENTRY,@SOURCETYPE,3,0,0,0,100,0,0,0,0,0,33,0,0,0,0,0,0,18,1000,0,0,0.0,0.0,0.0,0.0,"give credit to player");


REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '1', 'Finally, someone who\'s not a trogg!', '12', '100');
REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '2', 'I''m free! I''m really free!', '12', '100');
REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '3', 'Thank you for breaking me out of here!', '12', '100');
REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '4', 'Thanks. Now, let''s blow up that cave!', '12', '100');
REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '5', 'You have no idea how happy I am to see you!', '12', '100'); 
 
 
 
 UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE `entry` = 42773;
 
 
 
 
 UPDATE `quest_template` SET `Flags`=128, `RequiredNpcOrGo1`=-205485, `RequiredNpcOrGoCount1`=1, `RequiredSourceItemId1`=0, `RequiredSourceItemCount1`=0 WHERE `Id`=27454 LIMIT 1;
UPDATE `gameobject_template` SET `type`=10 WHERE `entry`=205485 LIMIT 1;

UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=51681 LIMIT 1;

--- Condition
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 51681, 0, 0, 9, 0, 29032, 0, 0, 0, 0, 0, '', 'Get Them While They\'re Young Quest Condition');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 4, 51681, 0, 0, 9, 0, 29032, 0, 0, 1, 0, 0, '', 'Get Them While They\'re Young Quest Negative Condition');


-- Script ---
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub on Gossip hello - Gossip Close');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 68638, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub on Gossip hello - Add item');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub on Gossip hello - Despawn');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub Gossip close without quest');

DELETE FROM `creature` WHERE `id`=41478;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20980, 41478, 0, 0, 0, 1, 1, 604, 0, -5407.06, -994.594, 390.817, 4.62974, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(20981, 41478, 0, 0, 0, 1, 1, 604, 0, -5859.25, -63.0547, 361.03, 5.66702, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20982, 41478, 0, 0, 0, 1, 1, 604, 0, -5797.72, -549.214, 401.79, 1.32629, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20983, 41478, 0, 0, 0, 1, 1, 604, 0, -5734.67, -219.569, 351.679, 0.758267, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20984, 41478, 0, 0, 0, 1, 1, 604, 0, -5445.29, -435.267, 397.628, 2.08482, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20985, 41478, 0, 0, 0, 1, 1, 604, 0, -5360.2, -926.6, 389.582, 2.77298, 90, 16, 0, 120, 0, 1, 0, 0, 2048),
(20986, 41478, 0, 0, 0, 1, 1, 604, 0, -6051.83, -405.635, 421.481, 5.23315, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20987, 41478, 0, 0, 0, 1, 1, 604, 0, -5384.51, -714.627, 397.419, 0.957246, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20988, 41478, 0, 0, 0, 1, 1, 604, 0, -5743.58, -598.208, 402.125, 4.85052, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20989, 41478, 0, 0, 0, 1, 1, 604, 0, -5289.2, -602.397, 387.816, 0.891946, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(20990, 41478, 0, 0, 0, 1, 1, 604, 0, -5356.39, -782.197, 398.137, 2.64474, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20991, 41478, 0, 0, 0, 1, 1, 604, 0, -5679.81, -595.828, 402.064, 5.93891, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20992, 41478, 0, 0, 0, 1, 1, 604, 0, -5325.21, -693.973, 394.055, 4.04594, 90, 12, 0, 120, 0, 1, 0, 0, 2048),
(20993, 41478, 0, 0, 0, 1, 1, 604, 0, -5824, -303.299, 360.545, 1.11634, 90, 18, 0, 102, 0, 1, 0, 0, 2048),
(20994, 41478, 0, 0, 0, 1, 1, 604, 0, -5513.14, -564.243, 402.383, 0.551104, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20995, 41478, 0, 0, 0, 1, 1, 604, 0, -5471.96, -965.274, 396.689, 4.35268, 90, 12, 0, 120, 0, 1, 0, 0, 2048),
(20996, 41478, 0, 0, 0, 1, 1, 604, 0, -5408.25, -723.57, 396.478, 3.96565, 90, 9, 0, 120, 0, 1, 0, 0, 2048),
(20997, 41478, 0, 0, 0, 1, 1, 604, 0, -5291.67, -808.334, 397.591, 1.74214, 90, 10, 0, 120, 0, 1, 0, 0, 2048),
(20998, 41478, 0, 0, 0, 1, 1, 604, 0, -5286.5, -628.504, 388.066, 1.23855, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20999, 41478, 0, 0, 0, 1, 1, 604, 0, -5580.84, -686.03, 407.644, 5.41881, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(21000, 41478, 0, 0, 0, 1, 1, 604, 0, -5296.4, -960.081, 389.384, 2.88773, 90, 14, 0, 120, 0, 1, 0, 0, 2048),
(21001, 41478, 0, 0, 0, 1, 1, 604, 0, -5859.48, 7.28219, 355.609, 0.051809, 90, 16, 0, 102, 0, 1, 0, 0, 2048),
(21002, 41478, 0, 0, 0, 1, 1, 604, 0, -5313.27, -662.723, 388.457, 0.1486, 90, 18, 0, 102, 0, 1, 0, 0, 2048),
(21003, 41478, 0, 0, 0, 1, 1, 604, 0, -5554.94, -607.125, 411.755, 1.51168, 90, 9, 0, 102, 0, 1, 0, 0, 2048),
(21004, 41478, 0, 0, 0, 1, 1, 604, 0, -5595.51, -719.471, 417.955, 6.24609, 90, 8, 0, 102, 0, 1, 0, 0, 2048),
(21005, 41478, 0, 0, 0, 1, 1, 604, 0, -5540.36, -400.798, 408.332, 4.44897, 90, 13, 0, 120, 0, 1, 0, 0, 2048),
(21006, 41478, 0, 0, 0, 1, 1, 604, 0, -5331.58, -910.973, 393.732, 2.33443, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(21007, 41478, 0, 0, 0, 1, 1, 604, 0, -5366.12, -631.108, 394.706, 5.70384, 90, 10, 0, 102, 0, 1, 0, 0, 2048),
(41732, 41478, 0, 0, 0, 1, 1, 604, 0, -5906.3, -189.977, 364.763, 3.96013, 90, 16, 0, 120, 0, 1, 0, 0, 2048),
(41776, 41478, 0, 0, 0, 1, 1, 604, 0, -5888.5, -522.076, 398.699, 4.85862, 90, 17, 0, 102, 0, 1, 0, 0, 2048),
(41820, 41478, 0, 0, 0, 1, 1, 604, 0, -5787.77, -145.734, 353.367, 0.558073, 90, 18, 0, 120, 0, 1, 0, 0, 2048),
(41922, 41478, 0, 0, 0, 1, 1, 604, 0, -5545.16, -717.137, 408.933, 0.054317, 90, 13, 0, 120, 0, 1, 0, 0, 2048),
(41982, 41478, 0, 0, 0, 1, 1, 604, 0, -5690.09, -407.63, 365.518, 1.29669, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(42037, 41478, 0, 0, 0, 1, 1, 604, 0, -5780.77, -422.523, 366.268, 2.96972, 90, 10, 0, 120, 0, 1, 0, 0, 2048),
(42093, 41478, 0, 0, 0, 1, 1, 604, 0, -5319.14, -747.362, 390.457, 4.81614, 90, 13, 0, 102, 0, 1, 0, 0, 2048),
(42145, 41478, 0, 0, 0, 1, 1, 604, 0, -5492.81, -965.598, 399.564, 1.59485, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(42210, 41478, 0, 0, 0, 1, 1, 604, 0, -5823.19, -243.682, 352.905, 2.17345, 90, 18, 0, 120, 0, 1, 0, 0, 2048),
(42328, 41478, 0, 0, 0, 1, 1, 604, 0, -5828.22, -120.5, 354.766, 1.76359, 90, 12, 0, 120, 0, 1, 0, 0, 2048),
(42353, 41478, 0, 0, 0, 1, 1, 604, 0, -5547.03, -551.164, 406.589, 2.67095, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(42394, 41478, 0, 0, 0, 1, 1, 604, 0, -5292.79, -731.211, 388.457, 1.4434, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(42442, 41478, 0, 0, 0, 1, 1, 604, 0, -6054.73, -336.165, 427.199, 5.07217, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(42491, 41478, 0, 0, 0, 1, 1, 604, 0, -5807.96, -176.908, 351.596, 3.04694, 90, 14, 0, 102, 0, 1, 0, 0, 2048),
(42627, 41478, 0, 0, 0, 1, 1, 604, 0, -5346.03, -691.482, 394.179, 3.17088, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(42674, 41478, 0, 0, 0, 1, 1, 604, 0, -5514.03, -980.35, 396.863, 0.620454, 90, 19, 0, 120, 0, 1, 0, 0, 2048),
(42697, 41478, 0, 0, 0, 1, 1, 604, 0, -5609.95, -668.848, 405.238, 5.12306, 90, 18, 0, 102, 0, 1, 0, 0, 2048),
(42745, 41478, 0, 0, 0, 1, 1, 604, 0, -5987.25, -551.169, 406.217, 4.82391, 90, 17, 0, 120, 0, 1, 0, 0, 2048),
(42757, 41478, 0, 0, 0, 1, 1, 604, 0, -5942.19, -483.854, 412.024, 5.76762, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(42838, 41478, 0, 0, 0, 1, 1, 604, 0, -5978.25, -430.345, 407.228, 0.792317, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(42894, 41478, 0, 0, 0, 1, 1, 604, 0, -5503.87, -718.134, 408.662, 5.10087, 90, 18, 0, 102, 0, 1, 0, 0, 2048),
(42903, 41478, 0, 0, 0, 1, 1, 604, 0, -5905.27, -109.054, 371.184, 4.51339, 90, 16, 0, 102, 0, 1, 0, 0, 2048),
(42927, 41478, 0, 0, 0, 1, 1, 604, 0, -5810.02, 37.9119, 360.378, 3.73462, 90, 8, 0, 102, 0, 1, 0, 0, 2048),
(42983, 41478, 0, 0, 0, 1, 1, 604, 0, -5523.02, -756.117, 404.961, 1.78968, 90, 13, 0, 120, 0, 1, 0, 0, 2048),
(43038, 41478, 0, 0, 0, 1, 1, 604, 0, -5831.37, -176.48, 354.775, 4.34016, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(43075, 41478, 0, 0, 0, 1, 1, 604, 0, -5398.9, -422.128, 399.613, 5.63936, 90, 10, 0, 120, 0, 1, 0, 0, 2048),
(43151, 41478, 0, 0, 0, 1, 1, 604, 0, -5853.75, 55.4166, 359.387, 0.970321, 90, 19, 0, 120, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=40940;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20806, 40940, 0, 0, 0, 1, 1, 929, 0, -5747.73, -309.434, 360.302, 0.097838, 90, 10, 0, 102, 0, 1, 0, 0, 2048),
(20807, 40940, 0, 0, 0, 1, 1, 32192, 0, -5699.42, -226.691, 361.143, 4.25733, 90, 9, 0, 102, 0, 1, 0, 0, 2048),
(20808, 40940, 0, 0, 0, 1, 1, 929, 0, -5763.18, -312.859, 360.888, 2.35626, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(20809, 40940, 0, 0, 0, 1, 1, 929, 0, -5674.86, -278.057, 368.886, 6.25, 90, 6, 0, 102, 0, 1, 0, 0, 2048),
(20810, 40940, 0, 0, 0, 1, 1, 929, 0, -5680.07, -308.637, 367.43, 6.03431, 90, 8, 0, 102, 0, 1, 0, 0, 2048),
(20811, 40940, 0, 0, 0, 1, 1, 929, 0, -5718.8, -321.755, 364.322, 4.54164, 90, 13, 0, 102, 0, 1, 0, 0, 2048),
(20812, 40940, 0, 0, 0, 1, 1, 32192, 0, -5681.72, -323.594, 367.805, 0.69788, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(41823, 40940, 0, 0, 0, 1, 1, 929, 0, -5684.68, -355.804, 368.807, 5.16967, 90, 10, 0, 102, 0, 1, 0, 0, 2048),
(42280, 40940, 0, 0, 0, 1, 1, 929, 0, -5716.4, -368.215, 365.268, 4.13626, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(42365, 40940, 0, 0, 0, 1, 1, 32192, 0, -5707.01, -341.806, 365.653, 3.67446, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(42473, 40940, 0, 0, 0, 1, 1, 32192, 0, -5741.42, -245.537, 353.345, 0.096884, 90, 9, 0, 102, 0, 1, 0, 0, 2048),
(42531, 40940, 0, 0, 0, 1, 1, 929, 0, -5727.24, -271.741, 357.089, 5.1459, 90, 10, 0, 102, 0, 1, 0, 0, 2048),
(42708, 40940, 0, 0, 0, 1, 1, 929, 1, -5672.87, -280.094, 369.761, 1.44421, 90, 13, 0, 102, 0, 1, 0, 0, 2048),
(42933, 40940, 0, 0, 0, 1, 1, 32192, 0, -5756.51, -277.413, 356.864, 1.32971, 90, 12, 0, 102, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=1125;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20448, 1125, 0, 0, 0, 1, 1, 607, 0, -5918.85, -486.459, 412.638, 3.14159, 90, 17, 0, 102, 0, 1, 0, 0, 0),
(20449, 1125, 0, 0, 0, 1, 1, 607, 0, -6085.16, -429.951, 430.33, 3.9619, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(20450, 1125, 0, 0, 0, 1, 1, 607, 0, -6042.85, -447.638, 451.031, 0.453786, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(20451, 1125, 0, 0, 0, 1, 1, 607, 0, -5323.77, -609.701, 388.901, 5.43656, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(20452, 1125, 0, 0, 0, 1, 1, 607, 0, -5886.08, -554.496, 397.17, 3.04672, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(20453, 1125, 0, 0, 0, 1, 1, 607, 0, -5912.67, 16.123, 367.29, 2.05455, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20454, 1125, 0, 0, 0, 1, 1, 607, 0, -5880.1, -37.217, 366.324, 4.456, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(20455, 1125, 0, 0, 0, 1, 1, 607, 0, -5226.8, -464.978, 386.456, 1.6138, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(20456, 1125, 0, 0, 0, 1, 1, 607, 0, -5983.79, -138.051, 401.146, 0.099863, 90, 22, 0, 120, 0, 1, 0, 0, 0),
(20457, 1125, 0, 0, 0, 1, 1, 607, 0, -5745.96, -464.12, 395.393, 1.51734, 90, 20, 0, 102, 0, 1, 0, 0, 0),
(20458, 1125, 0, 0, 0, 1, 1, 607, 0, -5466.7, -952.658, 395.689, 1.27503, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(20459, 1125, 0, 0, 0, 1, 1, 607, 0, -5374.9, -408.47, 398.363, 4.58535, 90, 19, 0, 102, 0, 1, 0, 0, 0),
(20460, 1125, 0, 0, 0, 1, 1, 607, 0, -5722.86, -574.808, 399.788, 0.519631, 90, 21, 0, 120, 0, 1, 0, 0, 0),
(20461, 1125, 0, 0, 0, 1, 1, 607, 0, -5803.28, -213.427, 353.868, 5.06752, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20462, 1125, 0, 0, 0, 1, 1, 607, 0, -5980.66, -406.507, 413.103, 4.10326, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(20463, 1125, 0, 0, 0, 1, 1, 607, 0, -5922.55, -593.899, 402.642, 1.07871, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(20464, 1125, 0, 0, 0, 1, 1, 607, 0, -5376.75, -674.494, 395.259, 5.8703, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20465, 1125, 0, 0, 0, 1, 1, 607, 0, -6081.62, -382.515, 435.241, 0.034907, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(20466, 1125, 0, 0, 0, 1, 1, 607, 0, -5369.93, -810.462, 398.221, 3.12402, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(20467, 1125, 0, 0, 0, 1, 1, 607, 0, -5842.21, -141.31, 356.509, 4.20624, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(20468, 1125, 0, 0, 0, 1, 1, 607, 0, -6083.14, -279.869, 436.359, 6.07375, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(20469, 1125, 0, 0, 0, 1, 1, 607, 0, -6056.5, -280.898, 422.899, 3.64983, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(20470, 1125, 0, 0, 0, 1, 1, 607, 0, -5958.23, -582.253, 402.424, 3.07812, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(20471, 1125, 0, 0, 0, 1, 1, 607, 0, -5833.29, 89.7917, 370.893, 4.51768, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20472, 1125, 0, 0, 0, 1, 1, 607, 0, -6025.23, -316.613, 424.316, 3.60524, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(20473, 1125, 0, 0, 0, 1, 1, 607, 0, -5537.7, -596.605, 408.108, 4.69493, 90, 21, 0, 102, 0, 1, 0, 0, 0),
(20474, 1125, 0, 0, 0, 1, 1, 607, 0, -5944.79, -505.993, 410.308, 1.5708, 90, 24, 0, 120, 0, 1, 0, 0, 0),
(20475, 1125, 0, 0, 0, 1, 1, 607, 0, -5191.69, -432.914, 390.843, 2.75927, 90, 23, 0, 102, 0, 1, 0, 0, 0),
(20476, 1125, 0, 0, 0, 1, 1, 607, 0, -5309.17, -528.562, 388.457, 4.6279, 90, 22, 0, 102, 0, 1, 0, 0, 0),
(20477, 1125, 0, 0, 0, 1, 1, 607, 0, -5828.55, -729.524, 396.907, 2.65579, 90, 21, 0, 102, 0, 1, 0, 0, 0),
(20478, 1125, 0, 0, 0, 1, 1, 607, 0, -5616.01, -734.959, 431.357, 5.95222, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20479, 1125, 0, 0, 0, 1, 1, 607, 0, -5909.76, -143.943, 366.417, 0.154876, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(20480, 1125, 0, 0, 0, 1, 1, 607, 0, -5379.31, -929.498, 393.747, 2.79265, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(20481, 1125, 0, 0, 0, 1, 1, 607, 0, -5370.48, -745.086, 395.914, 3.472, 90, 12, 0, 120, 0, 1, 0, 0, 0),
(20482, 1125, 0, 0, 0, 1, 1, 607, 0, -5275.46, -692.346, 389.846, 5.44375, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(20483, 1125, 0, 0, 0, 1, 1, 607, 0, -5740.91, -263.908, 356.746, 4.36529, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(20484, 1125, 0, 0, 0, 1, 1, 607, 0, -5857.25, -182.449, 357.852, 1.22413, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(20485, 1125, 0, 0, 0, 1, 1, 607, 0, -5817.84, -615.962, 399.17, 4.21554, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20486, 1125, 0, 0, 0, 1, 1, 607, 0, -5850.79, -250.276, 361.284, 0.541314, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(20487, 1125, 0, 0, 0, 1, 1, 607, 0, -5691.61, -352.081, 366.807, 1.59228, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(20488, 1125, 0, 0, 0, 1, 1, 607, 0, -5764.61, -218.558, 351.554, 1.76957, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(20489, 1125, 0, 0, 0, 1, 1, 607, 0, -5951.97, -378.858, 421.829, 0.506145, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(20490, 1125, 0, 0, 0, 1, 1, 607, 0, -5572.12, -727.813, 411.455, 2.42932, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(20491, 1125, 0, 0, 0, 1, 1, 607, 0, -5294.46, -433.102, 394.189, 1.47501, 90, 21, 0, 120, 0, 1, 0, 0, 0),
(20492, 1125, 0, 0, 0, 1, 1, 607, 0, -6024, -475.223, 428.257, 4.41568, 90, 20, 0, 102, 0, 1, 0, 0, 0),
(20493, 1125, 0, 0, 0, 1, 1, 607, 0, -5983.75, -469.537, 405.874, 3.88558, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20494, 1125, 0, 0, 0, 1, 1, 607, 0, -5851.57, 31.2187, 355.27, 0.779873, 90, 17, 0, 102, 0, 1, 0, 0, 0),
(41716, 1125, 0, 0, 0, 1, 1, 607, 0, -6134.04, -239.509, 481.432, 5.44543, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(41740, 1125, 0, 0, 0, 1, 1, 607, 0, -6012.59, -279.303, 417.95, 0.411739, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(41768, 1125, 0, 0, 0, 1, 1, 607, 0, -5605, -718.231, 423.517, 5.387, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(41772, 1125, 0, 0, 0, 1, 1, 607, 0, -5842.01, -54.0903, 363.238, 6.13825, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(41809, 1125, 0, 0, 0, 1, 1, 607, 0, -5655.42, -648.538, 403.115, 2.2794, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(41844, 1125, 0, 0, 0, 1, 1, 607, 0, -5715.96, -307.665, 361.513, 4.64595, 90, 19, 0, 102, 0, 1, 0, 0, 0),
(41863, 1125, 0, 0, 0, 1, 1, 607, 0, -5541.46, -658.668, 412.111, 4.70653, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(41872, 1125, 0, 0, 0, 1, 1, 607, 0, -5488.25, -566.629, 400.102, 1.97222, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(41898, 1125, 0, 0, 0, 1, 1, 607, 0, -5352.57, -933.884, 388.623, 4.74103, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(41932, 1125, 0, 0, 0, 1, 1, 607, 0, -5991.67, -443.586, 407.419, 2.41835, 90, 19, 0, 102, 0, 1, 0, 0, 0),
(41972, 1125, 0, 0, 0, 1, 1, 607, 0, -5995.15, -535.297, 409.411, 1.78735, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(42002, 1125, 0, 0, 0, 1, 1, 607, 0, -6021.95, -415.719, 413.482, 4.85954, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(42012, 1125, 0, 0, 0, 1, 1, 607, 0, -5708.47, -370.127, 365.518, 1.62749, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(42070, 1125, 0, 0, 0, 1, 1, 607, 0, -5568.39, -672.266, 410.144, 2.41008, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(42151, 1125, 0, 0, 0, 1, 1, 607, 0, -5475.15, -705.2, 403.248, 6.15651, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(42190, 1125, 0, 0, 0, 1, 1, 607, 0, -5940.9, 8.84777, 367.228, 2.88094, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(42231, 1125, 0, 0, 0, 1, 1, 607, 0, -5848.68, -214.548, 356.802, 1.85292, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(42245, 1125, 0, 0, 0, 1, 1, 607, 0, -5276.58, -726.688, 389.636, 5.27492, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(42256, 1125, 0, 0, 0, 1, 1, 607, 0, -5833.74, -285.333, 358.338, 5.6246, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(42272, 1125, 0, 0, 0, 1, 1, 607, 0, -5848.72, -151.07, 359.326, 5.90459, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(42297, 1125, 0, 0, 0, 1, 1, 607, 0, -5551.68, -736.939, 408.949, 3.10136, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(42308, 1125, 0, 0, 0, 1, 1, 607, 0, -5829.95, -341.262, 367.306, 4.55063, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(42340, 1125, 0, 0, 0, 1, 1, 607, 0, -5387.27, -445.84, 397.097, 1.37045, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(42419, 1125, 0, 0, 0, 1, 1, 607, 0, -5316.12, -806.616, 388.552, 0.433087, 90, 21, 0, 102, 0, 1, 0, 0, 0),
(42458, 1125, 0, 0, 0, 1, 1, 607, 0, -5788.48, -157.159, 351.242, 1.28887, 90, 20, 0, 102, 0, 1, 0, 0, 0),
(42478, 1125, 0, 0, 0, 1, 1, 607, 0, -5883.79, -534.806, 398.545, 2.49826, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(42488, 1125, 0, 0, 0, 1, 1, 607, 0, -5125.1, -373.899, 396.332, 4.36274, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(42516, 1125, 0, 0, 0, 1, 1, 607, 0, -5767.57, -402.11, 365.758, 1.67552, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(42563, 1125, 0, 0, 0, 1, 1, 607, 0, -5848.19, 6.48418, 357.484, 5.50576, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(42592, 1125, 0, 0, 0, 1, 1, 607, 0, -5914.71, -409.512, 426.089, 4.66003, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(42598, 1125, 0, 0, 0, 1, 1, 607, 0, -5345.35, -872.482, 388.457, 4.99172, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(42632, 1125, 0, 0, 0, 1, 1, 607, 0, -5769.95, -391.235, 366.893, 2.65784, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(42659, 1125, 0, 0, 0, 1, 1, 607, 0, -5334.95, -445.919, 388.733, 0.240291, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(42701, 1125, 0, 0, 0, 1, 1, 607, 0, -5875.29, -88.8958, 366.717, 1.22803, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(42720, 1125, 0, 0, 0, 1, 1, 607, 0, -5772.78, -572.992, 398.365, 3.04775, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(42773, 1125, 0, 0, 0, 1, 1, 607, 0, -5687.57, -605.507, 402.279, 4.0914, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(42806, 1125, 0, 0, 0, 1, 1, 607, 0, -5748.9, -474.784, 395.67, 2.78777, 90, 20, 0, 120, 0, 1, 0, 0, 0),
(42814, 1125, 0, 0, 0, 1, 1, 607, 0, -6001.38, -394.627, 411.649, 2.34291, 90, 21, 0, 102, 0, 1, 0, 0, 0),
(42825, 1125, 0, 0, 0, 1, 1, 607, 0, -6042.47, -347.024, 422.997, 4.84352, 90, 21, 0, 120, 0, 1, 0, 0, 0),
(42865, 1125, 0, 0, 0, 1, 1, 607, 0, -6123.02, -201.837, 436.265, 3.92147, 90, 20, 0, 102, 0, 1, 0, 0, 0),
(42931, 1125, 0, 0, 0, 1, 1, 607, 0, -5996.65, -103.901, 405.594, 0.348938, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(43031, 1125, 0, 0, 0, 1, 1, 607, 0, -5910.3, -409.123, 427.958, 0.1372, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(43070, 1125, 0, 0, 0, 1, 1, 607, 0, -5884.74, -192.868, 362.124, 2.89709, 90, 17, 0, 102, 0, 1, 0, 0, 0),
(43098, 1125, 0, 0, 0, 1, 1, 607, 0, -5565.36, -382.086, 409.509, 3.93113, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(43117, 1125, 0, 0, 0, 1, 1, 607, 0, -5714.11, -426.444, 365.518, 3.38679, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(43125, 1125, 0, 0, 0, 1, 1, 607, 0, -5626.01, -728.315, 428.037, 0.535391, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(43184, 1125, 0, 0, 0, 1, 1, 607, 0, -5817.45, -467.53, 403.193, 3.94633, 90, 16, 0, 120, 0, 1, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40941;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20813, 40941, 0, 0, 0, 1, 1, 32193, 0, -5384.19, -205.608, 357.338, 5.58672, 90, 10, 0, 120, 0, 1, 0, 0, 2048),
(20814, 40941, 0, 0, 0, 1, 1, 950, 0, -5351.88, -247.627, 361.527, 4.97419, 90, 5, 0, 120, 0, 1, 0, 0, 2048),
(20816, 40941, 0, 0, 0, 1, 1, 950, 0, -5595.92, -275.575, 371.18, 2.07694, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(20817, 40941, 0, 0, 0, 1, 1, 950, 0, -5365.79, -209.814, 363.336, 1.70221, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(41923, 40941, 0, 0, 0, 1, 1, 32193, 0, -5391.91, -168.781, 369.277, 4.6871, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(42083, 40941, 0, 0, 0, 1, 1, 32193, 0, -5606.34, -271.438, 369.103, 1.41287, 90, 9, 0, 120, 0, 1, 0, 0, 2048),
(42241, 40941, 0, 0, 0, 1, 1, 32193, 0, -5631.9, -274.085, 368.6, 1.58825, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(42469, 40941, 0, 0, 0, 1, 1, 32193, 0, -5367.29, -257.66, 361.202, 3.94188, 90, 5, 0, 120, 0, 1, 0, 0, 2048),
(43122, 40941, 0, 0, 0, 1, 1, 32193, 0, -5375.37, -221.868, 361.635, 5.16617, 90, 7, 0, 120, 0, 1, 0, 0, 2048);

DELETE FROM `creature_loot_template` WHERE (`entry`=1125) AND (`item`=769);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (1125, 769, 50, 1, 0, 1, 1);

-- http://ru.wowhead.com/quest=25841
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0, `RequiredSourceItemId2` = 0, `RequiredSourceItemCount2` = 0 WHERE `Id` = 25841;

DELETE FROM `creature` WHERE `id`=48935;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(8754, 48935, 0, 0, 0, 1, 1, 36342, 0, -4886.89, -1365.11, 731.132, 5.59061, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8755, 48935, 0, 0, 0, 1, 1, 23926, 0, -4770.74, -1210.12, 733.458, 6.24414, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8756, 48935, 0, 0, 0, 1, 1, 23926, 0, -4837.28, -1282.71, 725.061, 2.44179, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8757, 48935, 0, 0, 0, 1, 1, 36342, 0, -4941.4, -1345.08, 718.682, 0.929641, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8758, 48935, 0, 0, 0, 1, 1, 23926, 0, -4852.79, -1144.37, 766.907, 6.23108, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8759, 48935, 0, 0, 0, 1, 1, 23926, 0, -4824.36, -1232.34, 732.786, 5.59471, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27953, 48935, 0, 0, 0, 1, 1, 23926, 0, -5134.23, -1311.03, 532.235, 0.879074, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27954, 48935, 0, 0, 0, 1, 1, 36342, 0, -5065.13, -262.371, 444.593, 2.02134, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27955, 48935, 0, 0, 0, 1, 1, 23926, 0, -5666.77, 258.485, 384.486, 3.0888, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27956, 48935, 0, 0, 0, 1, 1, 36342, 0, -5824.64, -1418.63, 407.081, 5.80818, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27957, 48935, 0, 0, 0, 1, 1, 23926, 0, -5109.3, -351.403, 404.712, 3.50105, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27958, 48935, 0, 0, 0, 1, 1, 36342, 0, -6424.44, 634.415, 387.861, 5.05393, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27959, 48935, 0, 0, 0, 1, 1, 23926, 0, -5861.7, -678.979, 399.254, 0.763302, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27960, 48935, 0, 0, 0, 1, 1, 36342, 0, -4661.61, -1678.26, 504.824, 5.83657, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27961, 48935, 0, 0, 0, 1, 1, 23926, 0, -5714.25, -216.413, 356.285, 3.73664, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27962, 48935, 0, 0, 0, 1, 1, 23926, 0, -5881.11, -541.828, 399.42, 2.86543, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27963, 48935, 0, 0, 0, 1, 1, 36342, 0, -6277.42, 410.345, 383.516, 2.33017, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27964, 48935, 0, 0, 0, 1, 1, 36342, 0, -5091.9, -1621.31, 507.139, 0.540777, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27965, 48935, 0, 0, 0, 1, 1, 23926, 0, -5903.05, -102.274, 373.115, 3.84194, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27966, 48935, 0, 0, 0, 1, 1, 23926, 0, -5513.11, -1656.8, 396.394, 5.35776, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27967, 48935, 0, 0, 0, 1, 1, 23926, 0, -5334.37, -2197.77, 424.604, 0.313493, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27968, 48935, 0, 0, 0, 1, 1, 23926, 0, -6053.11, -182.496, 430.166, 0.441817, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27969, 48935, 0, 0, 0, 1, 1, 36342, 0, -5571.92, -1442.18, 401.202, 4.12299, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27970, 48935, 0, 0, 0, 1, 1, 36342, 0, -6449.7, 541.959, 386.735, 0.327731, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27971, 48935, 0, 0, 0, 1, 1, 36342, 0, -6316.79, 762.457, 388.564, 5.77675, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27972, 48935, 0, 0, 0, 1, 1, 36342, 0, -4822.97, -1658.97, 504.48, 0.87427, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27973, 48935, 0, 0, 0, 1, 1, 36342, 0, -4708.74, -1674.61, 504.574, 2.06271, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27974, 48935, 0, 0, 0, 1, 1, 23926, 0, -4931.39, -1734.99, 503.339, 0.029771, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27975, 48935, 0, 0, 0, 1, 1, 23926, 0, -5272.09, -676.485, 388.471, 5.15884, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27976, 48935, 0, 0, 0, 1, 1, 23926, 0, -5074.5, 11.3677, 400.191, 3.72966, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27977, 48935, 0, 0, 0, 1, 1, 36342, 0, -5499.02, 323.776, 397.188, 4.88718, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27978, 48935, 0, 0, 0, 1, 1, 36342, 0, -6329.31, 626.289, 386.581, 2.43061, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27979, 48935, 0, 0, 0, 1, 1, 23926, 0, -4958, -1625.1, 507.447, 3.55116, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27980, 48935, 0, 0, 0, 1, 1, 23926, 0, -5254.95, -1469.94, 502.836, 2.76558, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27981, 48935, 0, 0, 0, 1, 1, 36342, 0, -5294.68, 603.715, 389.438, 1.81533, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27982, 48935, 0, 0, 0, 1, 1, 23926, 0, -5589.7, 485.278, 385.098, 1.54213, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27983, 48935, 0, 0, 0, 1, 1, 23926, 0, -6359.7, 441.304, 376.074, 0.504035, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27984, 48935, 0, 0, 0, 1, 1, 36342, 0, -5190.07, 412.375, 392.987, 1.64308, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27985, 48935, 0, 0, 0, 1, 1, 36342, 0, -6180.47, 750.797, 387.736, 2.85874, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27986, 48935, 0, 0, 0, 1, 1, 36342, 0, -6437.32, 647.011, 387.486, 2.89968, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27987, 48935, 0, 0, 0, 1, 1, 23926, 0, -5115.02, -2056.24, 426.588, 1.30801, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27988, 48935, 0, 0, 0, 1, 1, 36342, 0, -5838.48, -358.887, 374.424, 3.43305, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27989, 48935, 0, 0, 0, 1, 1, 36342, 0, -5490.02, -1331.24, 401.453, 0.240713, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27990, 48935, 0, 0, 0, 1, 1, 36342, 0, -5692.46, -407.054, 365.701, 1.66658, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27991, 48935, 0, 0, 0, 1, 1, 23926, 0, -4873.3, -1726.45, 504.324, 0.350621, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27992, 48935, 0, 0, 0, 1, 1, 23926, 0, -5450.38, -940.452, 394.337, 4.91771, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27993, 48935, 0, 0, 0, 1, 1, 23926, 0, -6047.67, -290.409, 422.466, 5.41063, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27994, 48935, 0, 0, 0, 1, 1, 23926, 0, -5213.68, -288.824, 436.438, 3.36429, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27995, 48935, 0, 0, 0, 1, 1, 36342, 0, -5845.21, -2061.95, 401.047, 5.35728, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27997, 48935, 0, 0, 0, 1, 1, 36342, 0, -5969.9, -107.527, 397.553, 1.63529, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27998, 48935, 0, 0, 0, 1, 1, 36342, 0, -5708, -1491.55, 399.87, 1.51021, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27999, 48935, 0, 0, 0, 1, 1, 23926, 0, -4836.52, -1651.31, 504.85, 0.212732, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28000, 48935, 0, 0, 0, 1, 1, 36342, 0, -6197.03, 208.496, 399.426, 4.26797, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28001, 48935, 0, 0, 0, 1, 1, 23926, 0, -5446.47, -565.182, 397.753, 3.19048, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28002, 48935, 0, 0, 0, 1, 1, 23926, 0, -5621.79, 440.486, 382.814, 2.59045, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28003, 48935, 0, 0, 0, 1, 1, 36342, 0, -6303.51, 319.105, 377.82, 5.44114, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28004, 48935, 0, 0, 0, 1, 1, 36342, 0, -5026.13, -2192.32, 409.618, 2.94496, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28005, 48935, 0, 0, 0, 1, 1, 36342, 0, -5748.44, -1089.3, 384.191, 4.79845, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28006, 48935, 0, 0, 0, 1, 1, 23926, 0, -5428.11, -2156.47, 401.491, 0.657959, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28007, 48935, 0, 0, 0, 1, 1, 23926, 0, -5630.67, -978.108, 396.557, 3.07126, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28008, 48935, 0, 0, 0, 1, 1, 36342, 0, -6160.61, 576.014, 385.896, 1.94443, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28009, 48935, 0, 0, 0, 1, 1, 23926, 0, -5695.05, -2149.83, 412.492, 3.6542, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28010, 48935, 0, 0, 0, 1, 1, 36342, 0, -5866.29, -90.9175, 362.829, 6.08081, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28011, 48935, 0, 0, 0, 1, 1, 36342, 0, -5773.96, -428.589, 366.018, 2.64646, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28012, 48935, 0, 0, 0, 1, 1, 36342, 0, -6177.26, 273.585, 388.038, 1.6417, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28013, 48935, 0, 0, 0, 1, 1, 36342, 0, -5228.99, -1379.28, 504.722, 5.94292, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28014, 48935, 0, 0, 0, 1, 1, 23926, 0, -4941.82, -222.569, 456.9, 5.40513, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28015, 48935, 0, 0, 0, 1, 1, 36342, 0, -6320.8, 403.857, 380.51, 3.06931, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28016, 48935, 0, 0, 0, 1, 1, 23926, 0, -5035.93, 455.942, 415.154, 5.64476, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28017, 48935, 0, 0, 0, 1, 1, 23926, 0, -5631.6, -418.606, 388.573, 4.53184, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28018, 48935, 0, 0, 0, 1, 1, 36342, 0, -5576.1, -1520.03, 399.623, 4.59519, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28019, 48935, 0, 0, 0, 1, 1, 23926, 0, -5710.89, -1317.71, 392.654, 2.81367, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28020, 48935, 0, 0, 0, 1, 1, 36342, 0, -5233.8, -803.701, 415.277, 2.35619, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28021, 48935, 0, 0, 0, 1, 1, 36342, 0, -5075.27, 299.444, 396.073, 4.26184, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28022, 48935, 0, 0, 0, 1, 1, 36342, 0, -5406.33, -1049.58, 392.982, 1.78353, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28023, 48935, 0, 0, 0, 1, 1, 23926, 0, -6506.45, 608.055, 394.882, 0.068055, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28024, 48935, 0, 0, 0, 1, 1, 23926, 0, -5277.09, -1750.68, 513.275, 2.45586, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28025, 48935, 0, 0, 0, 1, 1, 23926, 0, -5720.36, -908.725, 400.203, 6.17361, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28026, 48935, 0, 0, 0, 1, 1, 23926, 0, -6256.99, 623.509, 387.611, 0.736588, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28027, 48935, 0, 0, 0, 1, 1, 23926, 0, -5743.75, -955.494, 397.867, 4.71239, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28028, 48935, 0, 0, 0, 1, 1, 36342, 0, -5271.69, -202.88, 441.318, 1.11327, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28029, 48935, 0, 0, 0, 1, 1, 36342, 0, -5558.53, -402.538, 412.605, 3.5755, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28030, 48935, 0, 0, 0, 1, 1, 36342, 0, -5582.49, 335.674, 391.402, 3.88604, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28031, 48935, 0, 0, 0, 1, 1, 36342, 0, -5860.79, -1204.91, 387.072, 4.28366, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28032, 48935, 0, 0, 0, 1, 1, 36342, 0, -5863, -670.363, 398.302, 2.66747, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28033, 48935, 0, 0, 0, 1, 1, 36342, 0, -4947.58, -140.313, 423.148, 1.32629, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28034, 48935, 0, 0, 0, 1, 1, 36342, 0, -5997.83, 18.9667, 402.064, 6.23304, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28035, 48935, 0, 0, 0, 1, 1, 36342, 0, -6129.85, 440.773, 401.186, 1.44935, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28036, 48935, 0, 0, 0, 1, 1, 23926, 0, -6312.63, 477.315, 386.084, 3.03978, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28037, 48935, 0, 0, 0, 1, 1, 36342, 0, -5482.78, -706.885, 404.748, 2.68668, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28038, 48935, 0, 0, 0, 1, 1, 23926, 0, -6407.33, 743.867, 390.624, 6.07697, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28039, 48935, 0, 0, 0, 1, 1, 23926, 0, -5178.94, 342.589, 397.819, 4.19324, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28040, 48935, 0, 0, 0, 1, 1, 23926, 0, -5165.82, -401.298, 389.66, 6.16174, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28041, 48935, 0, 0, 0, 1, 1, 36342, 0, -4901.91, -1668.8, 506.167, 0.284163, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28042, 48935, 0, 0, 0, 1, 1, 36342, 0, -5142.47, -2253.93, 401.025, 3.92605, 90, 7, 0, 8, 0, 1, 0, 0, 0),
(35190, 48935, 0, 0, 0, 1, 1, 23926, 0, -5818.01, -2082.31, 401.258, 5.50744, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(35240, 48935, 0, 0, 0, 1, 1, 36342, 0, -5032.81, 468.229, 411.71, 0.110935, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(35283, 48935, 0, 0, 0, 1, 1, 36342, 0, -5394.36, -611.951, 392.95, 1.809, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41693, 48935, 0, 0, 0, 1, 1, 23926, 0, -5355.21, -832.252, 400.957, 4.71825, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41704, 48935, 0, 0, 0, 1, 1, 23926, 0, -5825.12, -1098.17, 382.443, 1.52785, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41736, 48935, 0, 0, 0, 1, 1, 36342, 0, -6174.73, 691.885, 386.271, 0.75545, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41745, 48935, 0, 0, 0, 1, 1, 23926, 0, -5290.78, -2141.4, 424.434, 0.392838, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41758, 48935, 0, 0, 0, 1, 1, 36342, 0, -5175.65, -1889.16, 528.592, 3.14259, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41781, 48935, 0, 0, 0, 1, 1, 23926, 0, -5686.9, -552.672, 399.051, 0.815776, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41784, 48935, 0, 0, 0, 1, 1, 36342, 0, -6188.37, 286.498, 388.413, 0.928076, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41806, 48935, 0, 0, 0, 1, 1, 23926, 0, -4521.94, -1689.14, 506.679, 5.65726, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41824, 48935, 0, 0, 0, 1, 1, 23926, 0, -5472.85, 340.187, 398.355, 3.15943, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41862, 48935, 0, 0, 0, 1, 1, 36342, 0, -5209.77, -1375.81, 501.222, 3.02225, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41879, 48935, 0, 0, 0, 1, 1, 36342, 0, -5108.96, 209.955, 399.689, 5.6906, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41900, 48935, 0, 0, 0, 1, 1, 36342, 0, -6018.33, -389.989, 414.498, 4.12439, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41902, 48935, 0, 0, 0, 1, 1, 23926, 0, -4978.2, -8.1875, 386.95, 0, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41915, 48935, 0, 0, 0, 1, 1, 36342, 0, -4861.53, -1637.89, 503.475, 0.051241, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41919, 48935, 0, 0, 0, 1, 1, 36342, 0, -6240.68, 788.911, 389.938, 2.44066, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41946, 48935, 0, 0, 0, 1, 1, 36342, 0, -5262.42, -767.805, 395.35, 5.82356, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41976, 48935, 0, 0, 0, 1, 1, 36342, 0, -5871.15, -5.3937, 359.801, 3.28266, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41981, 48935, 0, 0, 0, 1, 1, 36342, 0, -5206.16, -1452.99, 504.599, 0.230309, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41986, 48935, 0, 0, 0, 1, 1, 23926, 0, -5776.29, -841.266, 398.185, 5.76017, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42052, 48935, 0, 0, 0, 1, 1, 36342, 0, -5066.44, 398.737, 429.264, 0.254444, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42064, 48935, 0, 0, 0, 1, 1, 23926, 0, -5910.8, -540.416, 398.182, 1.71332, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42076, 48935, 0, 0, 0, 1, 1, 23926, 0, -5937.9, -474.315, 412.649, 2.07467, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42088, 48935, 0, 0, 0, 1, 1, 23926, 0, -5822.24, 86.8057, 367.178, 2.61591, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42107, 48935, 0, 0, 0, 1, 1, 23926, 0, -5219.02, -180.405, 440.331, 5.69085, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42111, 48935, 0, 0, 0, 1, 1, 23926, 0, -5879.31, -213.876, 361.903, 4.2199, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42137, 48935, 0, 0, 0, 1, 1, 36342, 0, -5825.31, -1310.33, 384.423, 3.91747, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42149, 48935, 0, 0, 0, 1, 1, 23926, 0, -6248.19, 627.064, 388.361, 3.91594, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42158, 48935, 0, 0, 0, 1, 1, 23926, 0, -5538.13, -1104.53, 393.233, 3.43492, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42180, 48935, 0, 0, 0, 1, 1, 23926, 0, -5791.52, -889.442, 397.089, 0.318379, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42182, 48935, 0, 0, 0, 1, 1, 23926, 0, -5141.97, -1911.73, 520.475, 6.27147, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42187, 48935, 0, 0, 0, 1, 1, 36342, 0, -5652.26, 331.323, 387.163, 5.24342, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42203, 48935, 0, 0, 0, 1, 1, 36342, 0, -5928.19, -547.07, 404.824, 1.04265, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42213, 48935, 0, 0, 0, 1, 1, 23926, 0, -5824.23, -327.284, 362.045, 1.71186, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42216, 48935, 0, 0, 0, 1, 1, 23926, 0, -5041.23, 425.603, 424.529, 5.49779, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42228, 48935, 0, 0, 0, 1, 1, 23926, 0, -6406.67, 349.957, 388.846, 5.725, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42283, 48935, 0, 0, 0, 1, 1, 36342, 0, -5020.37, -1714.34, 497.961, 3.68477, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42286, 48935, 0, 0, 0, 1, 1, 23926, 0, -5212.48, -1925.82, 516.324, 1.4013, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42295, 48935, 0, 0, 0, 1, 1, 23926, 0, -4889.62, 59.1513, 386.892, 2.79773, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42318, 48935, 0, 0, 0, 1, 1, 36342, 0, -5299.28, -1719.09, 517.658, 5.14548, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42330, 48935, 0, 0, 0, 1, 1, 23926, 0, -5874.56, -211.374, 360.528, 3.05432, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42343, 48935, 0, 0, 0, 1, 1, 36342, 0, -6309.86, 158.739, 435.673, 4.36397, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42361, 48935, 0, 0, 0, 1, 1, 23926, 0, -5248.56, -1827.93, 532.698, 1.28345, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42370, 48935, 0, 0, 0, 1, 1, 36342, 0, -5641.61, -1418.6, 398.457, 3.70847, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42379, 48935, 0, 0, 0, 1, 1, 23926, 0, -5969.59, -522.205, 407.245, 1.14821, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42392, 48935, 0, 0, 0, 1, 1, 36342, 0, -5776.53, -1160.44, 376.633, 2.36448, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42410, 48935, 0, 0, 0, 1, 1, 23926, 0, -5626.2, -2226.07, 424.771, 4.16748, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42424, 48935, 0, 0, 0, 1, 1, 23926, 0, -4954.12, -1694.36, 504.782, 1.37359, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42428, 48935, 0, 0, 0, 1, 1, 23926, 0, -5255.6, -1078.2, 409.637, 0.982794, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42434, 48935, 0, 0, 0, 1, 1, 23926, 0, -5811.21, -181.566, 352.4, 0.324223, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42480, 48935, 0, 0, 0, 1, 1, 36342, 0, -6361.82, 810.7, 394.119, 2.00353, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42487, 48935, 0, 0, 0, 1, 1, 36342, 0, -6078.18, -340.85, 433.731, 5.32987, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42500, 48935, 0, 0, 0, 1, 1, 23926, 0, -6339.95, 322.128, 379.54, 3.16698, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42510, 48935, 0, 0, 0, 1, 1, 36342, 0, -6311.42, 288.173, 380.627, 1.83369, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42521, 48935, 0, 0, 0, 1, 1, 23926, 0, -5687.32, -1511.73, 399.768, 0.87381, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42533, 48935, 0, 0, 0, 1, 1, 23926, 0, -6258.38, 695.919, 386.939, 4.83432, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42551, 48935, 0, 0, 0, 1, 1, 36342, 0, -5280.57, -543.997, 386.583, 4.60411, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42558, 48935, 0, 0, 0, 1, 1, 23926, 0, -5677.94, 411.225, 389.151, 5.52682, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42574, 48935, 0, 0, 0, 1, 1, 23926, 0, -6086.05, -253.467, 440.458, 0.013671, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42586, 48935, 0, 0, 0, 1, 1, 36342, 0, -5452.91, -498.735, 400.128, 1.25275, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42617, 48935, 0, 0, 0, 1, 1, 23926, 0, -5828.02, -1931.07, 409.83, 2.18424, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42641, 48935, 0, 0, 0, 1, 1, 36342, 0, -6453.24, 678.458, 387.736, 3.23417, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42644, 48935, 0, 0, 0, 1, 1, 23926, 0, -5257.61, -393.537, 399.627, 1.07523, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42652, 48935, 0, 0, 0, 1, 1, 23926, 0, -6417.35, 569.81, 386.744, 1.7079, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42683, 48935, 0, 0, 0, 1, 1, 36342, 1, -5022.13, -2172.11, 410.874, 0.86831, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42705, 48935, 0, 0, 0, 1, 1, 36342, 0, -4841.68, 58.4066, 402.993, 4.44122, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42739, 48935, 0, 0, 0, 1, 1, 23926, 0, -5708.39, -375.476, 366.143, 6.24722, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42744, 48935, 0, 0, 0, 1, 1, 36342, 0, -5533.26, -712.666, 409.126, 5.25214, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42761, 48935, 0, 0, 0, 1, 1, 36342, 0, -5688.57, -599.355, 401.91, 4.92779, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42780, 48935, 0, 0, 0, 1, 1, 36342, 0, -5624.16, -1240.58, 390.055, 6.23353, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42789, 48935, 0, 0, 0, 1, 1, 23926, 0, -5293.16, -1635.09, 499.823, 4.63622, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42796, 48935, 0, 0, 0, 1, 1, 23926, 0, -5232.99, -1961.55, 531.199, 0.313721, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42812, 48935, 0, 0, 0, 1, 1, 36342, 0, -5561.35, -972.1, 397.179, 1.31168, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42833, 48935, 0, 0, 0, 1, 1, 23926, 0, -6213.91, 580.109, 387.111, 1.52832, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42874, 48935, 0, 0, 0, 1, 1, 23926, 0, -5448.9, -651.404, 392.799, 0.784247, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42899, 48935, 0, 0, 0, 1, 1, 36342, 0, -4357.29, -1641.48, 317.112, 3.12206, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42915, 48935, 0, 0, 0, 1, 1, 36342, 0, -5581.66, -978.522, 393.131, 3.52326, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42965, 48935, 0, 0, 0, 1, 1, 23926, 0, -4948.12, -1656.41, 505.242, 2.6157, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42978, 48935, 0, 0, 0, 1, 1, 23926, 0, -5765.66, -2193.38, 411.866, 6.05668, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42997, 48935, 0, 0, 0, 1, 1, 36342, 0, -5083.23, -2195.77, 408.293, 2.85257, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43011, 48935, 0, 0, 0, 1, 1, 36342, 0, -5535.51, -616.343, 407.88, 4.40915, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43024, 48935, 0, 0, 0, 1, 1, 36342, 0, -5479.09, -1003.01, 392.699, 2.27455, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43027, 48935, 0, 0, 0, 1, 1, 23926, 0, -5217.63, -1912.78, 516.245, 6.2148, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43050, 48935, 0, 0, 0, 1, 1, 23926, 0, -5048.07, -1618.15, 506.419, 5.83688, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43059, 48935, 0, 0, 0, 1, 1, 36342, 0, -6415.39, 483.116, 382.846, 3.8869, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43062, 48935, 0, 0, 0, 1, 1, 23926, 0, -5042.71, 319.791, 402.938, 4.7453, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43068, 48935, 0, 0, 0, 1, 1, 23926, 0, -5969.79, -188.345, 400.984, 1.46361, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43078, 48935, 0, 0, 0, 1, 1, 36342, 0, -5344.24, -525.62, 391.591, 2.94038, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43096, 48935, 0, 0, 0, 1, 1, 23926, 0, -4805.73, -1714.06, 506.199, 3.26307, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43104, 48935, 0, 0, 0, 1, 1, 36342, 0, -5872.04, -675.554, 399.849, 3.57291, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43110, 48935, 0, 0, 0, 1, 1, 23926, 0, -5847.99, -1377.75, 394.485, 1.34342, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43115, 48935, 0, 0, 0, 1, 1, 23926, 0, -4549.26, -1735.15, 504.115, 2.25852, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43145, 48935, 0, 0, 0, 1, 1, 23926, 0, -5277.03, -1850.96, 514.363, 4.31782, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43155, 48935, 0, 0, 0, 1, 1, 36342, 0, -5786.8, -878.102, 397.06, 2.90088, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121986, 48935, 1, 0, 0, 1, 1, 36342, 0, 6470.55, -3038.88, 574.313, 4.30692, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121987, 48935, 1, 0, 0, 1, 1, 23926, 0, 7420.75, -5021.99, 726.323, 3.01033, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121988, 48935, 1, 0, 0, 1, 1, 36342, 0, 6726.92, -2525.15, 544.719, 3.83158, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121989, 48935, 1, 0, 0, 1, 1, 36342, 0, 7890.44, -3967.19, 721.945, 1.3481, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121990, 48935, 1, 0, 0, 1, 1, 36342, 0, 5928.56, -4512.08, 718.134, 2.54764, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121991, 48935, 1, 0, 0, 1, 1, 23926, 0, 6079.64, -4442.49, 687.206, 3.10251, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121993, 48935, 1, 0, 0, 1, 1, 36342, 0, 6516.99, -2775.58, 567.256, 5.4243, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121995, 48935, 1, 0, 0, 1, 1, 36342, 0, 6839.64, -2623.58, 585.465, 1.91106, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121996, 48935, 1, 0, 0, 1, 1, 36342, 0, 6549.89, -4547.41, 707.522, 3.41238, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121997, 48935, 1, 0, 0, 1, 1, 36342, 0, 6193.3, -4322.22, 736.177, 3.23941, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121998, 48935, 1, 0, 0, 1, 1, 23926, 0, 6977.74, -4014.61, 721.498, 1.36967, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121999, 48935, 1, 0, 0, 1, 1, 36342, 0, 6790.51, -2515.63, 552.821, 3.43277, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122000, 48935, 1, 0, 0, 1, 1, 23926, 0, 6792.47, -2587.64, 557.267, 1.76551, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122001, 48935, 1, 0, 0, 1, 1, 36342, 0, 6427, -2746.93, 568.073, 2.7317, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122002, 48935, 1, 0, 0, 1, 1, 36342, 0, 7492.77, -4135.15, 688.193, 1.00474, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122003, 48935, 1, 0, 0, 1, 1, 23926, 0, 6599.05, -2783.4, 568.76, 3.87511, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122004, 48935, 1, 0, 0, 1, 1, 36342, 0, 6744.37, -2615.64, 545.044, 2.8869, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122005, 48935, 1, 0, 0, 1, 1, 36342, 0, 7240.38, -4826.7, 689.704, 0.98902, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122006, 48935, 1, 0, 0, 1, 1, 36342, 0, 7442.66, -4163.24, 686.43, 4.77395, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122007, 48935, 1, 0, 0, 1, 1, 36342, 0, 6408.8, -5075.55, 750.437, 4.56137, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122008, 48935, 1, 0, 0, 1, 1, 36342, 0, 6426.21, -3045.55, 575.804, 1.60789, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122009, 48935, 1, 0, 0, 1, 1, 23926, 0, 6103.86, -4314.14, 726.63, 5.96545, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122010, 48935, 1, 0, 0, 1, 1, 23926, 0, 7210.16, -4051.81, 719.506, 4.04894, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122011, 48935, 1, 0, 0, 1, 1, 23926, 0, 6182.54, -5088.26, 787.316, 2.74648, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122012, 48935, 1, 0, 0, 1, 1, 36342, 0, 6403.1, -4823.53, 724.739, 4.6714, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122013, 48935, 1, 0, 0, 1, 1, 23926, 0, 8091.52, -3874.82, 695.794, 2.73388, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122014, 48935, 1, 0, 0, 1, 1, 23926, 0, 6621.95, -2676.44, 533.019, 2.50161, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122015, 48935, 1, 0, 0, 1, 1, 23926, 0, 7229.11, -4962.58, 725.451, 3.65302, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122016, 48935, 1, 0, 0, 1, 1, 23926, 0, 6758.03, -4135.52, 711.094, 4.81517, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122017, 48935, 1, 0, 0, 1, 1, 36342, 0, 6288.9, -5044.78, 770.373, 2.98271, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122019, 48935, 1, 0, 0, 1, 1, 23926, 0, 7456.37, -4729.4, 647.276, 1.15168, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122020, 48935, 1, 0, 0, 1, 1, 36342, 0, 6773.5, -2722.77, 565.489, 2.46338, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122021, 48935, 1, 0, 0, 1, 1, 36342, 0, 7417.86, -4352.58, 674.322, 2.42143, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122022, 48935, 1, 0, 0, 1, 1, 36342, 0, 6063.67, -4369.01, 716.507, 3.94979, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122023, 48935, 1, 0, 0, 1, 1, 36342, 0, 7227.61, -4016.33, 729.466, 1.10016, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122024, 48935, 1, 0, 0, 1, 1, 23926, 0, 7611.84, -3828.68, 686.831, 3.53319, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122025, 48935, 1, 0, 0, 1, 1, 23926, 0, 7884.34, -4609.72, 709.539, 0.117451, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122026, 48935, 1, 0, 0, 1, 1, 23926, 0, 6777.93, -3005.69, 577.049, 2.95651, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122027, 48935, 1, 0, 0, 1, 1, 23926, 0, 6453.48, -3371.64, 598.778, 6.08866, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122028, 48935, 1, 0, 0, 1, 1, 23926, 0, 6899.42, -4045.3, 702.95, 2.39628, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122029, 48935, 1, 0, 0, 1, 1, 36342, 0, 6226.11, -5022.62, 777.73, 4.99941, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122030, 48935, 1, 0, 0, 1, 1, 23926, 0, 6452.13, -3860.85, 674.35, 1.05213, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122031, 48935, 1, 0, 0, 1, 1, 36342, 0, 6426.1, -2489.96, 552.468, 0.813015, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122032, 48935, 1, 0, 0, 1, 1, 36342, 0, 6492.8, -3190.62, 569.592, 4.90536, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122033, 48935, 1, 0, 0, 1, 1, 36342, 0, 6422.83, -2549.53, 554.324, 1.47952, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122034, 48935, 1, 0, 0, 1, 1, 36342, 0, 6644.02, -2468.23, 538.573, 0.630806, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122035, 48935, 1, 0, 0, 1, 1, 23926, 0, 6330.16, -2416.3, 551.967, 4.56427, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122036, 48935, 1, 0, 0, 1, 1, 23926, 0, 7672.98, -3938.62, 699.406, 5.5254, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122037, 48935, 1, 0, 0, 1, 1, 36342, 0, 6396.82, -3153.75, 605.202, 6.05894, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122038, 48935, 1, 0, 0, 1, 1, 23926, 0, 6056.33, -4750.68, 783.463, 0.365631, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122039, 48935, 1, 0, 0, 1, 1, 23926, 0, 6676.46, -2565.42, 526.359, 3.93598, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122040, 48935, 1, 0, 0, 1, 1, 36342, 0, 6241.13, -4541.79, 695.354, 4.5861, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122041, 48935, 1, 0, 0, 1, 1, 23926, 0, 6338.97, -4011.13, 693.958, 3.4207, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122042, 48935, 1, 0, 0, 1, 1, 36342, 0, 7552.77, -4483.61, 605.236, 4.48381, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122043, 48935, 1, 0, 0, 1, 1, 36342, 0, 6059.55, -4639.95, 714.498, 1.8153, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122044, 48935, 1, 0, 0, 1, 1, 36342, 0, 6360.76, -4789.75, 744.593, 0.783356, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122045, 48935, 1, 0, 0, 1, 1, 23926, 0, 5838.85, -4690.74, 756.165, 3.17024, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122047, 48935, 1, 0, 0, 1, 1, 36342, 0, 6448.87, -3134.17, 571.729, 3.91939, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122048, 48935, 1, 0, 0, 1, 1, 23926, 0, 6811.49, -4111.33, 715.43, 3.36005, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122049, 48935, 1, 0, 0, 1, 1, 36342, 0, 6660.29, -2949.97, 574.522, 4.44657, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122050, 48935, 1, 0, 0, 1, 1, 23926, 0, 6654.2, -3145.89, 599.987, 6.04271, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122051, 48935, 1, 0, 0, 1, 1, 23926, 0, 6432.96, -4431.3, 727.165, 5.44114, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122052, 48935, 1, 0, 0, 1, 1, 23926, 0, 6017.25, -4955.7, 762.244, 2.05277, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122053, 48935, 1, 0, 0, 1, 1, 23926, 0, 6666.36, -2532.29, 529.688, 5.59258, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122054, 48935, 1, 0, 0, 1, 1, 23926, 0, 6951.15, -5119.6, 696.066, 4.8634, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122055, 48935, 1, 0, 0, 1, 1, 36342, 0, 6617.72, -3908.39, 660.809, 1.14204, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122056, 48935, 1, 0, 0, 1, 1, 23926, 0, 6787.38, -2438.59, 550.229, 6.25195, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122057, 48935, 1, 0, 0, 1, 1, 36342, 0, 6621.3, -4916.76, 704.697, 3.98236, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122059, 48935, 1, 0, 0, 1, 1, 23926, 0, 7514.26, -4296.78, 644.533, 1.47404, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122060, 48935, 1, 0, 0, 1, 1, 23926, 0, 7541.17, -5007.36, 705.733, 4.10406, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122061, 48935, 1, 0, 0, 1, 1, 23926, 0, 6466.97, -3587.23, 679.695, 0.79575, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122062, 48935, 1, 0, 0, 1, 1, 36342, 0, 6924.59, -3973.43, 736.003, 1.29113, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122063, 48935, 1, 0, 0, 1, 1, 36342, 0, 6856.5, -3044.33, 605.215, 5.279, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122064, 48935, 1, 0, 0, 1, 1, 23926, 0, 6566.93, -3331.25, 601.212, 3.14159, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122065, 48935, 1, 0, 0, 1, 1, 36342, 0, 6679.81, -3092.64, 575.735, 4.6997, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122066, 48935, 1, 0, 0, 1, 1, 23926, 0, 7099.69, -4068.34, 714.162, 1.20425, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122067, 48935, 1, 0, 0, 1, 1, 23926, 0, 7286.14, -4923.5, 716.01, 2.8464, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122068, 48935, 1, 0, 0, 1, 1, 36342, 0, 6718.03, -4398.44, 740.13, 4.90002, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122069, 48935, 1, 0, 0, 1, 1, 36342, 0, 6577.88, -2939.63, 596.932, 2.18473, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122070, 48935, 1, 0, 0, 1, 1, 23926, 0, 6287.17, -3937.81, 702.312, 5.08328, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122071, 48935, 1, 0, 0, 1, 1, 23926, 0, 6448.87, -2849.88, 585.002, 2.03444, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122072, 48935, 1, 0, 0, 1, 1, 36342, 0, 6445.6, -2643.75, 554.867, 1.94462, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122073, 48935, 1, 0, 0, 1, 1, 36342, 0, 7227.61, -4110.55, 711.748, 0.151578, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122074, 48935, 1, 0, 0, 1, 1, 36342, 0, 6573.9, -2890.78, 597.783, 0.657959, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122075, 48935, 1, 0, 0, 1, 1, 36342, 0, 6494.98, -3293.31, 574.799, 0.023433, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122076, 48935, 1, 0, 0, 1, 1, 36342, 0, 5952.33, -4403.12, 727.357, 3.14159, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122077, 48935, 1, 0, 0, 1, 1, 36342, 0, 6523.37, -3374.79, 591.829, 2.05258, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122078, 48935, 1, 0, 0, 1, 1, 23926, 0, 6508.69, -3240.24, 572.564, 6.08062, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122079, 48935, 1, 0, 0, 1, 1, 36342, 0, 6082.75, -4515.55, 679.606, 4.7391, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122080, 48935, 1, 0, 0, 1, 1, 36342, 0, 6456.79, -2877.23, 573.252, 0.872071, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122081, 48935, 1, 0, 0, 1, 1, 23926, 0, 7533.63, -4635.83, 643.957, 5.66214, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122082, 48935, 1, 0, 0, 1, 1, 23926, 0, 7603.24, -3913.38, 687.184, 2.78465, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122083, 48935, 1, 0, 0, 1, 1, 23926, 0, 6465.35, -3111.85, 572.776, 3.15917, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122084, 48935, 1, 0, 0, 1, 1, 23926, 0, 7598.2, -4938.84, 697.298, 6.21083, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122085, 48935, 1, 0, 0, 1, 1, 23926, 0, 7598.6, -4579.43, 636.035, 3.3842, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122086, 48935, 1, 0, 0, 1, 1, 23926, 0, 5985.58, -4540.13, 708.272, 0.03127, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122087, 48935, 1, 0, 0, 1, 1, 36342, 0, 7968.01, -3792.03, 698.124, 0.599372, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122088, 48935, 1, 0, 0, 1, 1, 23926, 0, 6746.94, -4887.7, 772.597, 4.67237, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122089, 48935, 1, 0, 0, 1, 1, 23926, 0, 6002.7, -4655.75, 737.021, 0.098792, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122091, 48935, 1, 0, 0, 1, 1, 36342, 0, 7225.16, -4074.32, 717.897, 4.46708, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122092, 48935, 1, 0, 0, 1, 1, 36342, 0, 7961.19, -3925.97, 690.888, 1.82509, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122093, 48935, 1, 0, 0, 1, 1, 36342, 0, 7923.12, -4535.69, 699.947, 2.71901, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122094, 48935, 1, 0, 0, 1, 1, 23926, 0, 6204.96, -4186.61, 731.885, 2.8869, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122095, 48935, 1, 0, 0, 1, 1, 23926, 0, 5953.49, -4577.81, 714.005, 5.82784, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122096, 48935, 1, 0, 0, 1, 1, 36342, 0, 6127.9, -4824.26, 741.253, 0.277769, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122097, 48935, 1, 0, 0, 1, 1, 23926, 0, 7472.65, -4957.18, 694.465, 0.733613, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122098, 48935, 1, 0, 0, 1, 1, 36342, 0, 6155.58, -4310.61, 736.726, 1.31208, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122099, 48935, 1, 0, 0, 1, 1, 23926, 0, 8047.18, -3860.02, 696.537, 0.11357, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122100, 48935, 1, 0, 0, 1, 1, 36342, 0, 5678.68, -5003.05, 807.148, 3.0218, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122101, 48935, 1, 0, 0, 1, 1, 36342, 0, 7896.88, -4447.8, 700.984, 1.46458, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122102, 48935, 1, 0, 0, 1, 1, 23926, 0, 6809.33, -4205.45, 716.693, 2.00189, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122103, 48935, 1, 0, 0, 1, 1, 36342, 0, 7781, -4605.09, 689.239, 3.69491, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122104, 48935, 1, 0, 0, 1, 1, 36342, 0, 6479.08, -2559.64, 573.643, 2.70809, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122105, 48935, 1, 0, 0, 1, 1, 36342, 0, 6410.11, -3560.17, 697.624, 5.70439, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122106, 48935, 1, 0, 0, 1, 1, 36342, 0, 6609.64, -4444.46, 706.898, 6.23649, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122107, 48935, 1, 0, 0, 1, 1, 36342, 0, 6697.7, -2456.42, 541.456, 6.05787, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122108, 48935, 1, 0, 0, 1, 1, 36342, 0, 6896.81, -2336.69, 567.564, 3.69994, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122109, 48935, 1, 0, 0, 1, 1, 36342, 0, 6416.21, -2408.37, 562.301, 3.73176, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122110, 48935, 1, 0, 0, 1, 1, 36342, 0, 6792.69, -2690.89, 548.42, 0.128715, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122112, 48935, 1, 0, 0, 1, 1, 36342, 0, 7777.38, -4493.3, 659.955, 5.21532, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122113, 48935, 1, 0, 0, 1, 1, 36342, 0, 5904.08, -4575.31, 728.92, 0.009765, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122114, 48935, 1, 0, 0, 1, 1, 36342, 0, 6513.91, -2846.64, 583.894, 5.85842, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122115, 48935, 1, 0, 0, 1, 1, 23926, 0, 6459.52, -3624.31, 708.186, 3.42916, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122116, 48935, 1, 0, 0, 1, 1, 23926, 0, 7452.98, -4518.25, 600.878, 2.53669, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122117, 48935, 1, 0, 0, 1, 1, 36342, 0, 6447.2, -3087.19, 570.957, 6.15545, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122118, 48935, 1, 0, 0, 1, 1, 36342, 0, 6741.11, -3096.36, 573.682, 5.71408, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122119, 48935, 1, 0, 0, 1, 1, 23926, 0, 7185.59, -4902.28, 710.008, 4.34241, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122120, 48935, 1, 0, 0, 1, 1, 23926, 0, 7321.32, -5039.82, 728.43, 3.65201, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122122, 48935, 1, 0, 0, 1, 1, 36342, 0, 6592.09, -2721.78, 555.144, 1.28612, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122123, 48935, 1, 0, 0, 1, 1, 36342, 0, 5948.6, -4671.11, 746.532, 2.86678, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122124, 48935, 1, 0, 0, 1, 1, 23926, 0, 6729.17, -2610.69, 540.773, 1.5708, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122125, 48935, 1, 0, 0, 1, 1, 36342, 0, 6705.21, -2604.79, 534.023, 0.539754, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122126, 48935, 1, 0, 0, 1, 1, 23926, 0, 6609.18, -3826.98, 654.156, 5.58795, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122127, 48935, 1, 0, 0, 1, 1, 23926, 0, 6772.28, -2557.41, 553.435, 4.55807, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122128, 48935, 1, 0, 0, 1, 1, 36342, 0, 6411.94, -2946.88, 593.054, 3.82537, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122129, 48935, 1, 0, 0, 1, 1, 23926, 0, 6800.28, -3097.38, 583.093, 2.45373, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122130, 48935, 1, 0, 0, 1, 1, 36342, 0, 6060.87, -4693.6, 749.935, 4.46404, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122131, 48935, 1, 0, 0, 1, 1, 23926, 0, 6256.88, -4756.3, 754.276, 6.07493, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122132, 48935, 1, 0, 0, 1, 1, 36342, 0, 6493.42, -4806.92, 705.042, 0.326074, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122133, 48935, 1, 0, 0, 1, 1, 36342, 0, 7378.64, -4560.73, 593.649, 2.03444, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122134, 48935, 1, 0, 0, 1, 1, 23926, 0, 6015.67, -4628.5, 720.055, 1.20769, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122136, 48935, 1, 0, 0, 1, 1, 36342, 0, 7443.32, -4053.66, 695.618, 0.501217, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122137, 48935, 1, 0, 0, 1, 1, 36342, 0, 8204.87, -3802.89, 701.968, 3.24576, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122138, 48935, 1, 0, 0, 1, 1, 23926, 0, 6152.78, -4676.14, 719.378, 3.09861, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122139, 48935, 1, 0, 0, 1, 1, 36342, 0, 7291.67, -4758.33, 675.035, 2.71907, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122140, 48935, 1, 0, 0, 1, 1, 36342, 0, 6572.55, -2849.77, 594.312, 5.74829, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122141, 48935, 1, 0, 0, 1, 1, 36342, 0, 6553.76, -4987.43, 715.113, 2.85229, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122142, 48935, 1, 0, 0, 1, 1, 23926, 0, 5885.23, -4660.39, 747.049, 4.74558, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122143, 48935, 1, 0, 0, 1, 1, 36342, 0, 5976.65, -4477.06, 704.728, 3.31044, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122144, 48935, 1, 0, 0, 1, 1, 36342, 0, 7074.27, -5037.7, 713.07, 5.54957, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122145, 48935, 1, 0, 0, 1, 1, 36342, 0, 6379.1, -4552.46, 749.795, 2.07598, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122146, 48935, 1, 0, 0, 1, 1, 36342, 0, 7282.68, -4056.34, 707.546, 5.5627, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122147, 48935, 1, 0, 0, 1, 1, 36342, 0, 7506.6, -4804.87, 686.807, 1.59521, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122148, 48935, 1, 0, 0, 1, 1, 23926, 0, 6675.41, -2401.3, 550.277, 2.06088, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122149, 48935, 1, 0, 0, 1, 1, 36342, 0, 6439.77, -3293.47, 591.133, 3.90528, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122150, 48935, 1, 0, 0, 1, 1, 36342, 0, 5914.71, -4821.18, 756.45, 4.71402, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122151, 48935, 1, 0, 0, 1, 1, 23926, 0, 7930.38, -3861.16, 695.923, 3.95023, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122152, 48935, 1, 0, 0, 1, 1, 23926, 0, 8075.04, -3962.8, 690.081, 0.545064, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122153, 48935, 1, 0, 0, 1, 1, 36342, 0, 6692.76, -2672.93, 533.868, 5.83334, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122154, 48935, 1, 0, 0, 1, 1, 23926, 0, 6213.95, -4411.4, 681.194, 1.04227, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122155, 48935, 1, 0, 0, 1, 1, 36342, 0, 7054.21, -4092.85, 700.781, 0.058641, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122156, 48935, 1, 0, 0, 1, 1, 23926, 0, 6556.12, -3857.04, 658.214, 2.12689, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122157, 48935, 1, 0, 0, 1, 1, 23926, 0, 6646.9, -2653.76, 529.948, 4.00256, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122158, 48935, 1, 0, 0, 1, 1, 36342, 0, 6981.11, -3983.57, 734.129, 1.33198, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122159, 48935, 1, 0, 0, 1, 1, 23926, 0, 6398.13, -4997.69, 744.537, 5.51436, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122160, 48935, 1, 0, 0, 1, 1, 36342, 0, 7655.16, -4471.52, 623.91, 1.53611, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122161, 48935, 1, 0, 0, 1, 1, 23926, 0, 6373.72, -3490.86, 693.259, 5.34447, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122162, 48935, 1, 0, 0, 1, 1, 23926, 0, 6325.36, -4375.91, 728.087, 0.30137, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(279999, 48935, 1, 0, 0, 1, 1, 0, 0, 5688.86, -4549.2, 764.212, 3.40647, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280008, 48935, 1, 0, 0, 1, 1, 0, 0, 5789.29, -4605.69, 761.312, 0.00707437, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280009, 48935, 1, 0, 0, 1, 1, 0, 0, 5757.94, -4730.1, 775.288, 2.83373, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280012, 48935, 1, 0, 0, 1, 1, 0, 0, 5775.67, -4969.07, 836.029, 5.82347, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280016, 48935, 1, 0, 0, 1, 1, 0, 0, 5718.67, -4905.68, 798.984, 3.13183, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280031, 48935, 1, 0, 0, 1, 1, 0, 0, 5616.14, -4616.31, 774.489, 0.809619, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280035, 48935, 1, 0, 0, 1, 1, 0, 0, 5611.81, -4771.65, 779.1, 5.01446, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280045, 48935, 1, 0, 0, 1, 1, 0, 0, 5525.71, -4950.18, 842.787, 4.56137, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280050, 48935, 1, 0, 0, 1, 1, 0, 0, 5476.76, -4870.91, 869.488, 1.79021, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280056, 48935, 1, 0, 0, 1, 1, 0, 0, 5503.84, -4768.61, 789.301, 4.49775, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280096, 48935, 1, 0, 0, 1, 1, 0, 0, 5288.27, -4456.38, 840.016, 1.94604, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280130, 48935, 1, 0, 0, 1, 1, 0, 0, 5198.97, -4454.23, 856.894, 0.871808, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280140, 48935, 1, 0, 0, 1, 1, 0, 0, 5143.46, -4569.37, 842.062, 0.25578, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280144, 48935, 1, 0, 0, 1, 1, 0, 0, 5155.01, -4674.64, 830.417, 1.70816, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280154, 48935, 1, 0, 0, 1, 1, 0, 0, 5092.1, -4913.07, 872.462, 1.26756, 120, 7.786, 0, 1, 1, 1, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=41544;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(21052, 41544, 0, 0, 0, 1, 1, 32332, 0, -5773.91, -1302.45, 386.892, 3.15465, 90, 5, 0, 156, 0, 1, 0, 0, 2048),
(21053, 41544, 0, 0, 0, 1, 1, 32332, 0, -5795.04, -1081.16, 384.558, 2.68067, 90, 10, 0, 156, 0, 1, 0, 0, 2048),
(21054, 41544, 0, 0, 0, 1, 1, 32333, 0, -5859.86, -1190.15, 383.563, 5.07399, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(21055, 41544, 0, 0, 0, 1, 1, 32332, 0, -5850.45, -1393.99, 396.36, 1.13798, 90, 10, 0, 156, 0, 1, 0, 0, 2048),
(41886, 41544, 0, 0, 0, 1, 1, 32332, 0, -5751.66, -1237.06, 380.627, 6.18399, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(42247, 41544, 0, 0, 0, 1, 1, 32332, 0, -5832.86, -1097.4, 382.294, 4.92174, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(42383, 41544, 0, 0, 0, 1, 1, 32333, 0, -5714.65, -1237.6, 388.678, 2.1933, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(49748, 41544, 0, 0, 0, 1, 1, 0, 0, -5708.86, -1318.49, 392.307, 1.63097, 90, 0, 0, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=41539;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(21056, 41539, 0, 0, 0, 1, 1, 10002, 0, -5713.55, -1293.18, 390.9, 2.04527, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21057, 41539, 0, 0, 0, 1, 1, 10003, 0, -5825.96, -1198.99, 379.026, 3.5414, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21058, 41539, 0, 0, 0, 1, 1, 10002, 0, -5845.3, -1274.7, 387.208, 2.94551, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21059, 41539, 0, 0, 0, 1, 1, 10001, 0, -5719.9, -1253.74, 389.067, 0.078271, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21060, 41539, 0, 0, 0, 1, 1, 10001, 0, -5715.75, -1329.48, 393.029, 1.03926, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21061, 41539, 0, 0, 0, 1, 1, 10001, 0, -5757.11, -1140.87, 379.986, 2.25609, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21062, 41539, 0, 0, 0, 1, 1, 10002, 0, -5726.57, -1153.32, 381.907, 4.00989, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21063, 41539, 0, 0, 0, 1, 1, 10001, 0, -5828.04, -1155.38, 378.168, 2.1842, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21064, 41539, 0, 0, 0, 1, 1, 10002, 0, -5847.75, -1073.9, 387.292, 5.29174, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21065, 41539, 0, 0, 0, 1, 1, 10002, 0, -5856.21, -1223.98, 390.417, 0.620476, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21066, 41539, 0, 0, 0, 1, 1, 10003, 0, -5807.12, -1134.12, 378.543, 4.51221, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21067, 41539, 0, 0, 0, 1, 1, 10002, 0, -5783.59, -1069.04, 385.261, 0.887816, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(41978, 41539, 0, 0, 0, 1, 1, 10001, 0, -5877.08, -1091.17, 382.357, 3.96289, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42051, 41539, 0, 0, 0, 1, 1, 10002, 0, -5865.99, -1156.93, 380.166, 5.22499, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42138, 41539, 0, 0, 0, 1, 1, 10003, 0, -5750.76, -1314.52, 389.983, 2.0384, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42144, 41539, 0, 0, 0, 1, 1, 10003, 0, -5885.28, -1187.77, 392.083, 1.91106, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42202, 41539, 0, 0, 0, 1, 1, 10003, 0, -5809.76, -1268.92, 380.399, 2.81737, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42362, 41539, 0, 0, 0, 1, 1, 10001, 0, -5713.11, -1208.41, 385.688, 4.00715, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42537, 41539, 0, 0, 0, 1, 1, 10002, 0, -5808.18, -1308.39, 384.548, 5.55311, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42660, 41539, 0, 0, 0, 1, 1, 10002, 0, -5851.74, -1347.54, 390.7, 2.27179, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42834, 41539, 0, 0, 0, 1, 1, 10003, 0, -5735.91, -1178.37, 378.808, 5.70656, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42960, 41539, 0, 0, 0, 1, 1, 10003, 0, -5724.46, -1112.03, 384.35, 2.11348, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(43085, 41539, 0, 0, 0, 1, 1, 10002, 0, -5779.23, -1252.78, 379.576, 3.1253, 90, 5, 0, 176, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=1196;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(53530, 1196, 0, 0, 0, 1, 1, 0, 0, -5473.11, -2141.55, 413.534, 1.07831, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53531, 1196, 0, 0, 0, 1, 1, 0, 0, -5456.15, -1880.89, 401.226, 1.53009, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53532, 1196, 0, 0, 0, 1, 1, 0, 0, -5534.02, -1472.99, 406.75, 5.334, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53533, 1196, 0, 0, 0, 1, 1, 0, 0, -5845.32, -1395.74, 396.508, 4.85732, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53534, 1196, 0, 0, 0, 1, 1, 0, 0, -5888.73, -1089.28, 383.122, 3.0675, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53535, 1196, 0, 0, 0, 1, 1, 0, 0, -5744.2, -1200.85, 384.621, 4.34899, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53536, 1196, 0, 0, 0, 1, 1, 0, 0, -5583.75, -1116.98, 390.672, 3.9031, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53537, 1196, 0, 0, 0, 1, 1, 0, 0, -5297.75, -968.592, 389.809, 3.75646, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53539, 1196, 0, 0, 0, 1, 1, 0, 0, -5643.36, -677.035, 403.874, 0.060591, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53540, 1196, 0, 0, 0, 1, 1, 0, 0, -5293.4, -717.5, 388.457, 5.09433, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53541, 1196, 0, 0, 0, 1, 1, 0, 0, -5921.85, -624.993, 399.652, 3.57032, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53542, 1196, 0, 0, 0, 1, 1, 0, 0, -5955.3, -498.318, 409.149, 5.07905, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53543, 1196, 0, 0, 0, 1, 1, 0, 0, -5199.99, -114.405, 407.844, 2.00034, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53544, 1196, 0, 0, 0, 1, 1, 0, 0, -5242.6, -56.3073, 396.17, 5.92624, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53545, 1196, 0, 0, 0, 1, 1, 0, 0, -5303.76, -94.899, 400.886, 4.5204, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53546, 1196, 0, 0, 0, 1, 1, 0, 0, -5285.84, -75.1347, 401.91, 1.5708, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53547, 1196, 0, 0, 0, 1, 1, 0, 0, -5056.07, 68.3708, 395.328, 5.66157, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53548, 1196, 0, 0, 0, 1, 1, 0, 0, -5417.8, 34.0006, 414.617, 5.90087, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53549, 1196, 0, 0, 0, 1, 1, 0, 0, -5319.32, -26.9008, 393.778, 5.9792, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53550, 1196, 0, 0, 0, 1, 1, 0, 0, -5833.81, 300.745, 420.966, 5.6057, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53551, 1196, 0, 0, 0, 1, 1, 0, 0, -5515.43, 212.82, 399.737, 5.67476, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53552, 1196, 0, 0, 0, 1, 1, 0, 0, -5574.92, 338.128, 391.483, 4.78926, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53554, 1196, 0, 0, 0, 1, 1, 0, 0, -5217.14, 277.976, 396.184, 2.24331, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53555, 1196, 0, 0, 0, 1, 1, 0, 0, -5264.65, 315.338, 396.436, 4.78078, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53556, 1196, 0, 0, 0, 1, 1, 0, 0, -5240.07, 359.182, 397.237, 0.634801, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53560, 1196, 0, 0, 0, 1, 1, 0, 0, -5437.89, 406.142, 391.565, 1.4278, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53563, 1196, 0, 0, 0, 1, 1, 0, 0, -5722.07, 487.089, 394.889, 2.4611, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53564, 1196, 0, 0, 0, 1, 1, 0, 0, -5689.31, 522.743, 388.005, 2.02134, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53565, 1196, 0, 0, 0, 1, 1, 0, 0, -5707.71, 555.298, 393.455, 5.94476, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53569, 1196, 0, 0, 0, 1, 1, 0, 0, -5145.86, 236.282, 397.908, 6.27733, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53570, 1196, 0, 0, 0, 1, 1, 0, 0, -5085.34, 159.369, 397.85, 3.00052, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53571, 1196, 0, 0, 0, 1, 1, 0, 0, -4929.46, 116.813, 388.485, 1.23168, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53572, 1196, 0, 0, 0, 1, 1, 0, 0, -4871.85, 99.7302, 389.402, 5.81539, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53573, 1196, 0, 0, 0, 1, 1, 0, 0, -4877.07, 20.2735, 388.366, 2.92886, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53574, 1196, 0, 0, 0, 1, 1, 0, 0, -4990.84, -58.1003, 386.758, 2.88709, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53575, 1196, 0, 0, 0, 1, 1, 0, 0, -4834.81, -228.943, 399.104, 6.26547, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53576, 1196, 0, 0, 0, 1, 1, 0, 0, -4822.03, -356.884, 396.206, 6.185, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53577, 1196, 0, 0, 0, 1, 1, 0, 0, -5957.03, -480.463, 408.535, 2.05878, 90, 10, 0, 164, 0, 1, 0, 0, 0);

-- http://ru.wowhead.com/quest=25932
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 25932;

DELETE FROM `creature_equip_template` WHERE (`entry`=1388);

DELETE FROM `creature` WHERE `id`=42170;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20818, 42170, 0, 0, 0, 1, 1, 954, 0, -5674.24, -2122.3, 401.065, 1.81514, 90, 13, 0, 176, 0, 1, 0, 0, 2048),
(20819, 42170, 0, 0, 0, 1, 1, 954, 0, -5511.04, -2100.34, 404.408, 1.20517, 90, 13, 0, 176, 0, 1, 0, 0, 2048),
(20820, 42170, 0, 0, 0, 1, 1, 954, 0, -5723.52, -1906.78, 400.623, 5.3327, 90, 17, 0, 176, 0, 1, 0, 0, 2048),
(20821, 42170, 0, 0, 0, 1, 1, 954, 0, -5709.48, -1826.38, 399.912, 4.46297, 90, 17, 0, 176, 0, 1, 0, 0, 2048),
(20822, 42170, 0, 0, 0, 1, 1, 954, 0, -5674.6, -1786.5, 400.638, 2.78884, 90, 18, 0, 198, 0, 1, 0, 0, 2048),
(20823, 42170, 0, 0, 0, 1, 1, 954, 0, -5825.15, -1758.46, 401.701, 3.53056, 90, 17, 0, 176, 0, 1, 0, 0, 2048),
(20824, 42170, 0, 0, 0, 1, 1, 954, 0, -5665.38, -1755.5, 399.869, 5.92591, 90, 14, 0, 198, 0, 1, 0, 0, 2048),
(20825, 42170, 0, 0, 0, 1, 1, 954, 0, -5651.17, -1670.57, 401.153, 5.09906, 90, 18, 0, 176, 0, 1, 0, 0, 2048),
(20826, 42170, 0, 0, 0, 1, 1, 954, 0, -5628.62, -1720.1, 398.721, 4.90966, 90, 19, 0, 198, 0, 1, 0, 0, 2048),
(20827, 42170, 0, 0, 0, 1, 1, 954, 0, -5789.77, -1994.96, 402.192, 4.30397, 90, 23, 0, 198, 0, 1, 0, 0, 2048),
(20828, 42170, 0, 0, 0, 1, 1, 954, 0, -5613.21, -1684.98, 399.101, 2.24828, 90, 21, 0, 176, 0, 1, 0, 0, 2048),
(20829, 42170, 0, 0, 0, 1, 1, 954, 0, -5412.41, -2153.07, 400.67, 2.45995, 90, 21, 0, 198, 0, 1, 0, 0, 2048),
(20830, 42170, 0, 0, 0, 1, 1, 954, 0, -5715.44, -1798.98, 399.68, 5.75959, 90, 20, 0, 176, 0, 1, 0, 0, 2048),
(20831, 42170, 0, 0, 0, 1, 1, 954, 0, -5786.3, -1938.25, 402.449, 0.05236, 90, 19, 0, 198, 0, 1, 0, 0, 2048),
(20832, 42170, 0, 0, 0, 1, 1, 954, 0, -5925.39, -1917.59, 405.483, 0.087266, 90, 15, 0, 176, 0, 1, 0, 0, 2048),
(20833, 42170, 0, 0, 0, 1, 1, 954, 0, -5736.77, -1743.52, 399.733, 0.05236, 90, 17, 0, 176, 0, 1, 0, 0, 2048),
(20834, 42170, 0, 0, 0, 1, 1, 954, 0, -5723.8, -1871.06, 399.69, 0.05236, 90, 17, 0, 198, 0, 1, 0, 0, 2048),
(41755, 42170, 0, 0, 0, 1, 1, 954, 0, -5748.61, -2152.22, 401.218, 0.05236, 90, 15, 0, 198, 0, 1, 0, 0, 2048),
(41942, 42170, 0, 0, 0, 1, 1, 954, 0, -5714.55, -1924.39, 399.902, 0.855211, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(41965, 42170, 0, 0, 0, 1, 1, 954, 0, -5532.85, -2028.65, 400.454, 0.436332, 90, 12, 0, 176, 0, 1, 0, 0, 2048),
(42009, 42170, 0, 0, 0, 1, 1, 954, 0, -5642.62, -2096.63, 401.168, 2.49582, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(42112, 42170, 0, 0, 0, 1, 1, 954, 0, -5754.46, -1926.04, 401.479, 3.19241, 90, 11, 0, 198, 0, 1, 0, 0, 2048),
(42233, 42170, 0, 0, 0, 1, 1, 954, 0, -5338.84, -2186.35, 424.479, 2.77464, 90, 8, 0, 198, 0, 1, 0, 0, 2048),
(42431, 42170, 0, 0, 0, 1, 1, 954, 0, -5764.12, -1738.06, 399.88, 1.82297, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(42610, 42170, 0, 0, 0, 1, 1, 954, 0, -5626.27, -1812.91, 400.939, 0.671693, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(42642, 42170, 0, 0, 0, 1, 1, 954, 0, -5787.81, -2114.03, 400.615, 0.05236, 90, 8, 0, 176, 0, 1, 0, 0, 2048),
(42695, 42170, 0, 0, 0, 1, 1, 954, 0, -5562.99, -2158.2, 402.01, 3.75072, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42753, 42170, 0, 0, 0, 1, 1, 954, 0, -5663.13, -2204.79, 425.613, 3.92423, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(42836, 42170, 0, 0, 0, 1, 1, 954, 0, -5722.59, -1833.89, 399.754, 0.05236, 90, 18, 0, 176, 0, 1, 0, 0, 2048),
(42937, 42170, 0, 0, 0, 1, 1, 954, 0, -5440.41, -2122.79, 401.844, 1.35067, 90, 14, 0, 176, 0, 1, 0, 0, 2048),
(42979, 42170, 0, 0, 0, 1, 1, 954, 0, -5663.84, -1717.6, 400.22, 5.7907, 90, 14, 0, 176, 0, 1, 0, 0, 2048),
(43005, 42170, 0, 0, 0, 1, 1, 954, 0, -5878.07, -1906.41, 410.002, 0.835594, 90, 17, 0, 198, 0, 1, 0, 0, 2048),
(43109, 42170, 0, 0, 0, 1, 1, 954, 0, -5705.86, -1772.77, 400.183, 5.65179, 90, 11, 0, 198, 0, 1, 0, 0, 2048),
(43154, 42170, 0, 0, 0, 1, 1, 954, 0, -5618.13, -2111.81, 400.564, 1.63871, 90, 16, 0, 198, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=1117;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15461173, 1117, 0, 1, 134, 1, 1, 0, 1, -5741.48, -1548.68, 377.459, 6.02194, 300, 0, 0, 176, 0, 0, 0, 0, 0),
(21091, 1117, 0, 0, 0, 1, 1, 6530, 0, -5602.04, -1705.14, 359.06, 2.06008, 90, 4, 0, 198, 0, 1, 0, 32768, 129),
(21092, 1117, 0, 0, 0, 1, 1, 6530, 0, -5626.84, -1680.37, 362.291, 2.65842, 90, 4, 0, 198, 0, 1, 0, 32768, 129),
(21093, 1117, 0, 0, 0, 1, 1, 6530, 0, -5736.19, -1680.36, 361.987, 2.28782, 90, 2, 0, 198, 0, 1, 0, 32768, 129),
(21094, 1117, 0, 0, 0, 1, 1, 830, 0, -5577.61, -1723.57, 353.503, 3.52556, 90, 2, 0, 198, 0, 1, 0, 32768, 129),
(21095, 1117, 0, 0, 0, 1, 1, 4905, 0, -5591.52, -1665.68, 344.682, 3.10669, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21096, 1117, 0, 0, 0, 1, 1, 4905, 0, -5674.9, -1679.11, 360.878, 1.64061, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21097, 1117, 0, 0, 0, 1, 1, 4905, 0, -5690.4, -1716.89, 361.804, 5.8294, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21098, 1117, 0, 0, 0, 1, 1, 4905, 0, -5701.54, -1675.3, 360.878, 3.63029, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21099, 1117, 0, 0, 0, 1, 1, 4905, 0, -5632.65, -1788.74, 358.396, 2.02458, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(15461175, 1117, 0, 1, 134, 1, 1, 0, 1, -5747.89, -1547.03, 375.646, 6.17273, 300, 0, 0, 176, 0, 0, 0, 0, 0),
(41708, 1117, 0, 0, 0, 1, 1, 6530, 0, -5798.59, -1524.33, 359.323, 6.00393, 90, 9, 0, 198, 0, 1, 0, 32768, 129),
(41812, 1117, 0, 0, 0, 1, 1, 6530, 0, -5680.71, -1697.66, 360.795, 4.33603, 90, 8, 0, 176, 0, 1, 0, 32768, 129),
(41973, 1117, 0, 0, 0, 1, 1, 830, 0, -5581.21, -1707.11, 343.152, 2.33676, 90, 5, 0, 198, 0, 1, 0, 32768, 129),
(42045, 1117, 0, 0, 0, 1, 1, 830, 0, -5626.32, -1751.75, 357.131, 4.43314, 90, 7, 0, 198, 0, 1, 0, 32768, 129),
(42322, 1117, 0, 0, 0, 1, 1, 4905, 0, -5638.55, -1774.07, 355.883, 2.92537, 90, 9, 0, 176, 0, 1, 0, 32768, 129),
(42474, 1117, 0, 0, 0, 1, 1, 4905, 0, -5644.44, -1700.44, 362.148, 5.18363, 90, 8, 0, 198, 0, 1, 0, 32768, 129),
(42892, 1117, 0, 0, 0, 1, 1, 830, 0, -5793.1, -1546.94, 359.691, 0.314159, 90, 3, 0, 198, 0, 1, 0, 32768, 129),
(43049, 1117, 0, 0, 0, 1, 1, 830, 0, -5598.86, -1801.82, 355.398, 2.18005, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(43129, 1117, 0, 0, 0, 1, 1, 6530, 0, -5610.31, -1766.96, 356.831, 4.61328, 90, 5, 0, 198, 0, 1, 0, 32768, 129);

DELETE FROM `creature` WHERE `id`=1115;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(21078, 1115, 0, 0, 0, 1, 1, 726, 0, -5758.68, -1674.87, 359.022, 4.13643, 90, 7, 0, 156, 0, 1, 0, 32768, 129),
(21079, 1115, 0, 0, 0, 1, 1, 726, 0, -5838.26, -1605.33, 358.895, 3.05433, 90, 0, 0, 176, 0, 0, 0, 32768, 129),
(21080, 1115, 0, 0, 0, 1, 1, 726, 0, -5834.2, -1528.01, 358.389, 5.07784, 90, 9, 0, 176, 0, 1, 0, 32768, 129),
(21081, 1115, 0, 0, 0, 1, 1, 726, 0, -5821.31, -1565.11, 358.4, 4.96885, 90, 10, 0, 176, 0, 1, 0, 32768, 129),
(21082, 1115, 0, 0, 0, 1, 1, 726, 0, -5741.2, -1651.86, 358.895, 4.81711, 90, 0, 0, 156, 0, 0, 0, 32768, 129),
(21083, 1115, 0, 0, 0, 1, 1, 726, 0, -5831.11, -1641.12, 358.932, 1.26883, 90, 8, 0, 156, 0, 1, 0, 32768, 129),
(21084, 1115, 0, 0, 0, 1, 1, 726, 0, -5864.87, -1543.32, 373.095, 5.84685, 90, 9, 0, 176, 0, 1, 0, 32768, 129),
(21085, 1115, 0, 0, 0, 1, 1, 726, 0, -5603.59, -1747.88, 371.865, 5.93412, 90, 8, 0, 176, 0, 1, 0, 32768, 129),
(21086, 1115, 0, 0, 0, 1, 1, 726, 0, -5790.52, -1676.21, 359.843, 0.069813, 90, 0, 0, 176, 0, 0, 0, 32768, 129),
(21087, 1115, 0, 0, 0, 1, 1, 726, 0, -5793.85, -1668.88, 359.039, 4.4504, 90, 4, 0, 156, 0, 1, 0, 32768, 129),
(21088, 1115, 0, 0, 0, 1, 1, 726, 0, -5840.64, -1590.02, 362.181, 0.907571, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21089, 1115, 0, 0, 0, 1, 1, 726, 0, -5823.07, -1516.52, 358.603, 3.9619, 90, 10, 0, 176, 0, 1, 0, 32768, 129),
(21090, 1115, 0, 0, 0, 1, 1, 726, 0, -5582.68, -1759.77, 371.743, 4.02346, 90, 8, 0, 176, 0, 1, 0, 32768, 129),
(23023, 1115, 0, 0, 0, 1, 1, 726, 0, -5799.37, -1697.49, 358.92, 6.13095, 90, 0, 0, 176, 0, 0, 0, 32768, 129),
(23038, 1115, 0, 0, 0, 1, 1, 726, 0, -5874.4, -1531.43, 379.362, 1.74075, 90, 6, 0, 156, 0, 1, 0, 32768, 129),
(41696, 1115, 0, 0, 0, 1, 1, 726, 0, -5817.92, -1618.58, 359.367, 0.858407, 90, 9, 0, 176, 0, 1, 0, 32768, 129),
(41710, 1115, 0, 0, 0, 1, 1, 726, 0, -5825.71, -1593.61, 361.923, 4.62512, 90, 10, 0, 156, 0, 1, 0, 32768, 129),
(41793, 1115, 0, 0, 0, 1, 1, 726, 0, -5746.46, -1610.85, 364.556, 1.17054, 90, 8, 0, 0, 0, 1, 0, 32768, 129),
(41864, 1115, 0, 0, 0, 1, 1, 726, 0, -5837.93, -1580.96, 362.362, 1.58825, 90, 7, 0, 156, 0, 1, 0, 32768, 129),
(42234, 1115, 0, 0, 0, 1, 1, 726, 0, -5538.07, -1698.77, 344.012, 3.52556, 90, 6, 0, 156, 0, 1, 0, 32768, 129),
(42288, 1115, 0, 0, 0, 1, 1, 726, 0, -5642.65, -1685.8, 361.015, 3.52556, 90, 5, 0, 156, 0, 1, 0, 32768, 129),
(42371, 1115, 0, 0, 0, 1, 1, 726, 0, -5848.77, -1542.13, 358.979, 2.00713, 90, 8, 0, 156, 0, 1, 0, 32768, 129),
(42485, 1115, 0, 0, 0, 1, 1, 726, 0, -5754.19, -1620.48, 359.143, 4.87689, 90, 9, 0, 0, 0, 1, 0, 32768, 129),
(42578, 1115, 0, 0, 0, 1, 1, 726, 0, -5779.49, -1699.82, 359.808, 3.05433, 90, 10, 0, 156, 0, 1, 0, 32768, 129),
(42719, 1115, 0, 0, 0, 1, 1, 726, 0, -5568.15, -1707.85, 371.814, 4.67748, 90, 0, 0, 156, 0, 0, 0, 32768, 129),
(42748, 1115, 0, 0, 0, 1, 1, 726, 0, -5827.25, -1541.12, 358.736, 2.22056, 90, 10, 0, 156, 0, 1, 0, 32768, 129),
(42795, 1115, 0, 0, 0, 1, 1, 726, 0, -5606.19, -1648.92, 353.126, 3.52556, 90, 9, 0, 156, 0, 1, 0, 32768, 129),
(42890, 1115, 0, 0, 0, 1, 1, 726, 0, -5818.26, -1594.84, 359.471, 5.3058, 90, 5, 0, 176, 0, 1, 0, 32768, 129),
(43054, 1115, 0, 0, 0, 1, 1, 726, 0, -5827.39, -1665.93, 359.306, 5.39807, 90, 0, 0, 176, 0, 0, 0, 32768, 129),
(43066, 1115, 0, 0, 0, 1, 1, 726, 0, -5802.22, -1644.48, 358.932, 0.011381, 90, 5, 0, 156, 0, 1, 0, 32768, 129),
(43158, 1115, 0, 0, 0, 1, 1, 726, 0, -5823.15, -1496.83, 359.949, 3.14159, 90, 7, 0, 176, 0, 1, 0, 32768, 129);

-- http://ru.wowhead.com/quest=433
DELETE FROM `conditions` WHERE `SourceEntry` = 77819;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 77819, 0, 0, 31, 1, 3, 41671, 0, 0, 0, 0, '', 'Give Rune of Return can target only Trapped Miner');
DELETE FROM `creature_text` WHERE `entry` = 41671;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(41671, 0, 0, 'I can''t wait to get home to my family. Thank you, stranger.', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 1, 'I thought I would die down here.', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 2, 'I thought they were going to tear me apart!', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 3, 'Light bless you, stranger. You''ve saved me!', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 4, 'Thank you!', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 5, 'You''re the best thing I''ve seen since the troggs showed up!', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued');
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 41671;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (41671, 4167100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(41671, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 17, 431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - on spawn - set emote state (431)'),
(41671, 0, 1, 0, 8, 0, 100, 1, 77819, 0, 0, 0, 80, 4167100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - on spell hit (77819) - run actionlist'),
(4167100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 17, 26, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - set emote state (26)'),
(4167100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - face player'),
(4167100, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 33, 41671, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - give quest credit (42224)'),
(4167100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - say text 0'),
(4167100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - play emote (2)'),
(4167100, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 6000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - despawn after 6 seconds');

DELETE FROM `creature` WHERE `id`=1689;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20835, 1689, 0, 0, 0, 1, 1, 193, 0, -5647.64, -1706.75, 399.858, 4.76323, 90, 7, 0, 198, 0, 1, 0, 0, 2048),
(20836, 1689, 0, 0, 0, 1, 1, 193, 0, -5515.14, -2061.55, 399.875, 2.84047, 90, 8, 0, 176, 0, 1, 0, 0, 2048),
(20837, 1689, 0, 0, 0, 1, 1, 193, 0, -5691.34, -2208.01, 425.751, 4.49489, 90, 7, 0, 198, 0, 1, 0, 0, 2048),
(20838, 1689, 0, 0, 0, 1, 1, 193, 0, -5710.71, -1796.51, 399.683, 2.44054, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(20839, 1689, 0, 0, 0, 1, 1, 193, 0, -5774.29, -2125.16, 401.258, 3.28071, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(20840, 1689, 0, 0, 0, 1, 1, 193, 0, -5719.55, -2118.54, 400.678, 6.09683, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(20841, 1689, 0, 0, 0, 1, 1, 193, 0, -5612.29, -2193.53, 419.006, 1.58837, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(20842, 1689, 0, 0, 0, 1, 1, 193, 0, -5027.46, -2192.86, 409.124, 3.77025, 90, 6, 0, 198, 0, 1, 0, 0, 2048),
(20843, 1689, 0, 0, 0, 1, 1, 193, 0, -5293.36, -2176.91, 422.537, 0.844094, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(20844, 1689, 0, 0, 0, 1, 1, 193, 0, -5584.09, -2128.52, 402.659, 3.01046, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(20845, 1689, 0, 0, 0, 1, 1, 193, 0, -5397.63, -2117.45, 400.724, 2.3922, 90, 7, 0, 176, 0, 1, 0, 0, 2048),
(42004, 1689, 0, 0, 0, 1, 1, 193, 0, -5608.44, -1829.84, 400.158, 1.58172, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(42066, 1689, 0, 0, 0, 1, 1, 193, 0, -5329.13, -2146.61, 418.337, 3.17824, 90, 13, 0, 176, 0, 1, 0, 0, 2048),
(42160, 1689, 0, 0, 0, 1, 1, 193, 0, -5446.55, -2147.1, 400.828, 2.53628, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(42197, 1689, 0, 0, 0, 1, 1, 193, 0, -5048.26, -2265.76, 400.721, 0.77762, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(42315, 1689, 0, 0, 0, 1, 1, 193, 0, -4999.4, -2148.31, 408.979, 4.81225, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(42452, 1689, 0, 0, 0, 1, 1, 193, 0, -5867.94, -1894.41, 411.499, 5.90703, 90, 11, 0, 198, 0, 1, 0, 0, 2048),
(42519, 1689, 0, 0, 0, 1, 1, 193, 0, -5128.79, -2314.59, 400.441, 1.31345, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(42685, 1689, 0, 0, 0, 1, 1, 193, 0, -5129.53, -2230.61, 401.022, 4.99767, 90, 12, 0, 176, 0, 1, 0, 0, 2048),
(42880, 1689, 0, 0, 0, 1, 1, 193, 0, -5767.99, -1926.19, 401.991, 3.23932, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(43114, 1689, 0, 0, 0, 1, 1, 193, 0, -5812.85, -2060.54, 401.105, 4.94314, 90, 9, 0, 198, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=41762;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20846, 41762, 0, 0, 0, 1, 1, 32579, 0, -5600.52, -1948.08, 396.319, 2.51209, 90, 10, 0, 166, 178, 1, 0, 0, 2048),
(20847, 41762, 0, 0, 0, 1, 1, 32579, 0, -5709.21, -1961.2, 396.498, 6.22957, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(20848, 41762, 0, 0, 0, 1, 1, 32579, 0, -5702.71, -1902.33, 399.123, 0.777111, 90, 10, 0, 186, 191, 1, 0, 0, 2048),
(20849, 41762, 0, 0, 0, 1, 1, 32579, 0, -5581.53, -1926.19, 396.414, 6.21111, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(20850, 41762, 0, 0, 0, 1, 1, 32579, 0, -5674.04, -1939.59, 396.486, 1.10513, 90, 9, 0, 186, 191, 1, 0, 0, 2048),
(20851, 41762, 0, 0, 0, 1, 1, 32579, 0, -5647.94, -2046.06, 396.444, 2.88567, 90, 8, 0, 186, 191, 1, 0, 0, 2048),
(20852, 41762, 0, 0, 0, 1, 1, 32579, 0, -5704.71, -2091.35, 401.123, 3.26002, 90, 12, 0, 186, 191, 1, 0, 0, 2048),
(20853, 41762, 0, 0, 0, 1, 1, 32579, 0, -5774.16, -1976.24, 400.975, 0.755768, 90, 11, 0, 166, 178, 1, 0, 0, 2048),
(20854, 41762, 0, 0, 0, 1, 1, 32579, 0, -5743.35, -1952.66, 399.748, 3.60349, 90, 11, 0, 186, 191, 1, 0, 0, 2048),
(20855, 41762, 0, 0, 0, 1, 1, 32579, 0, -5650.25, -1923.66, 396.486, 2.28562, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(20856, 41762, 0, 0, 0, 1, 1, 32579, 0, -5711.56, -2055.45, 396.498, 5.15548, 90, 8, 0, 166, 178, 1, 0, 0, 2048),
(20857, 41762, 0, 0, 0, 1, 1, 32579, 0, -5610.38, -1866.48, 399.544, 1.89871, 90, 10, 0, 166, 178, 1, 0, 0, 2048),
(41744, 41762, 0, 0, 0, 1, 1, 32579, 0, -5676.78, -1909.95, 396.486, 5.23345, 90, 11, 0, 186, 191, 1, 0, 0, 2048),
(41939, 41762, 0, 0, 0, 1, 1, 32579, 0, -5640.85, -1880.79, 396.498, 4.60662, 90, 9, 0, 186, 191, 1, 0, 0, 2048),
(42040, 41762, 0, 0, 0, 1, 1, 32579, 0, -5668.74, -1856.89, 400.408, 1.05819, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(42046, 41762, 0, 0, 0, 1, 1, 32579, 0, -5609.37, -2034.29, 396.304, 1.54004, 90, 8, 0, 166, 178, 1, 0, 0, 2048),
(42102, 41762, 0, 0, 0, 1, 1, 32579, 0, -5616.17, -1920.33, 396.392, 3.70987, 90, 9, 0, 186, 191, 1, 0, 0, 2048),
(42214, 41762, 0, 0, 0, 1, 1, 32579, 0, -5677.25, -1989.3, 396.486, 3.1358, 90, 7, 0, 166, 178, 1, 0, 0, 2048),
(42263, 41762, 0, 0, 0, 1, 1, 32579, 0, -5671.05, -2063.91, 396.754, 4.60475, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(42360, 41762, 0, 0, 0, 1, 1, 32579, 0, -5757.26, -2073.56, 398.373, 3.29372, 90, 8, 0, 186, 191, 1, 0, 0, 2048),
(42486, 41762, 0, 0, 0, 1, 1, 32579, 0, -5717.67, -1986.58, 396.498, 6.23255, 90, 10, 0, 166, 178, 1, 0, 0, 2048),
(42513, 41762, 0, 0, 0, 1, 1, 32579, 0, -5745.13, -2043.59, 396.498, 4.12352, 90, 11, 0, 166, 178, 1, 0, 0, 2048),
(42808, 41762, 0, 0, 0, 1, 1, 32579, 0, -5680.22, -2038.54, 396.386, 4.2695, 90, 10, 0, 166, 178, 1, 0, 0, 2048),
(42941, 41762, 0, 0, 0, 1, 1, 32579, 0, -5677.21, -1987.16, 396.486, 2.35949, 90, 9, 0, 186, 191, 1, 0, 0, 2048),
(43081, 41762, 0, 0, 0, 1, 1, 32579, 0, -5580.71, -2057.6, 396.391, 4.06533, 90, 12, 0, 166, 178, 1, 0, 0, 2048);

UPDATE `creature_template` SET `faction_A` = 189, `faction_H` = 189 WHERE `entry` = 41768;

UPDATE `creature_template` SET `mindmg` = 0, `maxdmg` = 0, `attackpower` = 0, `dmg_multiplier` = 0, `baseattacktime` = 0, `rangeattacktime` = 0, `unit_flags2` = 0, `minrangedmg` = 0, `maxrangedmg` = 0, `RegenHealth` = 0 WHERE `entry` = 41768;

DELETE FROM `creature` WHERE `id`=41768;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15461684, 41768, 0, 1, 212, 1, 1, 0, 1, -5735.7, -2054.2, 396.373, 5.90884, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461683, 41768, 0, 1, 212, 1, 1, 0, 1, -5744.85, -1994.2, 396.373, 4.25479, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461682, 41768, 0, 1, 212, 1, 1, 0, 1, -5715.14, -1960.79, 396.372, 0.338011, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461681, 41768, 0, 1, 212, 1, 1, 0, 1, -5699.87, -1999.37, 396.372, 3.7867, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461679, 41768, 0, 1, 212, 1, 1, 0, 1, -5659.4, -1886.01, 396.373, 0.859519, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461678, 41768, 0, 1, 212, 1, 1, 0, 1, -5715, -1960.61, 396.373, 4.00582, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461676, 41768, 0, 1, 212, 1, 1, 0, 1, -5656.02, -1934.01, 396.111, 2.11851, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461677, 41768, 0, 1, 212, 1, 1, 0, 1, -5687.03, -1926.98, 396.373, 3.18194, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461674, 41768, 0, 1, 212, 1, 1, 0, 1, -5654.47, -1995.35, 396.098, 2.49236, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461673, 41768, 0, 1, 212, 1, 1, 0, 1, -5666.23, -2033.77, 396.285, 3.10968, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461675, 41768, 0, 1, 212, 1, 1, 0, 1, -5664.65, -1957.04, 396.169, 1.64177, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461665, 41768, 0, 1, 212, 1, 1, 0, 1, -5614.18, -1931.91, 396.211, 3.90765, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461672, 41768, 0, 1, 212, 1, 1, 0, 1, -5636.35, -2033.2, 396.197, 2.20255, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461671, 41768, 0, 1, 212, 1, 1, 0, 1, -5618.13, -2052.54, 396.371, 4.09379, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461670, 41768, 0, 1, 212, 1, 1, 0, 1, -5598.4, -2018.35, 396.227, 3.21728, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461669, 41768, 0, 1, 212, 1, 1, 0, 1, -5564.15, -2025.19, 396.372, 4.35532, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461668, 41768, 0, 1, 212, 1, 1, 0, 1, -5567.47, -1975.71, 396.372, 5.83423, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461667, 41768, 0, 1, 212, 1, 1, 0, 1, -5604.27, -1969.4, 396.121, 5.89078, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461680, 41768, 0, 1, 212, 1, 1, 0, 1, -5627.07, -1906.33, 396.373, 5.56091, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461666, 41768, 0, 1, 212, 1, 1, 0, 1, -5614.18, -1931.94, 396.208, 2.97931, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461664, 41768, 0, 1, 212, 1, 1, 0, 1, -5614.39, -1932.37, 396.197, 5.43053, 300, 0, 0, 60, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=6123;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20858, 6123, 0, 0, 0, 1, 1, 25234, 0, -5877.58, -2012.25, 401.199, 3.40339, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(20859, 6123, 0, 0, 0, 1, 1, 4956, 0, -5892.99, -2013.9, 406.866, 4.61466, 90, 6, 0, 198, 0, 1, 0, 0, 2048),
(20860, 6123, 0, 0, 0, 1, 1, 3452, 0, -5827.77, -2025.19, 401.184, 0.277913, 90, 8, 0, 176, 0, 1, 0, 0, 2048),
(20861, 6123, 0, 0, 0, 1, 1, 4956, 0, -5883.26, -2056.69, 402.991, 5.72769, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(20862, 6123, 0, 0, 0, 1, 1, 3452, 0, -5874.59, -1986.28, 401.366, 3.61962, 90, 7, 0, 176, 0, 1, 0, 0, 2048),
(20863, 6123, 0, 0, 0, 1, 1, 25234, 0, -5880.11, -1941.12, 406.085, 4.1792, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(20864, 6123, 0, 0, 0, 1, 1, 4956, 0, -5905.99, -2038.17, 405.962, 2.14675, 90, 8, 0, 176, 0, 1, 0, 0, 2048),
(20865, 6123, 0, 0, 0, 1, 1, 4956, 0, -5827.49, -2060.28, 401.676, 4.08543, 90, 8, 0, 198, 0, 1, 0, 0, 2048),
(41729, 6123, 0, 0, 0, 1, 1, 7814, 0, -5905.02, -1972.28, 403.46, 0.49751, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(42143, 6123, 0, 0, 0, 1, 1, 4956, 0, -5854.67, -2046.05, 401.836, 3.29647, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(42235, 6123, 0, 0, 0, 1, 1, 4956, 0, -5851.71, -2004.32, 401.649, 2.96706, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(42414, 6123, 0, 0, 0, 1, 1, 4956, 0, -5816.49, -1958.17, 403.334, 1.44467, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(42601, 6123, 0, 0, 0, 1, 1, 7814, 0, -5846.9, -1963.6, 405.26, 4.81411, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(42639, 6123, 0, 0, 0, 1, 1, 7814, 0, -5862.42, -1925.81, 409.354, 1.82058, 90, 11, 0, 198, 0, 1, 0, 0, 2048),
(42792, 6123, 0, 0, 0, 1, 1, 7814, 0, -5911.45, -2018.16, 405.74, 2.6529, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(42993, 6123, 0, 0, 0, 1, 1, 3452, 0, -5916.7, -1997.3, 404.686, 2.84489, 90, 10, 0, 176, 0, 1, 0, 0, 2048);


DELETE FROM `creature` WHERE `id`=6124;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(18711, 6124, 0, 1, 716, 1, 1, 0, 1, -5920.6, -2034.27, 400.749, 3.25027, 300, 0, 0, 198, 0, 0, 0, 0, 0);


UPDATE `quest_template` SET `RequiredItemId1`=63114, `RequiredItemId2`=63116, `RequiredItemId3`=63117, `RequiredItemId4`=63119, `RequiredItemCount1`=1, `RequiredItemCount2`=1, `RequiredItemCount3`=1, `RequiredItemCount4`=1 WHERE `Id`=28417;
UPDATE `quest_template` SET `RequiredItemId1`=63114, `RequiredItemId2`=63116, `RequiredItemId3`=63117, `RequiredItemId4`=63119, `RequiredItemCount1`=1, `RequiredItemCount2`=1, `RequiredItemCount3`=1, `RequiredItemCount4`=1 WHERE `Id`=28172;



UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=47814;
UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=47822;
UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=47821;
UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=47820;



DELETE FROM `smart_scripts` WHERE `entryorguid`=47814;
DELETE FROM `smart_scripts` WHERE `entryorguid`=47822;
DELETE FROM `smart_scripts` WHERE `entryorguid`=47821;
DELETE FROM `smart_scripts` WHERE `entryorguid`=47820;
DELETE FROM `smart_scripts` WHERE `entryorguid`=4781400;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47814, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 88964, 32, 0, 0, 0, 0, 19, 41200, 5, 0, 0, 0, 0, 0, 'On Reset, Cast Chains on Bunny npc');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47814, 0, 1, 2, 64, 0, 100, 0, 0, 0, 1, 1, 80, 4781400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Start Timed Action List');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47814, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, 63114, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Give player quest item');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4781400, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 44, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Change my phasemask to Phase 4');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4781400, 9, 1, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 44, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 15 Seconds, reset my phasemask to 1');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47822, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 88964, 0, 0, 0, 0, 0, 19, 41200, 5, 0, 0, 0, 0, 0, 'On update, Cast Chains on Bunny npc');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47822, 0, 1, 2, 64, 0, 100, 0, 0, 0, 1, 1, 80, 4781400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Start Timed Action List');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47822, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, 63119, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Give player quest item');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47821, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 88964, 0, 0, 0, 0, 0, 19, 41200, 5, 0, 0, 0, 0, 0, 'On Reset, Cast Chains on Bunny npc');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47821, 0, 1, 2, 64, 0, 100, 0, 0, 0, 1, 1, 80, 4781400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Start Timed Action List');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47821, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, 63117, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Give player quest item');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47820, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 88964, 0, 0, 0, 0, 0, 19, 41200, 5, 0, 0, 0, 0, 0, 'On Reset, Cast Chains on Bunny npc');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47820, 0, 1, 2, 64, 0, 100, 0, 0, 0, 1, 1, 80, 4781400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Start Timed Action List');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47820, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, 63116, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Give player quest item');



DELETE FROM `creature` WHERE `id`=41200;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (15462155, 41200, 0, 46, 5650, 1, 65535, 0, 1, -8256.14, -1019.37, 147.403, 1.1889, 300, 0, 0, 3052, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (15462158, 41200, 0, 46, 5650, 1, 65535, 0, 1, -8248.7, -1193.48, 142.563, 3.84342, 300, 0, 0, 3052, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (15462157, 41200, 0, 46, 5650, 1, 65535, 0, 1, -8279.23, -1135.26, 148.73, 0.211742, 300, 0, 0, 3052, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (15462156, 41200, 0, 46, 5650, 1, 65535, 0, 1, -8278.86, -1074.22, 143.777, 1.78175, 300, 0, 0, 3052, 0, 0, 0, 0, 0);


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48100;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48118;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48099;


INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48100, 0, 0, 1, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Voodooist Timan on Spellhit - Die');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48100, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48100, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Voodooist Timan on Die - Give Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48118, 0, 0, 1, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Smoldethorn Shaman on Spellhit - Die');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48118, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48118, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Smoldethorn Shaman on Die - Give Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48118, 0, 2, 3, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Smoldethorn Shaman on Spellhit - Die');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48118, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48118, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Smoldethorn Shaman on Die - Give Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48099, 0, 0, 1, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgmistress Othana on Spellhit - Die');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48099, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48099, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Worgmistress Othana on Die - Give Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (9176, 0, 3, 4, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gor\'tek on Spellhit - Die');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (9176, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 9176, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Gor\'tek on Die - Give Credit');


INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (17, 0, 89776, 0, 0, 36, 1, 0, 0, 0, 1, 0, 0, '', 'WorgSaw Condition');


INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (9697, 0, 1, 2, 8, 0, 100, 0, 89776, 0, 0, 0, 11, 52580, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Giant Ember Worg - on Spellhit Cast Meat Explosion');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (9697, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Giant Ember Worg - on Spellhit Despawn');



UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48111;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48111, 0, 0, 1, 8, 0, 100, 0, 89477, 0, 0, 0, 46, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock War Kodo on Spell Hit - Start Moving Foward');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48111, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48111, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Blackrock War Kodo on Spell Hit - Give Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48111, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock War Kodo on Spell Hit - Despawn');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48201;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48121;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48119;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48201, 0, 0, 1, 8, 0, 100, 0, 89562, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Kill');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48201, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48201, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Give Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48121, 0, 0, 1, 8, 0, 100, 0, 89562, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Kill');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48121, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48119, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Give Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48119, 0, 0, 1, 8, 0, 100, 0, 89562, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Kill');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48119, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48119, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Give Credit');

UPDATE `creature_template` SET `gossip_menu_id`=48159, `AIName`='SmartAI' WHERE `entry`=48159 LIMIT 1;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48153;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48156;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48133;

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (48159, 0, 0, 'I\'d like to challenge your magma lord to a fight', 1, 1, 0, 0, 0, 0, NULL);


INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48159, 1, 0, 'Alright boys, we got a challenger! Time to show the general what our little captive can do!', 14, 0, 100, 5, 0, 0, 'Wyrtle Spreelthonket Say 1');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48159, 2, 0, 'Nooo! My baby...', 12, 0, 100, 18, 0, 0, 'Wyrtle Spreelthonket Say 2');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48133, 0, 0, 'Ah ha ha! well done!', 12, 0, 100, 11, 0, 0, 'General Thorg\'lzog Say');

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 48159, 0, 0, 0, 9, 0, 28266, 0, 0, 0, 0, 0, '', 'Trial by Magma quest Condition');

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48153, 0, 0, 0, 1, 0, 100, 0, 1, 2, 5000, 5200, 11, 25029, 4, 0, 0, 0, 0, 11, 48156, 10, 0, 0, 0, 0, 0, 'Goblin Flamethrower Cast Flamethrower Every 5 secs (visual Effect) on Magma lord');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48156, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0, 11, 48159, 30, 0, 0, 0, 0, 0, 'Magma Lord Kolob - On Death Make Goblin Say');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48156, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 0, 2000, 0, 0, 0, 0, 11, 48133, 30, 0, 0, 0, 0, 0, 'Magma Lord Kolob - On Death Make General Say');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48159, 0, 0, 1, 62, 0, 100, 0, 48159, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyrtle Spreelthonket on Gossip Select - Gossip Close');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48159, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 4815900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wyrtle Spreelthonket on Gossip Select - Start Script');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4815900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say 1');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4815900, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 2, 16, 0, 0, 0, 0, 0, 11, 48156, 15, 0, 0, 0, 0, 0, 'Script - Change Faction');

INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (89261, 89253, 'Blackrock Disguise');


UPDATE `creature_template` SET `gossip_menu_id`=48037, `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=48037;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 48037, 0, 0, 0, 9, 0, 28227, 0, 0, 0, 0, 0, '', 'Golem Training Condition');


INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48037, 0, 0, 'Starting Training method', 12, 0, 100, 45, 0, 0, 'Golem Say 1');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48037, 1, 0, 'Battle result: embarrassing failure. Incorporating new methods into battle regimen.', 12, 0, 100, 2, 0, 0, 'Golem Say 2');


INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (48037, 0, 0, 'I\'m here to help you with your combat training, golem.', 1, 1, 0, 0, 0, 0, '');



INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 0, 1, 62, 0, 100, 0, 48037, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Gossip Select - Gossip Close');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 2, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Gossip Select - Change Faction to Agressive');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Gossip Select - Say 1');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 3, 4, 2, 0, 100, 0, 1, 30, 1, 2, 2, 1474, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Health Betwen 1 - 30 % - Change faction to 1474 (thorium Brotherhood)');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48037, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Health Betwen 1 - 30 % - Give Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Health Betwen 1 - 30 - Say Surrender');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48671;

UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=48671;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 48671, 0, 0, 9, 0, 28415, 0, 0, 0, 0, 0, '', 'Condition to Loot with Quest 28415');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 4, 48671, 0, 0, 9, 0, 28415, 0, 0, 1, 0, 0, '', 'Condition for denied Loot without Quest 28415');

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48671, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Flamefly on Gossip Hello - Gossip Close');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48671, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 64409, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Flamefly on Gossip Hello - Add Item');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48671, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flamefly on Gossip Hello - Despawn Self');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48671, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Flamefly on Gossip Hello - Gossip Close without quest');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=58964;
UPDATE `creature_template` SET `modelid1`=34645 WHERE `entry`=46988;
UPDATE `creature_template` SET `minlevel`=65, `maxlevel`=65, `AIName`='SmartAI' WHERE `entry`=45774;


UPDATE `quest_template` SET `Flags`=128, `RequiredNpcOrGo1`=1776, `RequiredNpcOrGoCount1`=1 WHERE `Id`=24913 LIMIT 1;


INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (58964, 0, 0, 'Even now, nothing. Why? Why would the Light forsake the innocent?', 12, 0, 100, 6, 0, 0, 'Avuun Says1');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (58964, 1, 0, 'Prophet Velen!', 12, 0, 100, 5, 0, 0, 'Avuun Says2');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (58964, 2, 0, '...thank you, Prophet. You have given both of us great comfort. I will continue my work, in faith and memory of Magtoor.', 12, 0, 100, 2, 0, 0, 'Avuun Says3');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (1776, 0, 0, 'Yes...', 12, 0, 100, 0, 0, 0, 'Magtoor Says');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 0, 0, 'Some have spent decades meditating upon this mystery, Avuun. I do not wish the same fate upon you.', 12, 0, 100, 0, 0, 0, 'Prophet Velen Says1');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 1, 0, 'The Light wishes suffering on none, my child. But it does not reign unopposed in our realm.', 12, 0, 100, 6, 0, 0, 'Prophet Velen Says2');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 2, 0, 'Even now, the true battle between the forces of Light and Darkness approaches. We will all be called to join, and in the face of this conflict, all mortal suffering will be meaningless.', 12, 0, 100, 6, 0, 0, 'Prophet Velen Says3');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 3, 0, 'Magtoor, you have endured your plight bravely. Are you ready to return to the embrace of the Light?', 12, 0, 100, 6, 0, 0, 'Prophet Velen Says4');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 4, 0, 'Then may the Light save you and raise you up.', 12, 0, 100, 0, 0, 0, 'Prophet Velen Says5');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 5, 0, 'Remember, Avuun. Not all who wander are lost.', 12, 0, 100, 6, 0, 0, 'Prophet Velen Says6');


INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (58964, 0, 0, 0, 19, 0, 100, 0, 24913, 0, 0, 0, 80, 5896400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Anchorite Avuun on Quest Accept - Start Script');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Anchorite Avuun Says 1');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 12, 46988, 3, 62500, 0, 0, 0, 8, 0, 0, 0, -10103.8, -2754.22, 25.339, 5.89144, 'Script - Summon Exodar Portal');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 45774, 3, 62500, 0, 0, 0, 8, 0, 0, 0, -10103.8, -2754.22, 25.339, 5.89144, 'Script - Summon Prophet Velen');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 1');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Anchorite Avuun Says 2');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 5, 0, 0, 0, 100, 0, 1500, 1500, 1500, 1500, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Anchorite Avuun Knees');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 6, 0, 0, 0, 100, 0, 7500, 7500, 7500, 7500, 1, 1, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 2');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 7, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 2, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 3');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 8, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 3, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 4');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 9, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 0, 1, 0, 0, 0, 0, 11, 1776, 10, 0, 0, 0, 0, 0, 'Script - Magtoor Says 1');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 10, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 4, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 5');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 11, 0, 0, 0, 100, 0, 200, 200, 200, 200, 11, 97231, 4, 0, 0, 0, 0, 11, 1776, 10, 0, 0, 0, 0, 0, 'Script - Summon Light (Temp Light until find the correct spell)');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 6000, 6000, 51, 0, 0, 0, 0, 0, 0, 11, 1776, 10, 0, 0, 0, 0, 0, 'Script - Magtoor Die');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 13, 0, 0, 0, 100, 0, 8000, 8000, 8000, 8000, 1, 5, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 6');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 14, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 1, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Anchorite Avuun Says 3');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 15, 0, 0, 0, 100, 0, 3000, 3000, 3000, 3000, 33, 1776, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Script - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45774, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4577400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Prophet Velen on Spawn - Start Script');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4577400, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 46, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Move Foward');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4577400, 9, 1, 0, 0, 0, 100, 0, 39000, 39000, 39000, 39000, 5, 25, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Point to Magtoor');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4577400, 9, 2, 0, 0, 0, 100, 0, 19000, 19000, 19000, 19000, 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -10103.8, -2754.22, 25.339, 5.89144, 'Script - Move to Portal');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4577400, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 64446, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Velen Cast Teleport');



INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `req_aura`, `comment`) VALUES (78838, 78834, 0, 0, 'Enohar Flaming Arrow trigger');

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42235, 0, 2, 3, 8, 0, 100, 0, 78834, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darktail Bonepicker on Spellhit - Die');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42235, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 42235, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darktail Bonepicker on Spellhit - Give Credit');

UPDATE `npc_vendor` SET `entry`=465720 WHERE `entry`=46572;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (465720, 0, 0, 0, 0, 0, 35148, 0, 0, 0, 'Goram', 'Guild Vendor', '', 0, 45, 45, 0, 0, 1735, 1735, 129, 1, 1.14286, 1, 1.14286, 1, 0, 76, 100, 0, 184, 1, 2000, 2000, 1, 0, 2048, 2048, 0, 0, 0, 0, 0, 52, 76, 17, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
UPDATE `creature` SET `id`=465720 WHERE `id`=46572;

DELETE FROM `creature` WHERE `id`=2077;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15462647, 2077, 1, 141, 188, 1, 1, 0, 1, 10329.7, 825.267, 1326.38, 2.40864, 300, 0, 0, 102, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=3597;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15462648, 3597, 1, 141, 256, 1, 1, 0, 1, 10485.6, 818.876, 1322.74, 3.55846, 300, 0, 0, 222, 0, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`entry`=2150);


-- The Furlbrow are supposed to be dead (the quest objective is to investigate their deaths !!)
UPDATE creature_template SET dynamicflags='32',AIName='',unit_flags='0',npcflag='0',type_flags='0',flags_extra='0' WHERE entry='237';
UPDATE creature_template_addon SET bytes1='7',bytes2='0',emote='65' WHERE entry='237';
UPDATE creature_template SET dynamicflags='32',AIName='',unit_flags='0',npcflag='0',type_flags='0',flags_extra='0' WHERE entry='238';
UPDATE creature_template_addon SET bytes1='7',bytes2='0',emote='65' WHERE entry='238';

-- Delete duplicate spawn
DELETE FROM creature WHERE guid='305440';



-- Old Blanchy is dead (sniff sniff) and under the cart...
UPDATE creature SET position_x='-9852.06',position_y='909.287',position_z='29.911' WHERE guid='89773';
DELETE FROM creature_addon WHERE guid='89773';
INSERT INTO creature_addon VALUES (89773,0,0,7,0,65,'');

-- Spawn 2 Stormwind investigators
SET @NPC_Stomwind_investigator1='53';
SET @NPC_Stomwind_investigator2='54';

DELETE FROM creature WHERE guid=@NPC_Stomwind_investigator1;
DELETE FROM creature WHERE guid=@NPC_Stomwind_investigator2;
-- Clean up
DELETE FROM creature WHERE id='42309';

UPDATE creature_template SET minlevel='21',maxlevel='24' WHERE entry='42559';

INSERT INTO creature(guid,id,modelid,position_x,position_y,position_z,orientation) VALUES (@NPC_Stomwind_investigator1,42309,32776,-9854.08,920.595,30.2177,5.45881);

INSERT INTO creature(guid,id,modelid,position_x,position_y,position_z,orientation) VALUES (@NPC_Stomwind_investigator2,42559,32775,-9854.8,908.126,29.865,0.707144);


-- Make the first investigator kneel
DELETE FROM creature_addon WHERE guid=@NPC_Stomwind_investigator1;
INSERT INTO creature_addon(guid,bytes1) VALUES (@NPC_Stomwind_investigator1,8);


-- Activate smartAI
UPDATE creature_template SET AIName='SmartAI' WHERE ENTRY='42559';
UPDATE creature_template SET AIName='SmartAI' WHERE ENTRY='42309';
UPDATE creature_template SET AIName='SmartAI' WHERE ENTRY='42308';


-- Add creature text for npc discussion at the scene, source WoW retail

DELETE FROM creature_text WHERE entry='42559';
DELETE FROM creature_text WHERE entry='42309';
DELETE FROM creature_text WHERE entry='42308';

INSERT INTO creature_text(entry,groupid,id,text,`type`,`language`,probability,emote,duration,sound,`comment`)
VALUES
(42559,0,0,'It''s a real bloodshed, lieutenant. They were murdered.',12,0,100,1,3,0,'Stormwind investigator 1st sentence'),
(42309,0,0,'According to body temperature, I''ll say they''ve been dead for less than six hours.',12,0,100,1,3,0,'Stormwind investigator 2nd sentence'),
(42559,1,0,'What they did to Old Blanchy is truly a shame.',12,0,100,1,3,0,'Stormwind investigator 3rd sentence'),
(42308,0,0,'No kidding, Probie...',12,0,100,1,3,0,'Horatio Laine 1st sentence'),
(42308,1,0,'Looks like they really put the cart...',12,0,100,1,3,0,'Horatio Laine 2nd sentence'),
(42308,2,0,'...Before the horse.',12,0,100,1,3,0,'Horatio Laine 3rd sentence');

-- Add smartAI scripts for npc discussion at the Crime Scene, source WoW retail
DELETE FROM smart_scripts WHERE entryorguid='42559';
DELETE FROM smart_scripts WHERE entryorguid='42309';
DELETE FROM smart_scripts WHERE entryorguid='42308';

INSERT INTO smart_scripts
VALUES (42559,0,0,0,10,0,100,0,1,3,30000,40000,1,0,5000,0,0,0,0,7,0,0,0,0,0,0,0,'1st Crime Scene sentence'),
(42559,0,1,0,52,0,100,0,0,42559,0,0,1,0,5000,0,0,0,0,10,@NPC_Stomwind_investigator1,42309,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42309,0,0,0,52,0,100,0,0,42559,0,0,1,0,5000,0,0,0,0,7,0,0,0,0,0,0,0,'2nd Crime Scene sentence'),
(42309,0,1,0,52,0,100,0,0,42309,0,0,1,0,5000,0,0,0,0,10,@NPC_Stomwind_investigator2,42559,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42559,0,2,0,52,0,100,0,0,42309,0,0,1,1,5000,0,0,0,0,7,0,0,0,0,0,0,0,'3rd Crime Scene sentence'),
(42559,0,3,0,52,0,100,0,1,42559,0,0,1,0,5000,0,0,0,0,10,305725,42308,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42308,0,0,0,52,0,100,0,0,42559,0,0,1,0,5000,0,0,0,7,0,0,0,0,0,0,0,0,'4th Crime Scene sentence'),
(42559,0,4,0,52,0,100,0,0,42308,0,0,1,1,5000,0,0,0,0,10,305725,42308,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42308,0,1,0,52,0,100,0,1,42308,0,0,1,1,5000,0,0,0,0,7,0,0,0,0,0,0,0,'5th Crime Scene sentence'),
(42559,0,5,0,52,0,100,0,1,42308,0,0,1,2,5000,0,0,0,0,10,305725,42308,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42308,0,2,0,52,0,100,0,2,42308,0,0,1,2,5000,0,0,0,0,7,0,0,0,0,0,0,0,'6th Crime Scene sentence');


-- Fix the quest chain
UPDATE quest_template SET PrevQuestId='26209' WHERE Id='26213';
UPDATE quest_template SET PrevQuestId='26209' WHERE Id='26214';

-- Wake the hobos up and make them gossip
UPDATE creature_addon SET auras='' WHERE guid='306272';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='306272';
UPDATE creature_addon SET auras='' WHERE guid='305766';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='305766';
UPDATE creature_addon SET auras='' WHERE guid='305336';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='305336';
UPDATE creature_addon SET auras='' WHERE guid='305478';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='305478';
UPDATE creature_addon SET auras='' WHERE guid='306058';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='306058';
UPDATE creature_addon SET auras='' WHERE guid='304958';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='304958';
UPDATE creature_addon SET auras='' WHERE guid='304973';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='304973';
UPDATE creature_addon SET auras='' WHERE guid='304954';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='304954';

-- For West Plains Drifter (42391)
-- Create the gossip

SET @NPC_TEXT_GOSSIP1='70';
DELETE FROM npc_text WHERE id=@NPC_TEXT_GOSSIP1;
INSERT INTO npc_text(ID,text0_0,prob0) VALUES (@NPC_TEXT_GOSSIP1,'You wanna talk? Pay up.',100);

SET @GOSSIP_MENU_ID1='87';	
DELETE FROM gossip_menu WHERE entry=@GOSSIP_MENU_ID1;	
INSERT INTO gossip_menu VALUES (@GOSSIP_MENU_ID1,@NPC_TEXT_GOSSIP1);

UPDATE creature_template SET gossip_menu_id=@GOSSIP_MENU_ID1 WHERE entry='42391';

DELETE FROM gossip_menu_option WHERE menu_id=@GOSSIP_MENU_ID1;
INSERT INTO gossip_menu_option
VALUES (@GOSSIP_MENU_ID1,0,0,'Did you see who killed the Furlbrows?',1,1,0,0,0,0,0),
 (@GOSSIP_MENU_ID1,1,0,'Maybe a couple copper will loosen your tongue. Now tell me, did you see who killed the Furlbrows?',1,1,0,0,0,0,2);

-- Hobo go smartAI
UPDATE creature_template SET AIName='SmartAI' WHERE entry='42391';

-- Hobos don't have money, or loot and don't give XP (nothing rewarding in killing a hobo^^)
UPDATE creature_template SET mingold='0',maxgold='0',flags_extra='64' WHERE entry='42391';

-- Create the texts
DELETE FROM creature_text WHERE entry='42391';

INSERT INTO creature_text(entry,groupid,id,text,`type`,`language`,probability,emote,duration,sound,`comment`)
VALUES
(42391,0,0,'I ain''t tellin'' you a damn thing!',12,0,100,1,3000,0,'Murder was the case 1st aggro sentence'),
(42391,0,1,'You rich punks are all the same!',12,0,100,1,3000,0,'Murder was the case 2nd aggro sentence'),
(42391,0,2,'Now you''v''e gone and done it! TIME FOR THE FIST!',12,0,100,1,3000,0,'Murder was the case 3rd aggro sentence'),
(42391,1,0,'Listen, pal. I don''t want any trouble, ok? I didn''t see who murdered ''em, but I sure heard it! Lots of yelling. Human voices... you dig? Now get out of here before I change my mind about beating you up and takin'' your shoes.',12,0,100,1,5000,0,'Murder was the case 1st clue'),
(42391,2,0,'I didn''t see who killed ''em, $Gbub:sis , but I got a whiff. Smelled rich, kinda like you. Damn shame too. Furlbrows were a fixture around here. Nice people, always willin'' to share a meal or a patch of dirt.',12,0,100,1,5000,0,'Murder was the case 2nd clue'),
(42391,3,0,'Who killed the Furlbrows? I''ll tell you who killed the Furlbrows: KING VARIAN WRYNN. THAT''S WHO! And he''s killin'' the rest of us too. Once bum at a time. The only thing I can tell you is that I saw some gnolls leavin'' the place a few hours before the law arrived.',12,0,100,1,5000,0,'Murder was the case 3rd clue'),
(42391,4,0,'Between you, me, and the tree, murlocs killed the Furlbrows. Yep, saw ''em with my own two eyes. Think they''d been casin'' the joint for days, maybe months. They left in a hurry once they got wind of "Johnny Law" and the idiot brigade over there...',12,0,100,1,6000,0,'Murder was the case 4th clue');

-- On to the script creation
DELETE FROM smart_scripts WHERE entryorguid='42391';
DELETE FROM smart_scripts WHERE entryorguid='4239101';
DELETE FROM smart_scripts WHERE entryorguid='4239102';
DELETE FROM smart_scripts WHERE entryorguid='4239103';
DELETE FROM smart_scripts WHERE entryorguid='4239104';
INSERT INTO smart_scripts
VALUES
(42391,0,0,0,62,0,100,0,@GOSSIP_MENU_ID1,0,0,0,1,0,2000,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - random aggro sentence'),
(42391,0,1,0,62,0,100,0,@GOSSIP_MENU_ID1,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - close gossip'),
(42391,0,2,0,52,0,100,0,0,42391,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - start attack'),
(42391,0,3,0,52,0,100,0,0,42391,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - npc_flag to 0'),
(42391,0,4,0,52,0,100,0,0,42391,0,0,2,20,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - change faction to aggressive'),
(42391,0,5,0,25,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Reset - change faction back to neutral'),
(42391,0,6,0,25,0,100,0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Reset - change npc_flag back to gossip'),
(42391,0,7,0,62,0,100,0,@GOSSIP_MENU_ID1,1,0,0,87,4239101,4239102,4239103,4239104,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell random clue'),
(4239101,9,0,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell 1st clue'),
(4239102,9,0,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell 2nd clue'),
(4239103,9,0,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell 3rd clue'),
(4239104,9,0,0,0,0,100,0,2000,2000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell 4th clue'),
(42391,0,8,0,52,0,100,0,1,42391,0,0,33,42414,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - validate objective 1'),
(42391,0,9,0,52,0,100,0,2,42391,0,0,33,42415,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - validate objective 2'),
(42391,0,10,0,52,0,100,0,3,42391,0,0,33,42416,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - validate objective 3'),
(42391,0,11,0,52,0,100,0,4,42391,0,0,33,42417,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - validate objective 4'),
(42391,0,12,0,62,0,100,0,@GOSSIP_MENU_ID1,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - close gossip'),
(42391,0,13,0,62,0,100,0,@GOSSIP_MENU_ID1,1,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - Make the gossiper unavailable'),
(42391,0,14,0,60,0,100,0,30000,30000,30000,30000,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - Reactivate gossiper every 30s');

-- For Homeless Stormwind Citizen (42386)

-- Create gossip

SET @NPC_TEXT_GOSSIP2='71';
DELETE FROM npc_text WHERE id=@NPC_TEXT_GOSSIP2;
INSERT INTO npc_text(ID,text0_0,prob0) VALUES (@NPC_TEXT_GOSSIP2,'Whaddya want?',100);

SET @GOSSIP_MENU_ID2='88';	
DELETE FROM gossip_menu WHERE entry=@GOSSIP_MENU_ID2;	
INSERT INTO gossip_menu VALUES (@GOSSIP_MENU_ID2,@NPC_TEXT_GOSSIP2);

UPDATE creature_template SET gossip_menu_id=@GOSSIP_MENU_ID2 WHERE entry='42386';

DELETE FROM gossip_menu_option WHERE menu_id=@GOSSIP_MENU_ID2;
INSERT INTO gossip_menu_option
VALUES (@GOSSIP_MENU_ID2,0,0,'Did you see who killed the Furlbrows?',1,1,0,0,0,0,0),
 (@GOSSIP_MENU_ID2,1,0,'Maybe a couple copper will loosen your tongue. Now tell me, did you see who killed the Furlbrows?',1,1,0,0,0,0,2);

-- Hobo go smartAI
UPDATE creature_template SET AIName='SmartAI' WHERE entry='42386';

-- Hobos don't have money, or loot and don't give XP (nothing rewarding in killing a hobo^^)
UPDATE creature_template SET mingold='0',maxgold='0',flags_extra='64' WHERE entry='42386';

-- Create the texts
DELETE FROM creature_text WHERE entry='42386';

INSERT INTO creature_text(entry,groupid,id,text,`type`,`language`,probability,emote,duration,sound,`comment`)
VALUES
(42386,0,0,'I ain''t tellin'' you a damn thing!',12,0,100,1,3000,0,'Murder was the case 1st aggro sentence'),
(42386,0,1,'You rich punks are all the same!',12,0,100,1,3000,0,'Murder was the case 2nd aggro sentence'),
(42386,0,2,'Now you''v''e gone and done it! TIME FOR THE FIST!',12,0,100,1,3000,0,'Murder was the case 3rd aggro sentence'),
(42386,1,0,'You can''t buy me! DIE!',12,0,100,1,3000,0,'Murder was the case 4th aggro sentence');

-- On to the script creation
DELETE FROM smart_scripts WHERE entryorguid='42386';
INSERT INTO smart_scripts
VALUES
(42386,0,0,0,62,0,100,0,@GOSSIP_MENU_ID2,0,0,0,1,0,2000,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - random aggro sentence'),
(42386,0,1,0,62,0,100,0,@GOSSIP_MENU_ID2,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - close gossip'),
(42386,0,2,0,52,0,100,0,0,42386,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - start attack'),
(42386,0,3,0,52,0,100,0,0,42386,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - npc_flag to 0'),
(42386,0,4,0,52,0,100,0,0,42386,0,0,2,20,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - change faction to aggressive'),
(42386,0,5,0,62,0,100,0,@GOSSIP_MENU_ID2,1,0,0,1,1,2000,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip2 - random aggro sentence'),
(42386,0,6,0,62,0,100,0,@GOSSIP_MENU_ID2,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - close gossip'),
(42386,0,7,0,52,0,100,0,1,42386,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip2 - start attack'),
(42386,0,8,0,52,0,100,0,1,42386,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip2 - npc_flag to 0'),
(42386,0,9,0,52,0,100,0,1,42386,0,0,2,20,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip2 - change faction to aggressive'),
(42386,0,10,0,25,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Reset - change faction back to neutral'),
(42386,0,11,0,25,0,100,0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Reset - change npc_flag back to gossip');

-- Add condtions for the quest gossip menu to appear only when the quest is active. When not, the hobos won't talk to you
DELETE FROM conditions WHERE SourceTypeOrReferenceId='15' AND SourceGroup=@GOSSIP_MENU_ID1;
DELETE FROM conditions WHERE SourceTypeOrReferenceId='15' AND SourceGroup=@GOSSIP_MENU_ID2;

INSERT INTO conditions
VALUES
(15,@GOSSIP_MENU_ID1,0,0,9,26209,0,0,0,0,0,0,0,0,'Show gossip 0 only with quest 26209 active'),
(15,@GOSSIP_MENU_ID1,1,0,9,26209,0,0,0,0,0,0,0,0,'Show gossip 1 only with quest 26209 active'),
(15,@GOSSIP_MENU_ID2,0,0,9,26209,0,0,0,0,0,0,0,0,'Show gossip 0 only with quest 26209 active'),
(15,@GOSSIP_MENU_ID2,1,0,9,26209,0,0,0,0,0,0,0,0,'Show gossip 1 only with quest 26209 active');

-- Miscellanious
-- Sack of Oats : quest obsolete, GO untargetable on retail
UPDATE gameobject_template SET flags='16' WHERE entry='2724';

-- Something Stinks (A:24655 H:24536)
SET @GUID           := 600000; -- TER-Server-DB.r400
SET @EVENT          := 8; -- Love is in the Air

SET @BUNNY          := 38288; -- Love Guard Perfume Bunny
SET @GUARD_SW       := 68; -- Stormwind City Guard
SET @PATROOLER_SW   := 1976; -- Stormwind City Patroller
SET @GUARD_ORG      := 3296; -- Orgrimmar Grunt
SET @ELITE_ORG      := 14304; -- Kor'kron Elite

SET @SPELL_PULSE    := 71520; -- Heavily Perfumed Pulse
SET @SPELL_BUFF     := 71507; -- Heavily Perfumed
SET @SPELL_ANALYSIS := 70192; -- Fragrant Air Analysis


DELETE FROM `creature` WHERE `id`=@BUNNY;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+0,@BUNNY,0,1,1,0,0,-8825.604,629.3108,94.1137,0,300,0,0,1,0,0,0,0,0), -- sw trade district
(@GUID+1,@BUNNY,0,1,1,0,0,-8988.889,849.4149,105.9425,0,300,0,0,1,0,0,0,0,0), -- sw mage quarter
(@GUID+2,@BUNNY,0,1,1,0,0,-8737.654,1051.887,90.8816,0,300,0,0,1,0,0,0,0,0), -- sw the park
(@GUID+3,@BUNNY,0,1,1,0,0,-8625.038,780.0799,96.73399,0,300,0,0,1,0,0,0,0,0), -- sw cathedral square
(@GUID+4,@BUNNY,0,1,1,0,0,-8433.189,607.2205,95.13025,0,300,0,0,1,0,0,0,0,0), -- sw dwarven district
(@GUID+5,@BUNNY,0,1,1,0,0,-8486.955,390.5139,108.4689,0,300,0,0,1,0,0,0,0,0), -- sw stormwind keep
(@GUID+6,@BUNNY,0,1,1,0,0,-8676.724,444.5052,99.73087,0,300,0,0,1,0,0,0,0,0), -- sw old town
--
(@GUID+7,@BUNNY,1,1,1,0,0,1573.92,-4397.11,16.00813,0,300,0,0,1,0,0,0,0,0), -- org valley of strength
(@GUID+8,@BUNNY,1,1,1,0,0,1893.24,-4507.31,24.94853,0,300,0,0,1,0,0,0,0,0), -- org the drag
(@GUID+9,@BUNNY,1,1,1,0,0,2015.27,-4687.4,28.61023,0,300,0,0,1,0,0,0,0,0); -- org valley of honor

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELL_PULSE;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@SPELL_BUFF;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_PULSE,0,0,31,0,3,@GUARD_SW,0,0,0,0,'',"Heavily Perfumed Pulse target Stormwind City Guard"),
(13,1,@SPELL_PULSE,0,1,31,0,3,@PATROOLER_SW,0,0,0,0,'',"Heavily Perfumed Pulse target Stormwind City Patroller"),
(13,1,@SPELL_PULSE,0,2,31,0,3,@GUARD_ORG,0,0,0,0,'',"Heavily Perfumed Pulse target Orgrimmar Grunt"),
(13,1,@SPELL_PULSE,0,3,31,0,3,@ELITE_ORG,0,0,0,0,'',"Heavily Perfumed Pulse target Kor'kron Elite"),
(17,0,@SPELL_BUFF,0,0,1,0,@SPELL_BUFF,0,0,1,0,0,'',"Apply Heavily Perfumed only when missing");

UPDATE `creature_template` SET `AIName`='SmartAI',`InhabitType`=4,`flags_extra`=`flags_extra`|128 WHERE `entry`=@BUNNY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@BUNNY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@BUNNY,0,0,0,60,0,100,0,0,0,600000,600000,11,@SPELL_PULSE,0,0,0,0,0,1,0,0,0,0,0,0,0,"On update(each 10 min) - Cast - Self");

-- ussing this because dummy effect #1 of spell 70192 is to remove the buff
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=@SPELL_ANALYSIS;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@SPELL_ANALYSIS,-@SPELL_BUFF,1,'Remove Heavily Perfumed on Fragrant Air Analysis hit');

DELETE FROM `game_event_creature` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @GUID+0 AND @GUID+9;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(@EVENT,@GUID+0),
(@EVENT,@GUID+1),
(@EVENT,@GUID+2),
(@EVENT,@GUID+3),
(@EVENT,@GUID+4),
(@EVENT,@GUID+5),
(@EVENT,@GUID+6),
(@EVENT,@GUID+7),
(@EVENT,@GUID+8),
(@EVENT,@GUID+9);

UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=32971; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=32971; 
UPDATE `creature` SET `phaseMask`=1 WHERE `id`=32971; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=32971);

UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=32973; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=32973; 
UPDATE `creature` SET `phaseMask`=1 WHERE `id`=32973; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=32973);

UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=32974; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=32974; 
UPDATE `creature` SET `phaseMask`=1 WHERE `id`=32974; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=32974);

UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=32972; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=32972; 
UPDATE `creature` SET `phaseMask`=1 WHERE `id`=32972; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=32972);

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGo3` = 0, `RequiredNpcOrGo4` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0, `RequiredNpcOrGoCount3` = 0, `RequiredNpcOrGoCount4` = 0 WHERE `Id` = 13518;

-- Quest 13527 No Accounting for Taste
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='32975');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('32975', '62113', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='32975');

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredItemId2` = 0, `RequiredItemCount2` = 0 WHERE `Id` = 13557; 

-- S.A.F.E. Operative <S.A.F.E.>
SET @ENTRY := 45847;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,0,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,0,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,0,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Survivor SAI
SET @ENTRY := 46268;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,17,431,0,0,0,0,0,1,0,0,0,0,0,0,0,"Survivor - on spawn - set emote state (431)"),
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Spawn'),
(@ENTRY,0,2,3,8,0,100,0,86264,0,5000,5000,33,46268,0,0,0,0,0,7,0,0,0,0,0,0,0,"Quest Kredit"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,11,83369,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Teleport Spell"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Survivor - linked - despawn after 5 seconds"),
(@ENTRY,0,5,0,1,0,10,0,60000,300000,60000,300000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Survivor - linked - say text 0 (10% chance)");

-- Living Contamination
SET @ENTRY := 43089;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,12000,15000,11,21067,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Poison Bolt'),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,63227,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP');
-- NPC talk text insert
SET @ENTRY := 43089;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s becomes enraged!',16,0,100,0,0,0, 'combat Enrage');

-- √номреганский призывник
SET @ENTRY := 43092;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,5,30,3500,4100,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,4,0,9,1,100,0,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,5,0,9,1,100,0,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,9,1,100,0,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shoot Range');

-- Gnomeregan Trainee SAI
SET @ENTRY := 42329;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,0,1200,1700,1800,2000,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,"Play ONESHOT_ATTACK1H emote"),
(@ENTRY,0,1,0,1,0,100,0,0,4000,2000,10000,5,440,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chance to Dodge"),
(@ENTRY,0,2,0,1,0,100,0,0,4000,2000,10000,5,54,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chance for Special");

--- Feeling Crabby? Quest

UPDATE creature_template SET npcflag=1, AIName='SmartAI' WHERE entry=42339 LIMIT 1;

--- Script
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42339, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Canal Crab On Gossip Hello - Gossip Close');
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42339, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 57175, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Canal Crab On Gossip Hello - Add item');
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42339, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Canal Crab On Gossip Hello - Despawn');

--- Condition
REPLACE INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES (22, 1, 42339, 0, 0, 9, 0, 26177, 0, 0, 0, 0, 0, '', 'Feeling Craby? Quest Condition');

--- Diggin' For Worms Quest Fix

-- Fishing loot template---
REPLACE INTO fishing_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (5316, 58787, -100, 1, 0, 1, 1);

--- Condition---
REPLACE INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES (3, 5316, 58787, 0, 0, 1, 0, 80534, 0, 0, 0, 0, 0, '', 'Diggin for Worms Quest Spell Condition ');

--- SmartAI support for quest 26523 All that Skitters---

REPLACE INTO creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, exp_unk, faction_A, faction_H, npcflag, speed_walk, speed_run, speed_swim, speed_fly, scale, rank, mindmg, maxdmg, dmgschool, attackpower, dmg_multiplier, baseattacktime, rangeattacktime, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, minrangedmg, maxrangedmg, rangedattackpower, type, type_flags, type_flags2, lootid, pickpocketloot, skinloot, resistance1, resistance2, resistance3, resistance4, resistance5, resistance6, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, PetSpellDataId, VehicleId, mingold, maxgold, currencyId, currencyCount, AIName, MovementType, InhabitType, HoverHeight, Health_mod, Mana_mod, Mana_mod_extra, Armor_mod, RacialLeader, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, movementId, RegenHealth, equipment_id, mechanic_immune_mask, flags_extra, ScriptName, WDBVerified) VALUES (42689, 0, 0, 0, 0, 0, 1160, 0, 0, 0, 'Skittering Spiderling', '', 'Pickup', 0, 1, 1, 0, 0, 190, 190, 1, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 8, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.22, 0.1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

--- Condition--- // Negative Condition for the extra SmartAI to handle the gossip close without the quest
REPLACE INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES (22, 4, 42689, 0, 0, 9, 0, 26523, 0, 0, 1, 0, 0, '', NULL);
REPLACE INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES (22, 1, 42689, 0, 0, 9, 0, 26523, 0, 0, 0, 0, 0, '', NULL);

--- Script --- // Added another script to prevent the display of gossip without the quest
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42689, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skittering Spiderling on Gossip Hello - Close Gossip');
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42689, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 58120, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skittering Spiderling on Gossip Hello - Add Item');
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42689, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Skittering Spiderling on Gossip Hello - Despawn');
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42689, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skittering Spiderling on Gossip Hello - Close Gossip Whitout Quest');

--- SmartAI support for quest 26523 All that Skitters---

REPLACE INTO creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, exp_unk, faction_A, faction_H, npcflag, speed_walk, speed_run, speed_swim, speed_fly, scale, rank, mindmg, maxdmg, dmgschool, attackpower, dmg_multiplier, baseattacktime, rangeattacktime, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, minrangedmg, maxrangedmg, rangedattackpower, type, type_flags, type_flags2, lootid, pickpocketloot, skinloot, resistance1, resistance2, resistance3, resistance4, resistance5, resistance6, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, PetSpellDataId, VehicleId, mingold, maxgold, currencyId, currencyCount, AIName, MovementType, InhabitType, HoverHeight, Health_mod, Mana_mod, Mana_mod_extra, Armor_mod, RacialLeader, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, movementId, RegenHealth, equipment_id, mechanic_immune_mask, flags_extra, ScriptName, WDBVerified) VALUES (42689, 0, 0, 0, 0, 0, 1160, 0, 0, 0, 'Skittering Spiderling', '', 'Pickup', 0, 1, 1, 0, 0, 190, 190, 1, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 8, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.22, 0.1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

--- Condition--- // Negative Condition for the extra SmartAI to handle the gossip close without the quest
REPLACE INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES (22, 4, 42689, 0, 0, 9, 0, 26523, 0, 0, 1, 0, 0, '', NULL);
REPLACE INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES (22, 1, 42689, 0, 0, 9, 0, 26523, 0, 0, 0, 0, 0, '', NULL);

--- Script --- // Added another script to prevent the display of gossip without the quest
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42689, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skittering Spiderling on Gossip Hello - Close Gossip');
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42689, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 58120, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skittering Spiderling on Gossip Hello - Add Item');
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42689, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Skittering Spiderling on Gossip Hello - Despawn');
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42689, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skittering Spiderling on Gossip Hello - Close Gossip Whitout Quest');


--- Dalaran Cooking Dailys Currency Fix ----
UPDATE quest_template SET RewardCurrencyId1=81 WHERE Id=13100 LIMIT 1;
UPDATE quest_template SET RewardCurrencyId1=81 WHERE Id=13101 LIMIT 1;
UPDATE quest_template SET RewardCurrencyId1=81 WHERE Id=13102 LIMIT 1;
UPDATE quest_template SET RewardCurrencyId1=81 WHERE Id=13103 LIMIT 1;
UPDATE quest_template SET RewardCurrencyId1=81 WHERE Id=13112 LIMIT 1;
UPDATE quest_template SET RewardCurrencyId1=81 WHERE Id=13113 LIMIT 1;
UPDATE quest_template SET RewardCurrencyId1=81 WHERE Id=13114 LIMIT 1;
UPDATE quest_template SET RewardCurrencyId1=81 WHERE Id=13115 LIMIT 1;

UPDATE `quest_template` SET `SourceItemId` = 54453, `SourceItemCount` = 1 WHERE `Id` = 25473;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=45180;

--- Gossip ---
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (11967, 11967, 0, 'I\'m ready, Doctor Jones!', 1, 1, 0, 0, 0, 0, '');

--- Condition ---

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 11967, 11967, 0, 0, 9, 0, 27196, 0, 0, 0, 0, 0, '', 'HJ - Gossip Condition');


--- Waypoints ---

REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45180, 0, -9209.86, -1543.75, 65.4526, 'HJ - WP1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45180, 1, -9168.83, -1537.89, 67.1377, 'HJ - WP2');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45180, 2, -9152.16, -1533.14, 71.1813, 'HJ - WP3');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45181, 0, -9150.52, -1535.33, 71.7719, 'HJ - WP1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45181, 1, -9143.49, -1540.5, 74.8742, 'HJ - WP2');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45181, 2, -9130.93, -1548.22, 56.4815, 'HJ - WP3');

--- Texts ---

REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45180, 0, 0, 'Let\'s go, $N. Stay close.', 12, 0, 100, 0, 0, 0, 'HJ - On to Something - Say 1');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45180, 1, 0, 'Stay alert, now. There\'s no telling what we might run into down here...', 12, 0, 100, 0, 0, 0, 'HJ - On to Something - Say 2');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45180, 2, 0, 'Watch your step!', 12, 0, 100, 0, 0, 0, 'HJ - On to Something - Say 3');

--- Script ---

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45180, 0, 0, 1, 62, 0, 100, 0, 11967, 11967, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Harrison Jones on Gossip Select - Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45180, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 4518000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Harrison Jones on Gossip Select - Start Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4518000, 9, 0, 0, 0, 0, 100, 0, 200, 200, 200, 200, 1, 0, 200, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Says 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4518000, 9, 1, 0, 0, 0, 100, 0, 300, 300, 300, 300, 53, 1, 45180, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ WP Start');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4518000, 9, 2, 0, 0, 0, 100, 0, 11000, 11000, 11000, 11000, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Says 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4518000, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 33, 45238, 0, 0, 0, 0, 0, 17, 0, 30, 0, 0, 0, 0, 0, 'Script - HJ Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4518000, 9, 4, 0, 0, 0, 100, 0, 600, 600, 600, 600, 53, 1, 45181, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ WP Start 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4518000, 9, 5, 0, 0, 0, 100, 0, 1, 1, 1, 1, 11, 82929, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Jump 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4518000, 9, 6, 0, 0, 0, 100, 0, 200, 200, 200, 200, 1, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Says 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4518000, 9, 7, 0, 0, 0, 100, 0, 1, 1, 1, 1, 11, 82929, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Jump 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4518000, 9, 8, 0, 0, 0, 100, 0, 600, 600, 600, 600, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Despawn');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=44860;

-- smart script --
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (44860, 0, 0, 0, 1, 0, 100, 0, 2, 3, 2, 3, 33, 47318, 0, 0, 0, 0, 0, 17, 0, 30, 0, 0, 0, 0, 0, 'Harrison Jones Take to Them Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (44860, 0, 1, 0, 19, 0, 100, 0, 27141, 0, 0, 0, 80, 4486000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Harrison Jones - On PE Quest Accept Start Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 44860, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Start WP 1 Harrison Jones');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 6000, 6000, 12, 46720, 5, 45000, 0, 0, 0, 8, 0, 0, 0, -8948.19, -1528.95, 94.4531, 4.89651, 'Script - Summon Pygmy Ambusher');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 2, 0, 0, 0, 100, 0, 200, 200, 200, 200, 20, 0, 0, 0, 0, 0, 0, 11, 46720, 30, 0, 0, 0, 0, 0, 'Script - Pygmy Attacks');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 3, 0, 0, 0, 100, 0, 10, 10, 10, 10, 9, 1, 0, 0, 0, 0, 0, 20, 205388, 30, 0, 0, 0, 0, 0, 'Script - Activate Brazier');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 4, 0, 0, 0, 100, 0, 100, 100, 100, 100, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Says 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 53, 0, 44861, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ WP 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 6, 0, 0, 0, 100, 0, 100, 100, 100, 100, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Says 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 7, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 53, 0, 44862, 0, 0, 0, 0, 17, 0, 20, 0, 0, 0, 0, 0, 'Script - Player Go Waypoint');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 8, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 33, 45143, 0, 0, 0, 0, 0, 17, 0, 20, 0, 0, 0, 0, 0, 'Script - Cast Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 9, 0, 0, 0, 100, 0, 10, 10, 10, 10, 11, 110263, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Cast Explosion');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4486000, 9, 10, 0, 0, 0, 100, 0, 200, 200, 200, 200, 62, 1, 0, 0, 0, 0, 0, 17, 0, 20, 0, -9210.32, -1554.97, 65.4522, 3.27979, 'Script - Teleport Player');

-- creature_text --
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (44860, 0, 0, 'Whoa.. easy, now.', 12, 0, 100, 0, 0, 0, 'Harrison Jones PE says 1');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (44860, 1, 0, 'Quick, $N! Into the Chests!', 14, 0, 100, 5, 0, 0, 'Harrison Jones PE says 2');

-- waypoints --
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (44860, 0, -8951.67, -1545.09, 94.4536, 'Harrison Jones PE WP1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (44860, 1, -8950.22, -1551.92, 94.4536, 'Harrison Jones PE WP2');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (44861, 0, -8951.43, -1550.61, 94.4536, 'Harrison Jones PE WP3');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (44861, 1, -8957.08, -1553.98, 95.5116, 'Harrison Jones PE WP4');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (44862, 0, -8949.57, -1546.4, 94.4538, 'PE Player WP1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (44862, 1, -8957.07, -1546.86, 95.5901, 'PE Player WP2');

UPDATE `creature_template` SET `AIName`='SmartAI', `InhabitType`=7 WHERE `entry`=45299;

--- Texts ---

REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45296, 0, 0, 'Alright, $N. Time to see what this staff of yours has to show us.', 12, 0, 100, 0, 0, 0, 'HJ - Says 1');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45296, 1, 0, 'Just stand back, $N. We wouldn\'t want a pretty little thing like you getting hurt.', 12, 0, 100, 6, 0, 0, 'HJ - Says 2');

--- Waypoints ---

REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45296, 0, -9181.38, -1553.09, -172.559, 'HJ - WP 1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45296, 1, -9193.27, -1552.94, -172.559, 'HJ - WP 2');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45296, 2, -9198.39, -1553.04, -170.909, 'HJ - WP 3');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45297, 0, -9198.39, -1553.04, -170.909, 'HJ - WP 1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45297, 1, -9186.85, -1552.75, -172.559, 'HJ - WP 2');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45298, 0, -9186.85, -1552.75, -172.559, 'HJ - WP 1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45298, 1, -9157.06, -1497.13, -170.91, 'HJ - WP 2');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45298, 2, -9148.87, -1468.85, -170.91, 'HJ - WP 3');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45299, 0, -9147, -1464.39, -167.545, 'HJ - WP 1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45299, 1, -9141.95, -1457.08, -155.399, 'HJ - WP 2');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45299, 2, -9142, -1453.35, -140.87, 'HJ - WP 3');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45299, 3, -9144.95, -1456.29, -119.975, 'HJ - WP 4');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45299, 4, -9160.72, -1458.48, -109.436, 'HJ - WP 5');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45299, 5, -9168.99, -1475.42, -142.365, 'HJ - WP 6');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45300, 0, -9155.8, -1491.26, -170.91, 'HJ - WP 1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (45300, 1, -9176.32, -1552.92, -172.558, 'HJ - WP 1');

--- Gossip ---

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (12037, 12037, 0, 'What can I do to help?', 1, 1, 0, 0, 0, 0, '');

--- Conditions ---

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 12037, 12037, 0, 0, 9, 0, 27431, 0, 0, 0, 0, 0, '', 'Show Gossip on Quest 27431 Accept');

--- Script ---

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45296, 0, 0, 0, 19, 0, 100, 0, 27431, 0, 0, 0, 80, 4529600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Harrison Jones on quest Accept 27431 Start Script 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45296, 0, 1, 2, 62, 0, 100, 0, 12037, 12037, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Harrison Jones on Gossip Select Close Gossip');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45296, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 4529601, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Harrison Jones on Gossip Select Start Script 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Says 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529600, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 45296, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Start WP 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529600, 9, 2, 0, 0, 0, 100, 0, 11000, 11000, 11000, 11000, 11, 93496, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Throw Staff');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529600, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 12, 45299, 5, 980000, 0, 0, 0, 8, 0, 0, 0, -9261.81, -1552.86, -142.859, 0.296706, 'Script - HJ Summon Staff');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529600, 9, 4, 0, 0, 0, 100, 0, 1, 1, 1, 1, 53, 0, 45297, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Start WP 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Says 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 3000, 3000, 53, 1, 45298, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Start WP 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 2, 0, 0, 0, 100, 0, 16000, 16000, 16000, 16000, 53, 1, 45299, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Start WP 4');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 3, 0, 0, 0, 100, 0, 200, 200, 200, 200, 11, 82929, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Jump 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 82929, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Jump 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 11, 82929, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Jump 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 6, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 11, 82929, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Jump 4');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 7, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 11, 82929, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Jump 5');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 8, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 11, 82929, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Jump 6');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 9, 0, 0, 0, 100, 0, 12000, 12000, 12000, 12000, 53, 82929, 45300, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - HJ Start WP 5');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4529601, 9, 10, 0, 0, 0, 100, 0, 12000, 12000, 12000, 12000, 33, 45742, 0, 0, 0, 0, 0, 17, 0, 200, 0, 0, 0, 0, 0, 'Script - HJ Give Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45299, 0, 0, 0, 1, 0, 100, 1, 1, 2, 0, 0, 11, 109406, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Staff on Spawn Cast Lightning Effect 2');

-- A Fowl Shortage SmartAI Support

UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=53568 LIMIT 1;

--- Script
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (53568, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dun Morogh Chicken On Gossip Hello - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (53568, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 69982, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dun Morogh Chicken On Gossip Hello - Add item');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (53568, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dun Morogh Chicken On Gossip Hello - Despawn');

--- Condition
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 53568, 0, 0, 9, 0, 29352, 0, 0, 0, 0, 0, '', 'A Fowl Shortage - Quest Condition');

--- I need to Cask a Favor Quest Fix

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=5159 LIMIT 1;


--- Script ----
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5159, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 33, 53574, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Daryl Riknussun on Gossip Hello - Give quest 29356 Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5159, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 99493, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Daryl Riknussun on Gossip Hello - Remove Aura');

--- Condition ---
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 5159, 0, 0, 9, 0, 29356, 6, 0, 0, 0, 0, '', 'Daryl Riknussun Quest Condition');

--- Creature Template ---
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=42465;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=43809;

--- Quest ---- ///in case of need
UPDATE `quest_template` SET `Method`=2, `Flags`=1048712, `RequiredNpcOrGo1`=44051, `RequiredNpcOrGoCount1`=1 WHERE `Id`=26752 LIMIT 1;

--- Texts ---
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (42465, 0, 0, 'So small. So soft. It\'s a wonder you\'ve even lasted this long down here, fleshling.', 12, 0, 100, 0, 0, 0, 'Therazane Says 1');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (42465, 1, 0, 'Or perhaps a testament to your abilities?', 12, 0, 100, 0, 0, 0, 'Therazane Says 2');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (42465, 2, 0, 'All of this for a piece of the World Pillar? What exactly shaman do you intend to do with it?', 12, 0, 100, 0, 0, 0, 'Therazane Says 3');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (42465, 3, 0, 'And what then? Will you leave Deepholm to its denizens?', 12, 0, 100, 0, 0, 0, 'Therazane Says 4');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (42465, 4, 0, 'I\'m glad you\'re at least that perceptive.', 12, 0, 100, 0, 0, 0, 'Therazane Says 5');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (42465, 5, 0, 'I propose this: We will march on the Twilight cult and extinguish any utterings of Deathwing\'s name from this realm. Your Earthen Ring will march with us.', 12, 0, 100, 0, 0, 0, 'Therazane Says 6');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (42465, 6, 0, 'You do this, and I will send Gorsik to the temple with our piece of the World Pillar.', 12, 0, 100, 0, 0, 0, 'Therazane Says 7');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (42465, 7, 0, 'Seal the rift and leave this place.', 12, 0, 100, 0, 0, 0, 'Therazane Says 8');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (42465, 8, 0, 'Save your thanks. We march upon the Twilight Precipice as soon as our forces are gathered. I expect to see you on the battlefield.', 12, 0, 100, 0, 0, 0, 'Therazane Says 9');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (43809, 0, 0, 'We came here to seal da rift Deathwing tore into Azeroth. We need the World Pillar to repair da hole on dis side.', 12, 0, 100, 0, 0, 0, 'Torunscar Says 1');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (43809, 1, 0, 'We\'ll leave. We\'ve no desire to be stayin\' where we\'re not welcome.', 12, 0, 100, 0, 0, 0, 'Torunscar Says 2');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (43809, 2, 0, 'We\'ll be doin\' exactly that then. Ya have our tanks, Stonemother.', 12, 0, 100, 0, 0, 0, 'Torunscar Says 3');

--- Waypoints ---
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (43809, 0, 2343.67, 192.749, 179.918, 'Torunscar WP1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (43809, 1, 2352.92, 180.215, 180.717, 'Torunscar WP2');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (43809, 2, 2354.67, 180.211, 180.881, 'Torunscar WP3');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (43810, 0, 2354.67, 180.211, 180.881, 'Torunscar WP1');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (43810, 1, 2352.92, 180.215, 180.717, 'Torunscar WP2');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (43810, 2, 2343.67, 192.749, 179.918, 'Torunscar WP3');

--- Script ---
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42465, 0, 0, 0, 19, 0, 100, 0, 26752, 0, 0, 0, 80, 4246500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Therazane on Quest Accept - Start Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43809, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4380900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Torunscar on Quest Accept - Start Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 43809, 5, 980000, 0, 0, 0, 8, 0, 0, 0, 2339.98, 195.193, 179.936, 2.95537, 'Script - Summon Torunscar');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4380900, 9, 0, 0, 0, 0, 100, 0, 500, 500, 500, 500, 53, 1, 43809, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Tornscar Start WP 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Therazane Says 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4380900, 9, 1, 0, 0, 0, 100, 0, 45000, 45000, 45000, 45000, 53, 1, 43810, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Tornscar Start WP 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Therazane Says 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4380900, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 3000, 3000, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Tornscar Despawns');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Therazane Says 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 4, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 0, 0, 0, 0, 0, 0, 19, 43809, 40, 0, 0, 0, 0, 0, 'Script - Torunscar Says 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 5, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Therazane Says 4');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 6, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 1, 0, 0, 0, 0, 0, 19, 43809, 40, 0, 0, 0, 0, 0, 'Script -Torunscar Says 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 7, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Therazane Says 5');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 8, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Therazane Says 6');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 9, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Therazane Says 7');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 10, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Therazane Says 8');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 11, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 2, 0, 0, 0, 0, 0, 19, 43809, 40, 0, 0, 0, 0, 0, 'Script - Torunscar Says 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 12, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Therazane Says 9');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4246500, 9, 13, 0, 0, 0, 100, 0, 1, 1, 1, 1, 33, 44051, 0, 0, 0, 0, 0, 17, 0, 35, 0, 0, 0, 0, 0, 'Script - Credit');



DELETE FROM `quest_template` WHERE `Id`=27450 LIMIT 1;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (27450, 2, 42, 39, 0, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5500, 28800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64640, 0, 0, 0, 1, 0, 0, 0, 62974, 62973, 62972, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1106, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frederick\'s Fish Fancy', 'Obtain 8 Plague Puffers, 8 Infectis Inchers, and 8 Infectis Scuttlers from the Infectis Scar.', 'I love the sea.  Yes, it was I, Frederick Calston, who introduced the sea life to that lake in the southwest.  I had hoped to provide the Crusade with a source of fresh food from within the borders of the Plaguelands.$b$bHowever, some of the fish turned out to be predators, and they now terrorize the other animals.  If we\'re not careful, they will kill them all!$b$bSwim down to the bottom of the scar and save some snails, crabs, and pufferfish before it\'s too late.', '', NULL, NULL, 'Return to Frederick Calston at Light\'s Shield Tower in Eastern Plaguelands.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61292, 61293, 61294, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

--- Creature AI and loot flag ---
UPDATE `creature_template` SET `faction_A`=190, `faction_H`=190, `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=45650;
UPDATE `creature_template` SET `faction_A`=190, `faction_H`=190, `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=45655;
UPDATE `creature_template` SET `faction_A`=190, `faction_H`=190, `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=45657;

--- Conditions for AI with and without quests ---
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 45650, 0, 0, 9, 0, 27450, 0, 0, 0, 0, 0, '', 'Condition to Loot with Quest 27450');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 4, 45650, 0, 0, 9, 0, 27450, 0, 0, 1, 0, 0, '', 'Condition for denied Loot without Quest 27450');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 45655, 0, 0, 9, 0, 27450, 0, 0, 0, 0, 0, '', 'Condition to Loot with Quest 27450');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 4, 45655, 0, 0, 9, 0, 27450, 0, 0, 1, 0, 0, '', 'Condition for denied Loot without Quest 27450');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 45657, 0, 0, 9, 0, 27450, 0, 0, 0, 0, 0, '', 'Condition to Loot with Quest 27450');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 4, 45657, 0, 0, 9, 0, 27450, 0, 0, 1, 0, 0, '', 'Condition for denied Loot without Quest 27450');

--- Script ---
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45650, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Plague Puffer on Gossip Hello - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45650, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 61292, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Plague Puffer on Gossip Hello - Add Item');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45650, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Plague Puffer on Gossip Hello - Despawn Self');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45650, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Plague Puffer on Gossip Hello - Gossip Close without quest');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45655, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Infectis Incher on Gossip Hello - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45655, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 61293, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Infectis Incher on Gossip Hello - Add Item');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45655, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infectis Incher on Gossip Hello - Despawn Self');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45655, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Infectis Incher on Gossip Hello - Gossip Close without quest');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45657, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Infectis Scuttler on Gossip Hello - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45657, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 61294, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Infectis Scuttler on Gossip Hello - Add Item');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45657, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infectis Scuttler on Gossip Hello - Despawn Self');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45657, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Infectis Scuttler on Gossip Hello - Gossip Close without quest');

-- Dragonmaw Shadowwarder SAI
SET @ENTRY := 1038;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3500,6400,11,20807,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,11,20807,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - On Aggro - Cast 20807"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3500,6400,11,20807,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-40 Range - Cast 20807 (Phase 1)"),
(@ENTRY,0,4,5,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Mana - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Mana - Increment Event Phase (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 35-80 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 5-15 Range - Disallow Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-5 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 30-100% Mana - Decrement Event Phase (Phase 2)"),
(@ENTRY,0,10,11,2,1,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Set Event Phase 3"),
(@ENTRY,0,11,12,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Allow Combat Movement"),
(@ENTRY,0,12,0,61,1,100,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Flee For Assist");

-- Mechashark X-Steam Controller SAI
SET @ENTRY := 202108;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,0,0,0,0,85,71662,2,0,0,0,0,7,0,0,0,0,0,0,0,"On Gossip - Cast Mechashark X");

-- Bale of Hay SAI
SET @ENTRY := 206682;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,8,0,100,1,88646,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bale of Hay - Despawn after 2 second");

UPDATE `quest_template` SET `Flags`=128, `RequiredNpcOrGo1`=-205485, `RequiredNpcOrGoCount1`=1, `RequiredSourceItemId1`=0, `RequiredSourceItemCount1`=0 WHERE `Id`=27454 LIMIT 1;
UPDATE `gameobject_template` SET `type`=10 WHERE `entry`=205485 LIMIT 1;

UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=51681 LIMIT 1;

--- Condition
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 51681, 0, 0, 9, 0, 29032, 0, 0, 0, 0, 0, '', 'Get Them While They\'re Young Quest Condition');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 4, 51681, 0, 0, 9, 0, 29032, 0, 0, 1, 0, 0, '', 'Get Them While They\'re Young Quest Negative Condition');


-- Script ---
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub on Gossip hello - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 68638, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub on Gossip hello - Add item');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub on Gossip hello - Despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub Gossip close without quest');

REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `req_aura`, `comment`) VALUES (78838, 78834, 0, 0, 'Enohar Flaming Arrow trigger');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42235, 0, 2, 3, 8, 0, 100, 0, 78834, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darktail Bonepicker on Spellhit - Die');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42235, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 42235, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darktail Bonepicker on Spellhit - Give Credit');

UPDATE `npc_vendor` SET `entry`=465720 WHERE `entry`=46572;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (465720, 0, 0, 0, 0, 0, 35148, 0, 0, 0, 'Goram', 'Guild Vendor', '', 0, 45, 45, 0, 0, 1735, 1735, 129, 1, 1.14286, 1, 1.14286, 1, 0, 76, 100, 0, 184, 1, 2000, 2000, 1, 0, 2048, 2048, 0, 0, 0, 0, 0, 52, 76, 17, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
UPDATE `creature` SET `id`=465720 WHERE `id`=46572;




UPDATE `quest_template` SET `RequiredItemId1`=61921, `RequiredItemId2`=61922, `RequiredItemId3`=61373, `RequiredItemCount1`=1, `RequiredItemCount2`=1, `RequiredItemCount3`=1 WHERE `Id`=27600 LIMIT 1;


UPDATE `creature_template` SET `gossip_menu_id`=46245, `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=46245;


UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=206679;


REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (46245, 0, 0, 'Load me into that cannon, boy!', 1, 1, 0, 0, 0, 0, '');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (12292, 0, 0, 'I\'ll get in and fire it! What could go wrong?', 1, 1, 0, 0, 0, 0, '');



REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 46245, 0, 0, 0, 9, 0, 27600, 0, 0, 0, 0, 0, '', 'Condition for gossip with quest 27600');


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (46245, 0, 0, 1, 62, 0, 100, 0, 46245, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lil\' Crazy Jerry on Gossip select - gossip close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (46245, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 4624500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lil\' Crazy Jerry on Gossip select - Start Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4624500, 9, 0, 0, 0, 0, 100, 0, 200, 200, 200, 200, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10165.9, -4182.16, 25.1108, 5.23336, 'Script - Load in to cannon (teleport)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4624500, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 102115, 4, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Script - Fire cannon (visual)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4624500, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -9997.39, -4562.49, 18.3499, 5.24985, 'Script - Fired to Ship (teleport)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (206679, 1, 0, 1, 62, 0, 100, 0, 12292, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Landward Cannon on Gossip Select - gossip close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (206679, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 20667900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Landward Cannon on Gossip Select - Start script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (20667900, 9, 0, 0, 0, 0, 100, 0, 200, 200, 200, 200, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -9969.9, -4538.44, 14.2302, 2.08941, 'Script - Load in to cannon (teleport)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (20667900, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 102115, 4, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Script - Fire cannon (visual)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (20667900, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10164.7, -4177.73, 21.9119, 2.14886, 'Script - Fired to Goblin (teleport)');



UPDATE `creature_template` SET `npcflag`=1, `unit_flags`=0, `unit_flags2`=2049, `AIName`='SmartAI' WHERE `entry`=46014;


REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 46014, 0, 0, 9, 0, 27599, 0, 0, 0, 0, 0, '', 'Condition to Loot with Quest 27599');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 4, 46014, 0, 0, 9, 0, 27599, 0, 0, 1, 0, 0, '', 'Condition for denied Loot without Quest 27599');


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (46014, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Deceased Bogpaddle Privateer on Gossip Hello - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (46014, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 61923, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Deceased Bogpaddle Privateer on Gossip Hello - Add Item');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (46014, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Deceased Bogpaddle Privateer on Gossip Hello - Despawn Self');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (46014, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Deceased Bogpaddle Privateer on Gossip Hello - Gossip Close without quest');



UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48111;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48111, 0, 0, 1, 8, 0, 100, 0, 89477, 0, 0, 0, 46, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock War Kodo on Spell Hit - Start Moving Foward');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48111, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48111, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Blackrock War Kodo on Spell Hit - Give Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48111, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock War Kodo on Spell Hit - Despawn');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48201;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48121;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48119;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48201, 0, 0, 1, 8, 0, 100, 0, 89562, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Kill');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48201, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48201, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Give Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48121, 0, 0, 1, 8, 0, 100, 0, 89562, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Kill');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48121, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48119, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Give Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48119, 0, 0, 1, 8, 0, 100, 0, 89562, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Kill');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48119, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48119, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Unit on Spellhit - Give Credit');

UPDATE `creature_template` SET `gossip_menu_id`=48159, `AIName`='SmartAI' WHERE `entry`=48159 LIMIT 1;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48153;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48156;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48133;

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (48159, 0, 0, 'I\'d like to challenge your magma lord to a fight', 1, 1, 0, 0, 0, 0, NULL);


REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48159, 1, 0, 'Alright boys, we got a challenger! Time to show the general what our little captive can do!', 14, 0, 100, 5, 0, 0, 'Wyrtle Spreelthonket Say 1');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48159, 2, 0, 'Nooo! My baby...', 12, 0, 100, 18, 0, 0, 'Wyrtle Spreelthonket Say 2');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48133, 0, 0, 'Ah ha ha! well done!', 12, 0, 100, 11, 0, 0, 'General Thorg\'lzog Say');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 48159, 0, 0, 0, 9, 0, 28266, 0, 0, 0, 0, 0, '', 'Trial by Magma quest Condition');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48153, 0, 0, 0, 1, 0, 100, 0, 1, 2, 5000, 5200, 11, 25029, 4, 0, 0, 0, 0, 11, 48156, 10, 0, 0, 0, 0, 0, 'Goblin Flamethrower Cast Flamethrower Every 5 secs (visual Effect) on Magma lord');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48156, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0, 11, 48159, 30, 0, 0, 0, 0, 0, 'Magma Lord Kolob - On Death Make Goblin Say');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48156, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 0, 2000, 0, 0, 0, 0, 11, 48133, 30, 0, 0, 0, 0, 0, 'Magma Lord Kolob - On Death Make General Say');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48159, 0, 0, 1, 62, 0, 100, 0, 48159, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyrtle Spreelthonket on Gossip Select - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48159, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 4815900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wyrtle Spreelthonket on Gossip Select - Start Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4815900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4815900, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 2, 16, 0, 0, 0, 0, 0, 11, 48156, 15, 0, 0, 0, 0, 0, 'Script - Change Faction');

REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (89261, 89253, 'Blackrock Disguise');


UPDATE `creature_template` SET `gossip_menu_id`=48037, `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=48037;

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 48037, 0, 0, 0, 9, 0, 28227, 0, 0, 0, 0, 0, '', 'Golem Training Condition');


REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48037, 0, 0, 'Starting Training method', 12, 0, 100, 45, 0, 0, 'Golem Say 1');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (48037, 1, 0, 'Battle result: embarrassing failure. Incorporating new methods into battle regimen.', 12, 0, 100, 2, 0, 0, 'Golem Say 2');


REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (48037, 0, 0, 'I\'m here to help you with your combat training, golem.', 1, 1, 0, 0, 0, 0, '');



REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 0, 1, 62, 0, 100, 0, 48037, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Gossip Select - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 2, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Gossip Select - Change Faction to Agressive');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Gossip Select - Say 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 3, 4, 2, 0, 100, 0, 1, 30, 1, 2, 2, 1474, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Health Betwen 1 - 30 % - Change faction to 1474 (thorium Brotherhood)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48037, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Health Betwen 1 - 30 % - Give Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48037, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chiseled Golem on Health Betwen 1 - 30 - Say Surrender');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48671;

UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=48671;

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 48671, 0, 0, 9, 0, 28415, 0, 0, 0, 0, 0, '', 'Condition to Loot with Quest 28415');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 4, 48671, 0, 0, 9, 0, 28415, 0, 0, 1, 0, 0, '', 'Condition for denied Loot without Quest 28415');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48671, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Flamefly on Gossip Hello - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48671, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 64409, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Flamefly on Gossip Hello - Add Item');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48671, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flamefly on Gossip Hello - Despawn Self');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48671, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Flamefly on Gossip Hello - Gossip Close without quest');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=58964;
UPDATE `creature_template` SET `modelid1`=34645 WHERE `entry`=46988;
UPDATE `creature_template` SET `minlevel`=65, `maxlevel`=65, `AIName`='SmartAI' WHERE `entry`=45774;


UPDATE `quest_template` SET `Flags`=128, `RequiredNpcOrGo1`=1776, `RequiredNpcOrGoCount1`=1 WHERE `Id`=24913 LIMIT 1;


REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (58964, 0, 0, 'Even now, nothing. Why? Why would the Light forsake the innocent?', 12, 0, 100, 6, 0, 0, 'Avuun Says1');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (58964, 1, 0, 'Prophet Velen!', 12, 0, 100, 5, 0, 0, 'Avuun Says2');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (58964, 2, 0, '...thank you, Prophet. You have given both of us great comfort. I will continue my work, in faith and memory of Magtoor.', 12, 0, 100, 2, 0, 0, 'Avuun Says3');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (1776, 0, 0, 'Yes...', 12, 0, 100, 0, 0, 0, 'Magtoor Says');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 0, 0, 'Some have spent decades meditating upon this mystery, Avuun. I do not wish the same fate upon you.', 12, 0, 100, 0, 0, 0, 'Prophet Velen Says1');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 1, 0, 'The Light wishes suffering on none, my child. But it does not reign unopposed in our realm.', 12, 0, 100, 6, 0, 0, 'Prophet Velen Says2');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 2, 0, 'Even now, the true battle between the forces of Light and Darkness approaches. We will all be called to join, and in the face of this conflict, all mortal suffering will be meaningless.', 12, 0, 100, 6, 0, 0, 'Prophet Velen Says3');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 3, 0, 'Magtoor, you have endured your plight bravely. Are you ready to return to the embrace of the Light?', 12, 0, 100, 6, 0, 0, 'Prophet Velen Says4');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 4, 0, 'Then may the Light save you and raise you up.', 12, 0, 100, 0, 0, 0, 'Prophet Velen Says5');
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (45774, 5, 0, 'Remember, Avuun. Not all who wander are lost.', 12, 0, 100, 6, 0, 0, 'Prophet Velen Says6');


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (58964, 0, 0, 0, 19, 0, 100, 0, 24913, 0, 0, 0, 80, 5896400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Anchorite Avuun on Quest Accept - Start Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Anchorite Avuun Says 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 12, 46988, 3, 62500, 0, 0, 0, 8, 0, 0, 0, -10103.8, -2754.22, 25.339, 5.89144, 'Script - Summon Exodar Portal');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 45774, 3, 62500, 0, 0, 0, 8, 0, 0, 0, -10103.8, -2754.22, 25.339, 5.89144, 'Script - Summon Prophet Velen');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Anchorite Avuun Says 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 5, 0, 0, 0, 100, 0, 1500, 1500, 1500, 1500, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Anchorite Avuun Knees');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 6, 0, 0, 0, 100, 0, 7500, 7500, 7500, 7500, 1, 1, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 7, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 2, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 8, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 3, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 4');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 9, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 0, 1, 0, 0, 0, 0, 11, 1776, 10, 0, 0, 0, 0, 0, 'Script - Magtoor Says 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 10, 0, 0, 0, 100, 0, 6500, 6500, 6500, 6500, 1, 4, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 5');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 11, 0, 0, 0, 100, 0, 200, 200, 200, 200, 11, 97231, 4, 0, 0, 0, 0, 11, 1776, 10, 0, 0, 0, 0, 0, 'Script - Summon Light (Temp Light until find the correct spell)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 6000, 6000, 51, 0, 0, 0, 0, 0, 0, 11, 1776, 10, 0, 0, 0, 0, 0, 'Script - Magtoor Die');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 13, 0, 0, 0, 100, 0, 8000, 8000, 8000, 8000, 1, 5, 1, 0, 0, 0, 0, 11, 45774, 10, 0, 0, 0, 0, 0, 'Script - Velen Says 6');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 14, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 1, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Anchorite Avuun Says 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5896400, 9, 15, 0, 0, 0, 100, 0, 3000, 3000, 3000, 3000, 33, 1776, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Script - Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (45774, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4577400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Prophet Velen on Spawn - Start Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4577400, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 46, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Move Foward');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4577400, 9, 1, 0, 0, 0, 100, 0, 39000, 39000, 39000, 39000, 5, 25, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Point to Magtoor');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4577400, 9, 2, 0, 0, 0, 100, 0, 19000, 19000, 19000, 19000, 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -10103.8, -2754.22, 25.339, 5.89144, 'Script - Move to Portal');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4577400, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 64446, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Velen Cast Teleport');


UPDATE `quest_template` SET `RequiredItemId1`=63114, `RequiredItemId2`=63116, `RequiredItemId3`=63117, `RequiredItemId4`=63119, `RequiredItemCount1`=1, `RequiredItemCount2`=1, `RequiredItemCount3`=1, `RequiredItemCount4`=1 WHERE `Id`=28417;
UPDATE `quest_template` SET `RequiredItemId1`=63114, `RequiredItemId2`=63116, `RequiredItemId3`=63117, `RequiredItemId4`=63119, `RequiredItemCount1`=1, `RequiredItemCount2`=1, `RequiredItemCount3`=1, `RequiredItemCount4`=1 WHERE `Id`=28172;



UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=47814;
UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=47822;
UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=47821;
UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=47820;



DELETE FROM `smart_scripts` WHERE `entryorguid`=47814;
DELETE FROM `smart_scripts` WHERE `entryorguid`=47822;
DELETE FROM `smart_scripts` WHERE `entryorguid`=47821;
DELETE FROM `smart_scripts` WHERE `entryorguid`=47820;
DELETE FROM `smart_scripts` WHERE `entryorguid`=4781400;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47814, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 88964, 32, 0, 0, 0, 0, 19, 41200, 5, 0, 0, 0, 0, 0, 'On Reset, Cast Chains on Bunny npc');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47814, 0, 1, 2, 64, 0, 100, 0, 0, 0, 1, 1, 80, 4781400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Start Timed Action List');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47814, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, 63114, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Give player quest item');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4781400, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 44, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Change my phasemask to Phase 4');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4781400, 9, 1, 0, 0, 0, 100, 1, 15000, 15000, 0, 0, 44, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 15 Seconds, reset my phasemask to 1');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47822, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 88964, 0, 0, 0, 0, 0, 19, 41200, 5, 0, 0, 0, 0, 0, 'On update, Cast Chains on Bunny npc');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47822, 0, 1, 2, 64, 0, 100, 0, 0, 0, 1, 1, 80, 4781400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Start Timed Action List');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47822, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, 63119, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Give player quest item');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47821, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 88964, 0, 0, 0, 0, 0, 19, 41200, 5, 0, 0, 0, 0, 0, 'On Reset, Cast Chains on Bunny npc');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47821, 0, 1, 2, 64, 0, 100, 0, 0, 0, 1, 1, 80, 4781400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Start Timed Action List');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47821, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, 63117, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Give player quest item');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47820, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 1000, 1000, 11, 88964, 0, 0, 0, 0, 0, 19, 41200, 5, 0, 0, 0, 0, 0, 'On Reset, Cast Chains on Bunny npc');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47820, 0, 1, 2, 64, 0, 100, 0, 0, 0, 1, 1, 80, 4781400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Start Timed Action List');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (47820, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, 63116, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Hello, Give player quest item');



DELETE FROM `creature` WHERE `id`=41200;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (15462155, 41200, 0, 46, 5650, 1, 65535, 0, 1, -8256.14, -1019.37, 147.403, 1.1889, 300, 0, 0, 3052, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (15462158, 41200, 0, 46, 5650, 1, 65535, 0, 1, -8248.7, -1193.48, 142.563, 3.84342, 300, 0, 0, 3052, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (15462157, 41200, 0, 46, 5650, 1, 65535, 0, 1, -8279.23, -1135.26, 148.73, 0.211742, 300, 0, 0, 3052, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (15462156, 41200, 0, 46, 5650, 1, 65535, 0, 1, -8278.86, -1074.22, 143.777, 1.78175, 300, 0, 0, 3052, 0, 0, 0, 0, 0);


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48100;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48118;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48099;


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48100, 0, 0, 1, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Voodooist Timan on Spellhit - Die');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48100, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48100, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Voodooist Timan on Die - Give Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48118, 0, 0, 1, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Smoldethorn Shaman on Spellhit - Die');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48118, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48118, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Smoldethorn Shaman on Die - Give Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48118, 0, 2, 3, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Smoldethorn Shaman on Spellhit - Die');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48118, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48118, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Smoldethorn Shaman on Die - Give Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48099, 0, 0, 1, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgmistress Othana on Spellhit - Die');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (48099, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48099, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Worgmistress Othana on Die - Give Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (9176, 0, 3, 4, 8, 0, 100, 0, 89447, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gor\'tek on Spellhit - Die');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (9176, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 9176, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Gor\'tek on Die - Give Credit');


REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (17, 0, 89776, 0, 0, 36, 1, 0, 0, 0, 1, 0, 0, '', 'WorgSaw Condition');


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (9697, 0, 1, 2, 8, 0, 100, 0, 89776, 0, 0, 0, 11, 52580, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Giant Ember Worg - on Spellhit Cast Meat Explosion');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (9697, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Giant Ember Worg - on Spellhit Despawn');

DELETE FROM `creature` WHERE `id`=94;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(19742, 94, 0, 0, 0, 1, 1, 33164, 0, -9249.85, -16.9965, 72.5263, 3.93804, 90, 8, 0, 120, 0, 1, 0, 0, 0),
(19743, 94, 0, 0, 0, 1, 1, 33164, 0, -9187.95, 116.29, 75.104, 2.74732, 90, 9, 0, 102, 0, 1, 0, 0, 0),
(19744, 94, 0, 0, 0, 1, 1, 33164, 0, -9174.68, 41.4622, 78.0968, 0.871735, 90, 6, 0, 102, 0, 1, 0, 0, 0),
(19745, 94, 0, 0, 0, 1, 1, 33164, 0, -9465.2, 277.761, 53.2746, 1.73703, 90, 8, 0, 102, 0, 1, 0, 0, 0),
(19746, 94, 0, 0, 0, 1, 1, 33163, 0, -9213.08, 139.069, 72.5763, 4.77232, 90, 11, 0, 102, 0, 1, 0, 0, 0),
(19747, 94, 0, 0, 0, 1, 1, 33164, 0, -9479.28, 244.837, 53.3296, 4.72141, 90, 0, 0, 102, 0, 0, 0, 0, 0),
(19748, 94, 0, 0, 0, 1, 1, 33164, 0, -9480.13, 278.648, 53.0028, 6.10665, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(19919, 94, 0, 0, 0, 1, 1, 33164, 0, -9213.22, 13.1987, 78.221, 0.377781, 90, 9, 0, 102, 0, 1, 0, 0, 0),
(24857, 94, 0, 0, 0, 1, 1, 33164, 0, -9222.96, 245.751, 72.9226, 0.958294, 90, 7, 0, 102, 0, 1, 0, 0, 0),
(29573, 94, 0, 0, 0, 1, 1, 33164, 0, -9287.84, 454.534, 79.2817, 2.3595, 90, 7, 0, 102, 0, 1, 0, 0, 0),
(29625, 94, 0, 0, 0, 1, 1, 33163, 0, -9491.67, 314.062, 52.2417, 3.14159, 90, 0, 0, 102, 0, 0, 0, 0, 0),
(29644, 94, 0, 0, 0, 1, 1, 33163, 0, -9200.35, 186.99, 72.9682, 0.838323, 90, 8, 0, 120, 0, 1, 0, 0, 0),
(29825, 94, 0, 0, 0, 1, 1, 33163, 0, -9250.93, 123.212, 71.627, 0.821789, 90, 9, 0, 120, 0, 1, 0, 0, 0),
(30060, 94, 0, 0, 0, 1, 1, 33163, 0, -9281.98, 279.202, 70.8517, 2.49185, 90, 8, 0, 102, 0, 1, 0, 0, 0),
(30202, 94, 0, 0, 0, 1, 1, 33163, 0, -9213.08, 84.6816, 77.1651, 3.53039, 90, 6, 0, 102, 0, 1, 0, 0, 0),
(30300, 94, 0, 0, 0, 1, 1, 33164, 0, -9251.05, 34.4525, 72.587, 4.81988, 90, 7, 0, 120, 0, 1, 0, 0, 0),
(30587, 94, 0, 0, 0, 1, 1, 33163, 0, -9290.69, 198.764, 67.5562, 4.74652, 90, 0, 0, 120, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=525;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(19577, 525, 0, 0, 0, 1, 1, 903, 0, -9619.86, 315.072, 45.5412, 0.739102, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(19578, 525, 0, 0, 0, 1, 1, 903, 0, -9525.42, -57.1101, 59.1645, 1.87246, 90, 12, 0, 102, 0, 1, 0, 0, 0),
(19579, 525, 0, 0, 0, 1, 1, 903, 0, -9646.48, 369.777, 42.512, 2.63522, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(19580, 525, 0, 0, 0, 1, 1, 903, 0, -9459.12, 330.446, 53.5983, 3.41481, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(19581, 525, 0, 0, 0, 1, 1, 903, 0, -9587.98, -414.981, 62.495, 2.84392, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(19582, 525, 0, 0, 0, 1, 1, 903, 0, -9352.29, 46.2071, 61.5192, 2.90082, 90, 8, 0, 120, 0, 1, 0, 0, 0),
(19583, 525, 0, 0, 0, 1, 1, 903, 0, -9656.8, 580.034, 43.5473, 0.524749, 90, 12, 0, 120, 0, 1, 0, 0, 0),
(19584, 525, 0, 0, 0, 1, 1, 903, 0, -9347.56, 251.481, 64.9368, 5.86496, 90, 11, 0, 120, 0, 1, 0, 0, 0),
(19585, 525, 0, 0, 0, 1, 1, 903, 0, -9587.47, 462.569, 40.9467, 5.06531, 90, 9, 0, 102, 0, 1, 0, 0, 0),
(19586, 525, 0, 0, 0, 1, 1, 903, 0, -9343.62, -430.708, 67.7815, 4.96683, 90, 7, 0, 120, 0, 1, 0, 0, 0),
(19587, 525, 0, 0, 0, 1, 1, 903, 0, -9585.78, -349.598, 61.7206, 5.3359, 90, 9, 0, 102, 0, 1, 0, 0, 0),
(19588, 525, 0, 0, 0, 1, 1, 903, 0, -9705.16, 709.432, 32.5252, 5.9149, 90, 6, 0, 120, 0, 1, 0, 0, 0),
(19589, 525, 0, 0, 0, 1, 1, 903, 0, -9346.41, 323.995, 66.0246, 0.114929, 90, 8, 0, 102, 0, 1, 0, 0, 0),
(19590, 525, 0, 0, 0, 1, 1, 903, 0, -9276.13, -10.1486, 70.9215, 2.6928, 90, 5, 0, 120, 0, 1, 0, 0, 0),
(19591, 525, 0, 0, 0, 1, 1, 903, 0, -9555.67, -454.638, 62.1993, 4.54385, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(19592, 525, 0, 0, 0, 1, 1, 903, 0, -9619.11, 496.706, 41.6944, 2.27328, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(19593, 525, 0, 0, 0, 1, 1, 903, 0, -9379.32, 281.732, 64.0875, 5.6643, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(19595, 525, 0, 0, 0, 1, 1, 903, 0, -9622.23, 312.365, 46.0412, 1.13804, 90, 8, 0, 102, 0, 1, 0, 0, 0),
(19596, 525, 0, 0, 0, 1, 1, 903, 0, -9549.29, -253.807, 61.6285, 5.94227, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(19597, 525, 0, 0, 0, 1, 1, 903, 0, -9543.06, 282.384, 53.0485, 2.86249, 90, 12, 0, 120, 0, 1, 0, 0, 0),
(19598, 525, 0, 0, 0, 1, 1, 903, 0, -9592.42, 576.22, 49.4781, 3.40751, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(19599, 525, 0, 0, 0, 1, 1, 903, 0, -9613.2, 554.964, 41.6489, 3.27686, 90, 9, 0, 120, 0, 1, 0, 0, 0),
(19600, 525, 0, 0, 0, 1, 1, 903, 0, -9558.94, -379.309, 62.7438, 1.61624, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(19601, 525, 0, 0, 0, 1, 1, 903, 0, -9582.81, -278.646, 62.2471, 0.486065, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(19602, 525, 0, 0, 0, 1, 1, 903, 0, -9551.39, -315.409, 62.6051, 1.66602, 90, 11, 0, 120, 0, 1, 0, 0, 0),
(19603, 525, 0, 0, 0, 1, 1, 903, 0, -9308.82, -425.725, 69.4395, 0.284752, 90, 11, 0, 120, 0, 1, 0, 0, 0),
(19604, 525, 0, 0, 0, 1, 1, 903, 0, -9623.99, 520.831, 42.513, 3.91537, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(19606, 525, 0, 0, 0, 1, 1, 903, 0, -9704.72, 736.873, 30.9231, 3.92769, 90, 12, 0, 102, 0, 1, 0, 0, 0),
(19607, 525, 0, 0, 0, 1, 1, 903, 0, -9625.53, 506.856, 41.888, 2.38209, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(19608, 525, 0, 0, 0, 1, 1, 903, 0, -9364.98, -206.635, 64.3193, 5.71631, 90, 9, 0, 120, 0, 1, 0, 0, 0),
(19609, 525, 0, 0, 0, 1, 1, 903, 0, -9416.54, 319.163, 57.2871, 1.17572, 90, 6, 0, 102, 0, 1, 0, 0, 0),
(19610, 525, 0, 0, 0, 1, 1, 903, 0, -9645.84, 777.672, 34.0235, 1.5786, 90, 9, 0, 102, 0, 1, 0, 0, 0),
(19611, 525, 0, 0, 0, 1, 1, 903, 0, -9333.58, -387.426, 66.3802, 5.88873, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(19612, 525, 0, 0, 0, 1, 1, 903, 0, -9714.85, 407.465, 40.5421, 5.43702, 90, 8, 0, 102, 0, 1, 0, 0, 0),
(19613, 525, 0, 0, 0, 1, 1, 903, 0, -9447.19, 215.874, 59.8353, 4.68536, 90, 11, 0, 120, 0, 1, 0, 0, 0),
(19614, 525, 0, 0, 0, 1, 1, 903, 0, -9288.29, 99.792, 67.8377, 1.72374, 90, 12, 0, 102, 0, 1, 0, 0, 0),
(19615, 525, 0, 0, 0, 1, 1, 903, 0, -9411.12, 245.275, 61.3038, 5.38879, 90, 12, 0, 120, 0, 1, 0, 0, 0),
(24838, 525, 0, 0, 0, 1, 1, 903, 0, -9513.49, -114.171, 60.4964, 0.602387, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(24852, 525, 0, 0, 0, 1, 1, 903, 0, -9610.75, 518.436, 42.0201, 2.80998, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(24864, 525, 0, 0, 0, 1, 1, 903, 0, -9687.68, 541.835, 38.5999, 4.48014, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(29438, 525, 0, 0, 0, 1, 1, 903, 0, -9341.63, -441.186, 67.3398, 3.64912, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(29446, 525, 0, 0, 0, 1, 1, 903, 0, -9698.75, 361.089, 43.2105, 1.8499, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(29453, 525, 0, 0, 0, 1, 1, 903, 0, -9378.62, -219.771, 63.8649, 1.30482, 90, 7, 0, 120, 0, 1, 0, 0, 0),
(29511, 525, 0, 0, 0, 1, 1, 903, 0, -9665.16, 318.221, 45.826, 5.93013, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(29532, 525, 0, 0, 0, 1, 1, 903, 0, -9361.51, -384.289, 63.7492, 5.25251, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(29549, 525, 0, 0, 0, 1, 1, 903, 0, -9352.45, -181.314, 64.6985, 5.82566, 90, 11, 0, 102, 0, 1, 0, 0, 0),
(29562, 525, 0, 0, 0, 1, 1, 903, 0, -9411.61, -270.35, 66.4037, 0.736051, 90, 13, 0, 120, 0, 1, 0, 0, 0),
(29609, 525, 0, 0, 0, 1, 1, 903, 0, -9356.79, -414.932, 65.0315, 1.58661, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(29657, 525, 0, 0, 0, 1, 1, 903, 0, -9614.71, 475.894, 41.292, 1.61374, 90, 6, 0, 102, 0, 1, 0, 0, 0),
(29696, 525, 0, 0, 0, 1, 1, 903, 0, -9383.85, 60.5641, 60.1098, 1.5708, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(29703, 525, 0, 0, 0, 1, 1, 903, 0, -9687.31, 398.787, 41.3892, 0.855519, 90, 5, 0, 102, 0, 1, 0, 0, 0),
(29768, 525, 0, 0, 0, 1, 1, 903, 0, -9311.12, 356.148, 69.907, 1.97366, 90, 9, 0, 102, 0, 1, 0, 0, 0),
(29878, 525, 0, 0, 0, 1, 1, 903, 0, -9386.52, -275.254, 63.5913, 4.67108, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(29923, 525, 0, 0, 0, 1, 1, 903, 0, -9278.33, 376.932, 76.6932, 1.47093, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(29958, 525, 0, 0, 0, 1, 1, 903, 0, -9285.8, -186.611, 68.6111, 2.04841, 90, 9, 0, 120, 0, 1, 0, 0, 0),
(29994, 525, 0, 0, 0, 1, 1, 903, 0, -9341.52, -321.885, 68.3368, 6.24216, 90, 9, 0, 120, 0, 1, 0, 0, 0),
(30039, 525, 0, 0, 0, 1, 1, 903, 0, -9499.4, 310.238, 52.1167, 1.71923, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(30066, 525, 0, 0, 0, 1, 1, 903, 0, -9317.26, 14.7759, 62.8081, 3.30449, 90, 9, 0, 102, 0, 1, 0, 0, 0),
(30119, 525, 0, 0, 0, 1, 1, 903, 0, -9644.36, 346.095, 43.6548, 1.25707, 90, 12, 0, 102, 0, 1, 0, 0, 0),
(30161, 525, 0, 0, 0, 1, 1, 903, 0, -9389.67, -282.829, 62.9623, 4.49032, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(30205, 525, 0, 0, 0, 1, 1, 903, 0, -9512.5, 320.834, 53.238, 3.56871, 90, 8, 0, 102, 0, 1, 0, 0, 0),
(30239, 525, 0, 0, 0, 1, 1, 903, 0, -9384.14, -486.073, 68.8664, 4.33303, 90, 10, 0, 120, 0, 1, 0, 0, 0),
(30316, 525, 0, 0, 0, 1, 1, 903, 0, -9569.75, 309.073, 54.653, 3.9402, 90, 9, 0, 102, 0, 1, 0, 0, 0),
(30373, 525, 0, 0, 0, 1, 1, 903, 0, -9396.85, -272.529, 61.7762, 5.46288, 90, 11, 0, 102, 0, 1, 0, 0, 0),
(30399, 525, 0, 0, 0, 1, 1, 903, 0, -9657.47, 523.996, 41.1359, 2.50854, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(30426, 525, 0, 0, 0, 1, 1, 903, 0, -9422.63, 203.646, 60.0787, 3.10645, 90, 9, 0, 120, 0, 1, 0, 0, 0),
(30439, 525, 0, 0, 0, 1, 1, 903, 0, -9572.05, -232.66, 61.1372, 4.95879, 90, 9, 0, 102, 0, 1, 0, 0, 0),
(30454, 525, 0, 0, 0, 1, 1, 903, 0, -9651.3, 583.958, 43.2711, 3.48868, 90, 6, 0, 102, 0, 1, 0, 0, 0),
(30481, 525, 0, 0, 0, 1, 1, 903, 0, -9233.13, 425.06, 88.8118, 3.42684, 90, 7, 0, 120, 0, 1, 0, 0, 0),
(30495, 525, 0, 0, 0, 1, 1, 903, 0, -9611.63, 509.318, 41.8522, 3.49066, 90, 10, 0, 102, 0, 1, 0, 0, 0),
(30519, 525, 0, 0, 0, 1, 1, 903, 0, -9234.31, 49.8635, 74.212, 2.26628, 90, 8, 0, 120, 0, 1, 0, 0, 0),
(30532, 525, 0, 0, 0, 1, 1, 903, 0, -9544.4, -190.415, 61.5374, 0.758486, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(30606, 525, 0, 0, 0, 1, 1, 903, 0, -9582.51, 317.564, 55.3318, 1.81511, 90, 10, 0, 120, 0, 1, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=2442;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(516, 2442, 0, 0, 0, 1, 1, 0, 0, -4052.79, -1188.43, 146.439, 5.30464, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(522, 2442, 0, 0, 0, 1, 1, 0, 0, -4055.1, -1253.4, 146.439, 5.53267, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(526, 2442, 0, 0, 0, 1, 1, 0, 0, -4043.67, -1230.34, 146.439, 2.75651, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2421, 2442, 0, 0, 0, 1, 1, 0, 0, -9769.13, -341.805, 52.953, 6.18469, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2422, 2442, 0, 0, 0, 1, 1, 0, 0, -9778.8, -341.984, 52.9489, 3.26885, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2463, 2442, 0, 0, 0, 1, 1, 0, 0, -9667.13, -426.727, 55.4915, 3.18657, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2518, 2442, 0, 0, 0, 1, 1, 0, 0, -9689.74, -703.276, 47.923, 1.49852, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2520, 2442, 0, 0, 0, 1, 1, 0, 0, -9754.07, -766.14, 41.1131, 2.53247, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2543, 2442, 0, 0, 0, 1, 1, 0, 0, -9847.5, -931.191, 39.3815, 3.94356, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2569, 2442, 0, 0, 0, 1, 1, 0, 0, -9792.46, -1007.71, 40.4042, 0.729052, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2618, 2442, 0, 0, 0, 1, 1, 0, 0, -9888.53, -1265.28, 31.2214, 1.43507, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2629, 2442, 0, 0, 0, 1, 1, 0, 0, -14979.3, 265.158, 7.92121, 2.14202, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2683, 2442, 0, 0, 0, 1, 1, 0, 0, -9704.23, -1573.81, 55.4068, 1.82951, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2695, 2442, 0, 0, 0, 1, 1, 0, 0, -9606.55, -1480.66, 59.5119, 1.56153, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2710, 2442, 0, 0, 0, 1, 1, 0, 0, -9460.77, -1490.82, 62.3339, 4.78144, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2714, 2442, 0, 0, 0, 1, 1, 0, 0, -9436.16, -1445.25, 58.881, 0.817745, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2784, 2442, 0, 0, 0, 1, 1, 0, 0, -9349.07, -1157.95, 65.7252, 3.30414, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2800, 2442, 0, 0, 0, 1, 1, 0, 0, -9291.24, -1261.44, 71.3524, 2.5059, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2924, 2442, 0, 0, 0, 1, 1, 0, 0, -8968.72, -788.903, 70.6361, 3.53612, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2980, 2442, 0, 0, 0, 1, 1, 0, 0, -9371.27, -857.58, 64.9782, 6.10456, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(2986, 2442, 0, 0, 0, 1, 1, 0, 0, -9372.15, -915.326, 64.1119, 4.8004, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3019, 2442, 0, 0, 0, 1, 1, 0, 0, -9583.29, -1133.99, 43.8162, 5.51436, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3034, 2442, 0, 0, 0, 1, 1, 0, 0, -9491.57, -1041.34, 52.1683, 0.0192674, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3050, 2442, 0, 0, 0, 1, 1, 0, 0, -9485.08, -947.83, 54.9607, 5.46741, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3061, 2442, 0, 0, 0, 1, 1, 0, 0, -9486.3, -776.086, 60.8295, 1.92647, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3077, 2442, 0, 0, 0, 1, 1, 0, 0, -9607.08, -624.479, 53.6857, 3.1106, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3267, 2442, 0, 0, 0, 1, 1, 0, 0, -9575.11, -441.073, 60.44, 3.70682, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3575, 2442, 0, 0, 0, 1, 1, 0, 0, -807.588, -2025.81, 34.6415, 4.0861, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3578, 2442, 0, 0, 0, 1, 1, 0, 0, -814.419, -2031.16, 34.2396, 0.669194, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3579, 2442, 0, 0, 0, 1, 1, 0, 0, -821.737, -2023.97, 34.2857, 0.581052, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3587, 2442, 0, 0, 0, 1, 1, 0, 0, -806.674, -2039.2, 34.9843, 4.18802, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3589, 2442, 0, 0, 0, 1, 1, 0, 0, -834.217, -2041.81, 34.4604, 3.10815, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(3590, 2442, 0, 0, 0, 1, 1, 0, 0, -845.518, -2027.09, 34.3902, 3.84865, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(24022, 2442, 0, 0, 0, 1, 1, 1060, 0, -9967.3, 919.84, 42.5965, 3.20706, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(27409, 2442, 0, 0, 0, 1, 1, 1060, 0, -9208.31, 432.281, 89.8092, 1.68232, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29473, 2442, 0, 0, 0, 1, 1, 1060, 0, -9240.79, -2258.23, 64.0584, 0.476519, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29519, 2442, 0, 0, 0, 1, 1, 1060, 0, -9655.95, -2671.82, 60.912, 4.56313, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29534, 2442, 0, 0, 0, 1, 1, 1060, 0, -786.545, -666.924, 11.9719, 1.20428, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29589, 2442, 0, 0, 0, 1, 1, 1060, 0, -787.469, -650.877, 11.9257, 0.244346, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29647, 2442, 0, 0, 0, 1, 1, 1060, 0, -814.439, -648.679, 11.9257, 5.06145, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29691, 2442, 0, 0, 0, 1, 1, 1060, 0, -9251.35, 251.545, 70.8232, 5.5068, 90, 0, 0, 0, 0, 0, 0, 0, 0),
(29700, 2442, 0, 0, 0, 1, 1, 1060, 0, -799.589, -670.24, 11.9102, 3.10669, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29717, 2442, 0, 0, 0, 1, 1, 1060, 0, -9592.38, -1475.29, 59.9866, 6.164, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29748, 2442, 0, 0, 0, 1, 1, 1060, 0, -9406.74, 224.977, 61.0787, 0.306348, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29796, 2442, 0, 0, 0, 1, 1, 1060, 0, -8874.91, -929.851, 75.8751, 1.95537, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29814, 2442, 0, 0, 0, 1, 1, 1060, 0, -9565.73, -1474.05, 61.4964, 0.123386, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29890, 2442, 0, 0, 0, 1, 1, 1060, 0, -9850.62, -119.75, 28.7881, 0.896055, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29977, 2442, 0, 0, 0, 1, 1, 1060, 0, -8959.28, -790.862, 69.8952, 1.90377, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(29997, 2442, 0, 0, 0, 1, 1, 1060, 0, -9652.56, 549.917, 42.9074, 1.39409, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(30089, 2442, 0, 0, 0, 1, 1, 1060, 0, -9734.3, -1221.53, 48.8803, 2.84407, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(30180, 2442, 0, 0, 0, 1, 1, 1060, 0, -9359.17, -1172.48, 64.9296, 2.35845, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(30232, 2442, 0, 0, 0, 1, 1, 1060, 0, -9399.04, -1283.17, 52.7353, 4.12006, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(30246, 2442, 0, 0, 0, 1, 1, 1060, 0, -9081.14, -22.8827, 89.9079, 5.14648, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(30307, 2442, 0, 0, 0, 1, 1, 1060, 0, -9355.41, -855.002, 64.3183, 1.39507, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(30323, 2442, 0, 0, 0, 1, 1, 1060, 0, -9880.57, -305.979, 35.6365, 2.08776, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(30551, 2442, 0, 0, 0, 1, 1, 1060, 0, -8849.95, -1150.17, 77.6471, 5.07441, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(30577, 2442, 0, 0, 0, 1, 1, 1060, 0, -8039.08, 806.351, 67.304, 4.18879, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(33307, 2442, 0, 0, 0, 1, 1, 1060, 0, -9545.55, -556.951, 60.9805, 0.528152, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(34200, 2442, 0, 0, 0, 1, 1, 1060, 0, -9484.78, -779.295, 60.7995, 4.31519, 90, 0, 0, 1, 0, 0, 0, 0, 0);


UPDATE `quest_template` SET `Flags`=128, `RequiredNpcOrGo1`=-205485, `RequiredNpcOrGoCount1`=1, `RequiredSourceItemId1`=0, `RequiredSourceItemCount1`=0 WHERE `Id`=27454 LIMIT 1;
UPDATE `gameobject_template` SET `type`=10 WHERE `entry`=205485 LIMIT 1;

UPDATE `creature_template` SET `npcflag`=1, `AIName`='SmartAI' WHERE `entry`=51681 LIMIT 1;

--- Condition
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 51681, 0, 0, 9, 0, 29032, 0, 0, 0, 0, 0, '', 'Get Them While They\'re Young Quest Condition');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 4, 51681, 0, 0, 9, 0, 29032, 0, 0, 1, 0, 0, '', 'Get Them While They\'re Young Quest Negative Condition');


-- Script ---
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub on Gossip hello - Gossip Close');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 68638, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub on Gossip hello - Add item');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub on Gossip hello - Despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51681, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Frostsaber Cub Gossip close without quest');

DELETE FROM `creature` WHERE `id`=41478;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20980, 41478, 0, 0, 0, 1, 1, 604, 0, -5407.06, -994.594, 390.817, 4.62974, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(20981, 41478, 0, 0, 0, 1, 1, 604, 0, -5859.25, -63.0547, 361.03, 5.66702, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20982, 41478, 0, 0, 0, 1, 1, 604, 0, -5797.72, -549.214, 401.79, 1.32629, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20983, 41478, 0, 0, 0, 1, 1, 604, 0, -5734.67, -219.569, 351.679, 0.758267, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20984, 41478, 0, 0, 0, 1, 1, 604, 0, -5445.29, -435.267, 397.628, 2.08482, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20985, 41478, 0, 0, 0, 1, 1, 604, 0, -5360.2, -926.6, 389.582, 2.77298, 90, 16, 0, 120, 0, 1, 0, 0, 2048),
(20986, 41478, 0, 0, 0, 1, 1, 604, 0, -6051.83, -405.635, 421.481, 5.23315, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20987, 41478, 0, 0, 0, 1, 1, 604, 0, -5384.51, -714.627, 397.419, 0.957246, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20988, 41478, 0, 0, 0, 1, 1, 604, 0, -5743.58, -598.208, 402.125, 4.85052, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20989, 41478, 0, 0, 0, 1, 1, 604, 0, -5289.2, -602.397, 387.816, 0.891946, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(20990, 41478, 0, 0, 0, 1, 1, 604, 0, -5356.39, -782.197, 398.137, 2.64474, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20991, 41478, 0, 0, 0, 1, 1, 604, 0, -5679.81, -595.828, 402.064, 5.93891, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20992, 41478, 0, 0, 0, 1, 1, 604, 0, -5325.21, -693.973, 394.055, 4.04594, 90, 12, 0, 120, 0, 1, 0, 0, 2048),
(20993, 41478, 0, 0, 0, 1, 1, 604, 0, -5824, -303.299, 360.545, 1.11634, 90, 18, 0, 102, 0, 1, 0, 0, 2048),
(20994, 41478, 0, 0, 0, 1, 1, 604, 0, -5513.14, -564.243, 402.383, 0.551104, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(20995, 41478, 0, 0, 0, 1, 1, 604, 0, -5471.96, -965.274, 396.689, 4.35268, 90, 12, 0, 120, 0, 1, 0, 0, 2048),
(20996, 41478, 0, 0, 0, 1, 1, 604, 0, -5408.25, -723.57, 396.478, 3.96565, 90, 9, 0, 120, 0, 1, 0, 0, 2048),
(20997, 41478, 0, 0, 0, 1, 1, 604, 0, -5291.67, -808.334, 397.591, 1.74214, 90, 10, 0, 120, 0, 1, 0, 0, 2048),
(20998, 41478, 0, 0, 0, 1, 1, 604, 0, -5286.5, -628.504, 388.066, 1.23855, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(20999, 41478, 0, 0, 0, 1, 1, 604, 0, -5580.84, -686.03, 407.644, 5.41881, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(21000, 41478, 0, 0, 0, 1, 1, 604, 0, -5296.4, -960.081, 389.384, 2.88773, 90, 14, 0, 120, 0, 1, 0, 0, 2048),
(21001, 41478, 0, 0, 0, 1, 1, 604, 0, -5859.48, 7.28219, 355.609, 0.051809, 90, 16, 0, 102, 0, 1, 0, 0, 2048),
(21002, 41478, 0, 0, 0, 1, 1, 604, 0, -5313.27, -662.723, 388.457, 0.1486, 90, 18, 0, 102, 0, 1, 0, 0, 2048),
(21003, 41478, 0, 0, 0, 1, 1, 604, 0, -5554.94, -607.125, 411.755, 1.51168, 90, 9, 0, 102, 0, 1, 0, 0, 2048),
(21004, 41478, 0, 0, 0, 1, 1, 604, 0, -5595.51, -719.471, 417.955, 6.24609, 90, 8, 0, 102, 0, 1, 0, 0, 2048),
(21005, 41478, 0, 0, 0, 1, 1, 604, 0, -5540.36, -400.798, 408.332, 4.44897, 90, 13, 0, 120, 0, 1, 0, 0, 2048),
(21006, 41478, 0, 0, 0, 1, 1, 604, 0, -5331.58, -910.973, 393.732, 2.33443, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(21007, 41478, 0, 0, 0, 1, 1, 604, 0, -5366.12, -631.108, 394.706, 5.70384, 90, 10, 0, 102, 0, 1, 0, 0, 2048),
(41732, 41478, 0, 0, 0, 1, 1, 604, 0, -5906.3, -189.977, 364.763, 3.96013, 90, 16, 0, 120, 0, 1, 0, 0, 2048),
(41776, 41478, 0, 0, 0, 1, 1, 604, 0, -5888.5, -522.076, 398.699, 4.85862, 90, 17, 0, 102, 0, 1, 0, 0, 2048),
(41820, 41478, 0, 0, 0, 1, 1, 604, 0, -5787.77, -145.734, 353.367, 0.558073, 90, 18, 0, 120, 0, 1, 0, 0, 2048),
(41922, 41478, 0, 0, 0, 1, 1, 604, 0, -5545.16, -717.137, 408.933, 0.054317, 90, 13, 0, 120, 0, 1, 0, 0, 2048),
(41982, 41478, 0, 0, 0, 1, 1, 604, 0, -5690.09, -407.63, 365.518, 1.29669, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(42037, 41478, 0, 0, 0, 1, 1, 604, 0, -5780.77, -422.523, 366.268, 2.96972, 90, 10, 0, 120, 0, 1, 0, 0, 2048),
(42093, 41478, 0, 0, 0, 1, 1, 604, 0, -5319.14, -747.362, 390.457, 4.81614, 90, 13, 0, 102, 0, 1, 0, 0, 2048),
(42145, 41478, 0, 0, 0, 1, 1, 604, 0, -5492.81, -965.598, 399.564, 1.59485, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(42210, 41478, 0, 0, 0, 1, 1, 604, 0, -5823.19, -243.682, 352.905, 2.17345, 90, 18, 0, 120, 0, 1, 0, 0, 2048),
(42328, 41478, 0, 0, 0, 1, 1, 604, 0, -5828.22, -120.5, 354.766, 1.76359, 90, 12, 0, 120, 0, 1, 0, 0, 2048),
(42353, 41478, 0, 0, 0, 1, 1, 604, 0, -5547.03, -551.164, 406.589, 2.67095, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(42394, 41478, 0, 0, 0, 1, 1, 604, 0, -5292.79, -731.211, 388.457, 1.4434, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(42442, 41478, 0, 0, 0, 1, 1, 604, 0, -6054.73, -336.165, 427.199, 5.07217, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(42491, 41478, 0, 0, 0, 1, 1, 604, 0, -5807.96, -176.908, 351.596, 3.04694, 90, 14, 0, 102, 0, 1, 0, 0, 2048),
(42627, 41478, 0, 0, 0, 1, 1, 604, 0, -5346.03, -691.482, 394.179, 3.17088, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(42674, 41478, 0, 0, 0, 1, 1, 604, 0, -5514.03, -980.35, 396.863, 0.620454, 90, 19, 0, 120, 0, 1, 0, 0, 2048),
(42697, 41478, 0, 0, 0, 1, 1, 604, 0, -5609.95, -668.848, 405.238, 5.12306, 90, 18, 0, 102, 0, 1, 0, 0, 2048),
(42745, 41478, 0, 0, 0, 1, 1, 604, 0, -5987.25, -551.169, 406.217, 4.82391, 90, 17, 0, 120, 0, 1, 0, 0, 2048),
(42757, 41478, 0, 0, 0, 1, 1, 604, 0, -5942.19, -483.854, 412.024, 5.76762, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(42838, 41478, 0, 0, 0, 1, 1, 604, 0, -5978.25, -430.345, 407.228, 0.792317, 90, 15, 0, 102, 0, 1, 0, 0, 2048),
(42894, 41478, 0, 0, 0, 1, 1, 604, 0, -5503.87, -718.134, 408.662, 5.10087, 90, 18, 0, 102, 0, 1, 0, 0, 2048),
(42903, 41478, 0, 0, 0, 1, 1, 604, 0, -5905.27, -109.054, 371.184, 4.51339, 90, 16, 0, 102, 0, 1, 0, 0, 2048),
(42927, 41478, 0, 0, 0, 1, 1, 604, 0, -5810.02, 37.9119, 360.378, 3.73462, 90, 8, 0, 102, 0, 1, 0, 0, 2048),
(42983, 41478, 0, 0, 0, 1, 1, 604, 0, -5523.02, -756.117, 404.961, 1.78968, 90, 13, 0, 120, 0, 1, 0, 0, 2048),
(43038, 41478, 0, 0, 0, 1, 1, 604, 0, -5831.37, -176.48, 354.775, 4.34016, 90, 15, 0, 120, 0, 1, 0, 0, 2048),
(43075, 41478, 0, 0, 0, 1, 1, 604, 0, -5398.9, -422.128, 399.613, 5.63936, 90, 10, 0, 120, 0, 1, 0, 0, 2048),
(43151, 41478, 0, 0, 0, 1, 1, 604, 0, -5853.75, 55.4166, 359.387, 0.970321, 90, 19, 0, 120, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=40940;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20806, 40940, 0, 0, 0, 1, 1, 929, 0, -5747.73, -309.434, 360.302, 0.097838, 90, 10, 0, 102, 0, 1, 0, 0, 2048),
(20807, 40940, 0, 0, 0, 1, 1, 32192, 0, -5699.42, -226.691, 361.143, 4.25733, 90, 9, 0, 102, 0, 1, 0, 0, 2048),
(20808, 40940, 0, 0, 0, 1, 1, 929, 0, -5763.18, -312.859, 360.888, 2.35626, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(20809, 40940, 0, 0, 0, 1, 1, 929, 0, -5674.86, -278.057, 368.886, 6.25, 90, 6, 0, 102, 0, 1, 0, 0, 2048),
(20810, 40940, 0, 0, 0, 1, 1, 929, 0, -5680.07, -308.637, 367.43, 6.03431, 90, 8, 0, 102, 0, 1, 0, 0, 2048),
(20811, 40940, 0, 0, 0, 1, 1, 929, 0, -5718.8, -321.755, 364.322, 4.54164, 90, 13, 0, 102, 0, 1, 0, 0, 2048),
(20812, 40940, 0, 0, 0, 1, 1, 32192, 0, -5681.72, -323.594, 367.805, 0.69788, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(41823, 40940, 0, 0, 0, 1, 1, 929, 0, -5684.68, -355.804, 368.807, 5.16967, 90, 10, 0, 102, 0, 1, 0, 0, 2048),
(42280, 40940, 0, 0, 0, 1, 1, 929, 0, -5716.4, -368.215, 365.268, 4.13626, 90, 12, 0, 102, 0, 1, 0, 0, 2048),
(42365, 40940, 0, 0, 0, 1, 1, 32192, 0, -5707.01, -341.806, 365.653, 3.67446, 90, 11, 0, 102, 0, 1, 0, 0, 2048),
(42473, 40940, 0, 0, 0, 1, 1, 32192, 0, -5741.42, -245.537, 353.345, 0.096884, 90, 9, 0, 102, 0, 1, 0, 0, 2048),
(42531, 40940, 0, 0, 0, 1, 1, 929, 0, -5727.24, -271.741, 357.089, 5.1459, 90, 10, 0, 102, 0, 1, 0, 0, 2048),
(42708, 40940, 0, 0, 0, 1, 1, 929, 1, -5672.87, -280.094, 369.761, 1.44421, 90, 13, 0, 102, 0, 1, 0, 0, 2048),
(42933, 40940, 0, 0, 0, 1, 1, 32192, 0, -5756.51, -277.413, 356.864, 1.32971, 90, 12, 0, 102, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=1125;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20448, 1125, 0, 0, 0, 1, 1, 607, 0, -5918.85, -486.459, 412.638, 3.14159, 90, 17, 0, 102, 0, 1, 0, 0, 0),
(20449, 1125, 0, 0, 0, 1, 1, 607, 0, -6085.16, -429.951, 430.33, 3.9619, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(20450, 1125, 0, 0, 0, 1, 1, 607, 0, -6042.85, -447.638, 451.031, 0.453786, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(20451, 1125, 0, 0, 0, 1, 1, 607, 0, -5323.77, -609.701, 388.901, 5.43656, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(20452, 1125, 0, 0, 0, 1, 1, 607, 0, -5886.08, -554.496, 397.17, 3.04672, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(20453, 1125, 0, 0, 0, 1, 1, 607, 0, -5912.67, 16.123, 367.29, 2.05455, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20454, 1125, 0, 0, 0, 1, 1, 607, 0, -5880.1, -37.217, 366.324, 4.456, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(20455, 1125, 0, 0, 0, 1, 1, 607, 0, -5226.8, -464.978, 386.456, 1.6138, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(20456, 1125, 0, 0, 0, 1, 1, 607, 0, -5983.79, -138.051, 401.146, 0.099863, 90, 22, 0, 120, 0, 1, 0, 0, 0),
(20457, 1125, 0, 0, 0, 1, 1, 607, 0, -5745.96, -464.12, 395.393, 1.51734, 90, 20, 0, 102, 0, 1, 0, 0, 0),
(20458, 1125, 0, 0, 0, 1, 1, 607, 0, -5466.7, -952.658, 395.689, 1.27503, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(20459, 1125, 0, 0, 0, 1, 1, 607, 0, -5374.9, -408.47, 398.363, 4.58535, 90, 19, 0, 102, 0, 1, 0, 0, 0),
(20460, 1125, 0, 0, 0, 1, 1, 607, 0, -5722.86, -574.808, 399.788, 0.519631, 90, 21, 0, 120, 0, 1, 0, 0, 0),
(20461, 1125, 0, 0, 0, 1, 1, 607, 0, -5803.28, -213.427, 353.868, 5.06752, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20462, 1125, 0, 0, 0, 1, 1, 607, 0, -5980.66, -406.507, 413.103, 4.10326, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(20463, 1125, 0, 0, 0, 1, 1, 607, 0, -5922.55, -593.899, 402.642, 1.07871, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(20464, 1125, 0, 0, 0, 1, 1, 607, 0, -5376.75, -674.494, 395.259, 5.8703, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20465, 1125, 0, 0, 0, 1, 1, 607, 0, -6081.62, -382.515, 435.241, 0.034907, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(20466, 1125, 0, 0, 0, 1, 1, 607, 0, -5369.93, -810.462, 398.221, 3.12402, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(20467, 1125, 0, 0, 0, 1, 1, 607, 0, -5842.21, -141.31, 356.509, 4.20624, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(20468, 1125, 0, 0, 0, 1, 1, 607, 0, -6083.14, -279.869, 436.359, 6.07375, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(20469, 1125, 0, 0, 0, 1, 1, 607, 0, -6056.5, -280.898, 422.899, 3.64983, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(20470, 1125, 0, 0, 0, 1, 1, 607, 0, -5958.23, -582.253, 402.424, 3.07812, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(20471, 1125, 0, 0, 0, 1, 1, 607, 0, -5833.29, 89.7917, 370.893, 4.51768, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20472, 1125, 0, 0, 0, 1, 1, 607, 0, -6025.23, -316.613, 424.316, 3.60524, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(20473, 1125, 0, 0, 0, 1, 1, 607, 0, -5537.7, -596.605, 408.108, 4.69493, 90, 21, 0, 102, 0, 1, 0, 0, 0),
(20474, 1125, 0, 0, 0, 1, 1, 607, 0, -5944.79, -505.993, 410.308, 1.5708, 90, 24, 0, 120, 0, 1, 0, 0, 0),
(20475, 1125, 0, 0, 0, 1, 1, 607, 0, -5191.69, -432.914, 390.843, 2.75927, 90, 23, 0, 102, 0, 1, 0, 0, 0),
(20476, 1125, 0, 0, 0, 1, 1, 607, 0, -5309.17, -528.562, 388.457, 4.6279, 90, 22, 0, 102, 0, 1, 0, 0, 0),
(20477, 1125, 0, 0, 0, 1, 1, 607, 0, -5828.55, -729.524, 396.907, 2.65579, 90, 21, 0, 102, 0, 1, 0, 0, 0),
(20478, 1125, 0, 0, 0, 1, 1, 607, 0, -5616.01, -734.959, 431.357, 5.95222, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20479, 1125, 0, 0, 0, 1, 1, 607, 0, -5909.76, -143.943, 366.417, 0.154876, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(20480, 1125, 0, 0, 0, 1, 1, 607, 0, -5379.31, -929.498, 393.747, 2.79265, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(20481, 1125, 0, 0, 0, 1, 1, 607, 0, -5370.48, -745.086, 395.914, 3.472, 90, 12, 0, 120, 0, 1, 0, 0, 0),
(20482, 1125, 0, 0, 0, 1, 1, 607, 0, -5275.46, -692.346, 389.846, 5.44375, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(20483, 1125, 0, 0, 0, 1, 1, 607, 0, -5740.91, -263.908, 356.746, 4.36529, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(20484, 1125, 0, 0, 0, 1, 1, 607, 0, -5857.25, -182.449, 357.852, 1.22413, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(20485, 1125, 0, 0, 0, 1, 1, 607, 0, -5817.84, -615.962, 399.17, 4.21554, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20486, 1125, 0, 0, 0, 1, 1, 607, 0, -5850.79, -250.276, 361.284, 0.541314, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(20487, 1125, 0, 0, 0, 1, 1, 607, 0, -5691.61, -352.081, 366.807, 1.59228, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(20488, 1125, 0, 0, 0, 1, 1, 607, 0, -5764.61, -218.558, 351.554, 1.76957, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(20489, 1125, 0, 0, 0, 1, 1, 607, 0, -5951.97, -378.858, 421.829, 0.506145, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(20490, 1125, 0, 0, 0, 1, 1, 607, 0, -5572.12, -727.813, 411.455, 2.42932, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(20491, 1125, 0, 0, 0, 1, 1, 607, 0, -5294.46, -433.102, 394.189, 1.47501, 90, 21, 0, 120, 0, 1, 0, 0, 0),
(20492, 1125, 0, 0, 0, 1, 1, 607, 0, -6024, -475.223, 428.257, 4.41568, 90, 20, 0, 102, 0, 1, 0, 0, 0),
(20493, 1125, 0, 0, 0, 1, 1, 607, 0, -5983.75, -469.537, 405.874, 3.88558, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(20494, 1125, 0, 0, 0, 1, 1, 607, 0, -5851.57, 31.2187, 355.27, 0.779873, 90, 17, 0, 102, 0, 1, 0, 0, 0),
(41716, 1125, 0, 0, 0, 1, 1, 607, 0, -6134.04, -239.509, 481.432, 5.44543, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(41740, 1125, 0, 0, 0, 1, 1, 607, 0, -6012.59, -279.303, 417.95, 0.411739, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(41768, 1125, 0, 0, 0, 1, 1, 607, 0, -5605, -718.231, 423.517, 5.387, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(41772, 1125, 0, 0, 0, 1, 1, 607, 0, -5842.01, -54.0903, 363.238, 6.13825, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(41809, 1125, 0, 0, 0, 1, 1, 607, 0, -5655.42, -648.538, 403.115, 2.2794, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(41844, 1125, 0, 0, 0, 1, 1, 607, 0, -5715.96, -307.665, 361.513, 4.64595, 90, 19, 0, 102, 0, 1, 0, 0, 0),
(41863, 1125, 0, 0, 0, 1, 1, 607, 0, -5541.46, -658.668, 412.111, 4.70653, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(41872, 1125, 0, 0, 0, 1, 1, 607, 0, -5488.25, -566.629, 400.102, 1.97222, 90, 15, 0, 102, 0, 1, 0, 0, 0),
(41898, 1125, 0, 0, 0, 1, 1, 607, 0, -5352.57, -933.884, 388.623, 4.74103, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(41932, 1125, 0, 0, 0, 1, 1, 607, 0, -5991.67, -443.586, 407.419, 2.41835, 90, 19, 0, 102, 0, 1, 0, 0, 0),
(41972, 1125, 0, 0, 0, 1, 1, 607, 0, -5995.15, -535.297, 409.411, 1.78735, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(42002, 1125, 0, 0, 0, 1, 1, 607, 0, -6021.95, -415.719, 413.482, 4.85954, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(42012, 1125, 0, 0, 0, 1, 1, 607, 0, -5708.47, -370.127, 365.518, 1.62749, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(42070, 1125, 0, 0, 0, 1, 1, 607, 0, -5568.39, -672.266, 410.144, 2.41008, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(42151, 1125, 0, 0, 0, 1, 1, 607, 0, -5475.15, -705.2, 403.248, 6.15651, 90, 16, 0, 120, 0, 1, 0, 0, 0),
(42190, 1125, 0, 0, 0, 1, 1, 607, 0, -5940.9, 8.84777, 367.228, 2.88094, 90, 14, 0, 102, 0, 1, 0, 0, 0),
(42231, 1125, 0, 0, 0, 1, 1, 607, 0, -5848.68, -214.548, 356.802, 1.85292, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(42245, 1125, 0, 0, 0, 1, 1, 607, 0, -5276.58, -726.688, 389.636, 5.27492, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(42256, 1125, 0, 0, 0, 1, 1, 607, 0, -5833.74, -285.333, 358.338, 5.6246, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(42272, 1125, 0, 0, 0, 1, 1, 607, 0, -5848.72, -151.07, 359.326, 5.90459, 90, 15, 0, 120, 0, 1, 0, 0, 0),
(42297, 1125, 0, 0, 0, 1, 1, 607, 0, -5551.68, -736.939, 408.949, 3.10136, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(42308, 1125, 0, 0, 0, 1, 1, 607, 0, -5829.95, -341.262, 367.306, 4.55063, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(42340, 1125, 0, 0, 0, 1, 1, 607, 0, -5387.27, -445.84, 397.097, 1.37045, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(42419, 1125, 0, 0, 0, 1, 1, 607, 0, -5316.12, -806.616, 388.552, 0.433087, 90, 21, 0, 102, 0, 1, 0, 0, 0),
(42458, 1125, 0, 0, 0, 1, 1, 607, 0, -5788.48, -157.159, 351.242, 1.28887, 90, 20, 0, 102, 0, 1, 0, 0, 0),
(42478, 1125, 0, 0, 0, 1, 1, 607, 0, -5883.79, -534.806, 398.545, 2.49826, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(42488, 1125, 0, 0, 0, 1, 1, 607, 0, -5125.1, -373.899, 396.332, 4.36274, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(42516, 1125, 0, 0, 0, 1, 1, 607, 0, -5767.57, -402.11, 365.758, 1.67552, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(42563, 1125, 0, 0, 0, 1, 1, 607, 0, -5848.19, 6.48418, 357.484, 5.50576, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(42592, 1125, 0, 0, 0, 1, 1, 607, 0, -5914.71, -409.512, 426.089, 4.66003, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(42598, 1125, 0, 0, 0, 1, 1, 607, 0, -5345.35, -872.482, 388.457, 4.99172, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(42632, 1125, 0, 0, 0, 1, 1, 607, 0, -5769.95, -391.235, 366.893, 2.65784, 90, 16, 0, 102, 0, 1, 0, 0, 0),
(42659, 1125, 0, 0, 0, 1, 1, 607, 0, -5334.95, -445.919, 388.733, 0.240291, 90, 19, 0, 120, 0, 1, 0, 0, 0),
(42701, 1125, 0, 0, 0, 1, 1, 607, 0, -5875.29, -88.8958, 366.717, 1.22803, 90, 14, 0, 120, 0, 1, 0, 0, 0),
(42720, 1125, 0, 0, 0, 1, 1, 607, 0, -5772.78, -572.992, 398.365, 3.04775, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(42773, 1125, 0, 0, 0, 1, 1, 607, 0, -5687.57, -605.507, 402.279, 4.0914, 90, 18, 0, 102, 0, 1, 0, 0, 0),
(42806, 1125, 0, 0, 0, 1, 1, 607, 0, -5748.9, -474.784, 395.67, 2.78777, 90, 20, 0, 120, 0, 1, 0, 0, 0),
(42814, 1125, 0, 0, 0, 1, 1, 607, 0, -6001.38, -394.627, 411.649, 2.34291, 90, 21, 0, 102, 0, 1, 0, 0, 0),
(42825, 1125, 0, 0, 0, 1, 1, 607, 0, -6042.47, -347.024, 422.997, 4.84352, 90, 21, 0, 120, 0, 1, 0, 0, 0),
(42865, 1125, 0, 0, 0, 1, 1, 607, 0, -6123.02, -201.837, 436.265, 3.92147, 90, 20, 0, 102, 0, 1, 0, 0, 0),
(42931, 1125, 0, 0, 0, 1, 1, 607, 0, -5996.65, -103.901, 405.594, 0.348938, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(43031, 1125, 0, 0, 0, 1, 1, 607, 0, -5910.3, -409.123, 427.958, 0.1372, 90, 18, 0, 120, 0, 1, 0, 0, 0),
(43070, 1125, 0, 0, 0, 1, 1, 607, 0, -5884.74, -192.868, 362.124, 2.89709, 90, 17, 0, 102, 0, 1, 0, 0, 0),
(43098, 1125, 0, 0, 0, 1, 1, 607, 0, -5565.36, -382.086, 409.509, 3.93113, 90, 13, 0, 102, 0, 1, 0, 0, 0),
(43117, 1125, 0, 0, 0, 1, 1, 607, 0, -5714.11, -426.444, 365.518, 3.38679, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(43125, 1125, 0, 0, 0, 1, 1, 607, 0, -5626.01, -728.315, 428.037, 0.535391, 90, 17, 0, 120, 0, 1, 0, 0, 0),
(43184, 1125, 0, 0, 0, 1, 1, 607, 0, -5817.45, -467.53, 403.193, 3.94633, 90, 16, 0, 120, 0, 1, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40941;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20813, 40941, 0, 0, 0, 1, 1, 32193, 0, -5384.19, -205.608, 357.338, 5.58672, 90, 10, 0, 120, 0, 1, 0, 0, 2048),
(20814, 40941, 0, 0, 0, 1, 1, 950, 0, -5351.88, -247.627, 361.527, 4.97419, 90, 5, 0, 120, 0, 1, 0, 0, 2048),
(20816, 40941, 0, 0, 0, 1, 1, 950, 0, -5595.92, -275.575, 371.18, 2.07694, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(20817, 40941, 0, 0, 0, 1, 1, 950, 0, -5365.79, -209.814, 363.336, 1.70221, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(41923, 40941, 0, 0, 0, 1, 1, 32193, 0, -5391.91, -168.781, 369.277, 4.6871, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(42083, 40941, 0, 0, 0, 1, 1, 32193, 0, -5606.34, -271.438, 369.103, 1.41287, 90, 9, 0, 120, 0, 1, 0, 0, 2048),
(42241, 40941, 0, 0, 0, 1, 1, 32193, 0, -5631.9, -274.085, 368.6, 1.58825, 90, 11, 0, 120, 0, 1, 0, 0, 2048),
(42469, 40941, 0, 0, 0, 1, 1, 32193, 0, -5367.29, -257.66, 361.202, 3.94188, 90, 5, 0, 120, 0, 1, 0, 0, 2048),
(43122, 40941, 0, 0, 0, 1, 1, 32193, 0, -5375.37, -221.868, 361.635, 5.16617, 90, 7, 0, 120, 0, 1, 0, 0, 2048);

DELETE FROM `creature_loot_template` WHERE (`entry`=1125) AND (`item`=769);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (1125, 769, 50, 1, 0, 1, 1);


-- http://ru.wowhead.com/quest=25841
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0, `RequiredSourceItemId2` = 0, `RequiredSourceItemCount2` = 0 WHERE `Id` = 25841;

DELETE FROM `creature` WHERE `id`=48935;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(8754, 48935, 0, 0, 0, 1, 1, 36342, 0, -4886.89, -1365.11, 731.132, 5.59061, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8755, 48935, 0, 0, 0, 1, 1, 23926, 0, -4770.74, -1210.12, 733.458, 6.24414, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8756, 48935, 0, 0, 0, 1, 1, 23926, 0, -4837.28, -1282.71, 725.061, 2.44179, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8757, 48935, 0, 0, 0, 1, 1, 36342, 0, -4941.4, -1345.08, 718.682, 0.929641, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8758, 48935, 0, 0, 0, 1, 1, 23926, 0, -4852.79, -1144.37, 766.907, 6.23108, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(8759, 48935, 0, 0, 0, 1, 1, 23926, 0, -4824.36, -1232.34, 732.786, 5.59471, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27953, 48935, 0, 0, 0, 1, 1, 23926, 0, -5134.23, -1311.03, 532.235, 0.879074, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27954, 48935, 0, 0, 0, 1, 1, 36342, 0, -5065.13, -262.371, 444.593, 2.02134, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27955, 48935, 0, 0, 0, 1, 1, 23926, 0, -5666.77, 258.485, 384.486, 3.0888, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27956, 48935, 0, 0, 0, 1, 1, 36342, 0, -5824.64, -1418.63, 407.081, 5.80818, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27957, 48935, 0, 0, 0, 1, 1, 23926, 0, -5109.3, -351.403, 404.712, 3.50105, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27958, 48935, 0, 0, 0, 1, 1, 36342, 0, -6424.44, 634.415, 387.861, 5.05393, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27959, 48935, 0, 0, 0, 1, 1, 23926, 0, -5861.7, -678.979, 399.254, 0.763302, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27960, 48935, 0, 0, 0, 1, 1, 36342, 0, -4661.61, -1678.26, 504.824, 5.83657, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27961, 48935, 0, 0, 0, 1, 1, 23926, 0, -5714.25, -216.413, 356.285, 3.73664, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27962, 48935, 0, 0, 0, 1, 1, 23926, 0, -5881.11, -541.828, 399.42, 2.86543, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27963, 48935, 0, 0, 0, 1, 1, 36342, 0, -6277.42, 410.345, 383.516, 2.33017, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27964, 48935, 0, 0, 0, 1, 1, 36342, 0, -5091.9, -1621.31, 507.139, 0.540777, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27965, 48935, 0, 0, 0, 1, 1, 23926, 0, -5903.05, -102.274, 373.115, 3.84194, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27966, 48935, 0, 0, 0, 1, 1, 23926, 0, -5513.11, -1656.8, 396.394, 5.35776, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27967, 48935, 0, 0, 0, 1, 1, 23926, 0, -5334.37, -2197.77, 424.604, 0.313493, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27968, 48935, 0, 0, 0, 1, 1, 23926, 0, -6053.11, -182.496, 430.166, 0.441817, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27969, 48935, 0, 0, 0, 1, 1, 36342, 0, -5571.92, -1442.18, 401.202, 4.12299, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27970, 48935, 0, 0, 0, 1, 1, 36342, 0, -6449.7, 541.959, 386.735, 0.327731, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27971, 48935, 0, 0, 0, 1, 1, 36342, 0, -6316.79, 762.457, 388.564, 5.77675, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27972, 48935, 0, 0, 0, 1, 1, 36342, 0, -4822.97, -1658.97, 504.48, 0.87427, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27973, 48935, 0, 0, 0, 1, 1, 36342, 0, -4708.74, -1674.61, 504.574, 2.06271, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27974, 48935, 0, 0, 0, 1, 1, 23926, 0, -4931.39, -1734.99, 503.339, 0.029771, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27975, 48935, 0, 0, 0, 1, 1, 23926, 0, -5272.09, -676.485, 388.471, 5.15884, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27976, 48935, 0, 0, 0, 1, 1, 23926, 0, -5074.5, 11.3677, 400.191, 3.72966, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27977, 48935, 0, 0, 0, 1, 1, 36342, 0, -5499.02, 323.776, 397.188, 4.88718, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27978, 48935, 0, 0, 0, 1, 1, 36342, 0, -6329.31, 626.289, 386.581, 2.43061, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27979, 48935, 0, 0, 0, 1, 1, 23926, 0, -4958, -1625.1, 507.447, 3.55116, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27980, 48935, 0, 0, 0, 1, 1, 23926, 0, -5254.95, -1469.94, 502.836, 2.76558, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27981, 48935, 0, 0, 0, 1, 1, 36342, 0, -5294.68, 603.715, 389.438, 1.81533, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27982, 48935, 0, 0, 0, 1, 1, 23926, 0, -5589.7, 485.278, 385.098, 1.54213, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27983, 48935, 0, 0, 0, 1, 1, 23926, 0, -6359.7, 441.304, 376.074, 0.504035, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27984, 48935, 0, 0, 0, 1, 1, 36342, 0, -5190.07, 412.375, 392.987, 1.64308, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27985, 48935, 0, 0, 0, 1, 1, 36342, 0, -6180.47, 750.797, 387.736, 2.85874, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27986, 48935, 0, 0, 0, 1, 1, 36342, 0, -6437.32, 647.011, 387.486, 2.89968, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27987, 48935, 0, 0, 0, 1, 1, 23926, 0, -5115.02, -2056.24, 426.588, 1.30801, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27988, 48935, 0, 0, 0, 1, 1, 36342, 0, -5838.48, -358.887, 374.424, 3.43305, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27989, 48935, 0, 0, 0, 1, 1, 36342, 0, -5490.02, -1331.24, 401.453, 0.240713, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27990, 48935, 0, 0, 0, 1, 1, 36342, 0, -5692.46, -407.054, 365.701, 1.66658, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27991, 48935, 0, 0, 0, 1, 1, 23926, 0, -4873.3, -1726.45, 504.324, 0.350621, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27992, 48935, 0, 0, 0, 1, 1, 23926, 0, -5450.38, -940.452, 394.337, 4.91771, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27993, 48935, 0, 0, 0, 1, 1, 23926, 0, -6047.67, -290.409, 422.466, 5.41063, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27994, 48935, 0, 0, 0, 1, 1, 23926, 0, -5213.68, -288.824, 436.438, 3.36429, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27995, 48935, 0, 0, 0, 1, 1, 36342, 0, -5845.21, -2061.95, 401.047, 5.35728, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27997, 48935, 0, 0, 0, 1, 1, 36342, 0, -5969.9, -107.527, 397.553, 1.63529, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27998, 48935, 0, 0, 0, 1, 1, 36342, 0, -5708, -1491.55, 399.87, 1.51021, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(27999, 48935, 0, 0, 0, 1, 1, 23926, 0, -4836.52, -1651.31, 504.85, 0.212732, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28000, 48935, 0, 0, 0, 1, 1, 36342, 0, -6197.03, 208.496, 399.426, 4.26797, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28001, 48935, 0, 0, 0, 1, 1, 23926, 0, -5446.47, -565.182, 397.753, 3.19048, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28002, 48935, 0, 0, 0, 1, 1, 23926, 0, -5621.79, 440.486, 382.814, 2.59045, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28003, 48935, 0, 0, 0, 1, 1, 36342, 0, -6303.51, 319.105, 377.82, 5.44114, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28004, 48935, 0, 0, 0, 1, 1, 36342, 0, -5026.13, -2192.32, 409.618, 2.94496, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28005, 48935, 0, 0, 0, 1, 1, 36342, 0, -5748.44, -1089.3, 384.191, 4.79845, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28006, 48935, 0, 0, 0, 1, 1, 23926, 0, -5428.11, -2156.47, 401.491, 0.657959, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28007, 48935, 0, 0, 0, 1, 1, 23926, 0, -5630.67, -978.108, 396.557, 3.07126, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28008, 48935, 0, 0, 0, 1, 1, 36342, 0, -6160.61, 576.014, 385.896, 1.94443, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28009, 48935, 0, 0, 0, 1, 1, 23926, 0, -5695.05, -2149.83, 412.492, 3.6542, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28010, 48935, 0, 0, 0, 1, 1, 36342, 0, -5866.29, -90.9175, 362.829, 6.08081, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28011, 48935, 0, 0, 0, 1, 1, 36342, 0, -5773.96, -428.589, 366.018, 2.64646, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28012, 48935, 0, 0, 0, 1, 1, 36342, 0, -6177.26, 273.585, 388.038, 1.6417, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28013, 48935, 0, 0, 0, 1, 1, 36342, 0, -5228.99, -1379.28, 504.722, 5.94292, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28014, 48935, 0, 0, 0, 1, 1, 23926, 0, -4941.82, -222.569, 456.9, 5.40513, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28015, 48935, 0, 0, 0, 1, 1, 36342, 0, -6320.8, 403.857, 380.51, 3.06931, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28016, 48935, 0, 0, 0, 1, 1, 23926, 0, -5035.93, 455.942, 415.154, 5.64476, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28017, 48935, 0, 0, 0, 1, 1, 23926, 0, -5631.6, -418.606, 388.573, 4.53184, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28018, 48935, 0, 0, 0, 1, 1, 36342, 0, -5576.1, -1520.03, 399.623, 4.59519, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28019, 48935, 0, 0, 0, 1, 1, 23926, 0, -5710.89, -1317.71, 392.654, 2.81367, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28020, 48935, 0, 0, 0, 1, 1, 36342, 0, -5233.8, -803.701, 415.277, 2.35619, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28021, 48935, 0, 0, 0, 1, 1, 36342, 0, -5075.27, 299.444, 396.073, 4.26184, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28022, 48935, 0, 0, 0, 1, 1, 36342, 0, -5406.33, -1049.58, 392.982, 1.78353, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28023, 48935, 0, 0, 0, 1, 1, 23926, 0, -6506.45, 608.055, 394.882, 0.068055, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28024, 48935, 0, 0, 0, 1, 1, 23926, 0, -5277.09, -1750.68, 513.275, 2.45586, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28025, 48935, 0, 0, 0, 1, 1, 23926, 0, -5720.36, -908.725, 400.203, 6.17361, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28026, 48935, 0, 0, 0, 1, 1, 23926, 0, -6256.99, 623.509, 387.611, 0.736588, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28027, 48935, 0, 0, 0, 1, 1, 23926, 0, -5743.75, -955.494, 397.867, 4.71239, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28028, 48935, 0, 0, 0, 1, 1, 36342, 0, -5271.69, -202.88, 441.318, 1.11327, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28029, 48935, 0, 0, 0, 1, 1, 36342, 0, -5558.53, -402.538, 412.605, 3.5755, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28030, 48935, 0, 0, 0, 1, 1, 36342, 0, -5582.49, 335.674, 391.402, 3.88604, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28031, 48935, 0, 0, 0, 1, 1, 36342, 0, -5860.79, -1204.91, 387.072, 4.28366, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28032, 48935, 0, 0, 0, 1, 1, 36342, 0, -5863, -670.363, 398.302, 2.66747, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28033, 48935, 0, 0, 0, 1, 1, 36342, 0, -4947.58, -140.313, 423.148, 1.32629, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28034, 48935, 0, 0, 0, 1, 1, 36342, 0, -5997.83, 18.9667, 402.064, 6.23304, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28035, 48935, 0, 0, 0, 1, 1, 36342, 0, -6129.85, 440.773, 401.186, 1.44935, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28036, 48935, 0, 0, 0, 1, 1, 23926, 0, -6312.63, 477.315, 386.084, 3.03978, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28037, 48935, 0, 0, 0, 1, 1, 36342, 0, -5482.78, -706.885, 404.748, 2.68668, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28038, 48935, 0, 0, 0, 1, 1, 23926, 0, -6407.33, 743.867, 390.624, 6.07697, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28039, 48935, 0, 0, 0, 1, 1, 23926, 0, -5178.94, 342.589, 397.819, 4.19324, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28040, 48935, 0, 0, 0, 1, 1, 23926, 0, -5165.82, -401.298, 389.66, 6.16174, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28041, 48935, 0, 0, 0, 1, 1, 36342, 0, -4901.91, -1668.8, 506.167, 0.284163, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(28042, 48935, 0, 0, 0, 1, 1, 36342, 0, -5142.47, -2253.93, 401.025, 3.92605, 90, 7, 0, 8, 0, 1, 0, 0, 0),
(35190, 48935, 0, 0, 0, 1, 1, 23926, 0, -5818.01, -2082.31, 401.258, 5.50744, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(35240, 48935, 0, 0, 0, 1, 1, 36342, 0, -5032.81, 468.229, 411.71, 0.110935, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(35283, 48935, 0, 0, 0, 1, 1, 36342, 0, -5394.36, -611.951, 392.95, 1.809, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41693, 48935, 0, 0, 0, 1, 1, 23926, 0, -5355.21, -832.252, 400.957, 4.71825, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41704, 48935, 0, 0, 0, 1, 1, 23926, 0, -5825.12, -1098.17, 382.443, 1.52785, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41736, 48935, 0, 0, 0, 1, 1, 36342, 0, -6174.73, 691.885, 386.271, 0.75545, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41745, 48935, 0, 0, 0, 1, 1, 23926, 0, -5290.78, -2141.4, 424.434, 0.392838, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41758, 48935, 0, 0, 0, 1, 1, 36342, 0, -5175.65, -1889.16, 528.592, 3.14259, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41781, 48935, 0, 0, 0, 1, 1, 23926, 0, -5686.9, -552.672, 399.051, 0.815776, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41784, 48935, 0, 0, 0, 1, 1, 36342, 0, -6188.37, 286.498, 388.413, 0.928076, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41806, 48935, 0, 0, 0, 1, 1, 23926, 0, -4521.94, -1689.14, 506.679, 5.65726, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41824, 48935, 0, 0, 0, 1, 1, 23926, 0, -5472.85, 340.187, 398.355, 3.15943, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41862, 48935, 0, 0, 0, 1, 1, 36342, 0, -5209.77, -1375.81, 501.222, 3.02225, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41879, 48935, 0, 0, 0, 1, 1, 36342, 0, -5108.96, 209.955, 399.689, 5.6906, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41900, 48935, 0, 0, 0, 1, 1, 36342, 0, -6018.33, -389.989, 414.498, 4.12439, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41902, 48935, 0, 0, 0, 1, 1, 23926, 0, -4978.2, -8.1875, 386.95, 0, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41915, 48935, 0, 0, 0, 1, 1, 36342, 0, -4861.53, -1637.89, 503.475, 0.051241, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41919, 48935, 0, 0, 0, 1, 1, 36342, 0, -6240.68, 788.911, 389.938, 2.44066, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41946, 48935, 0, 0, 0, 1, 1, 36342, 0, -5262.42, -767.805, 395.35, 5.82356, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41976, 48935, 0, 0, 0, 1, 1, 36342, 0, -5871.15, -5.3937, 359.801, 3.28266, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41981, 48935, 0, 0, 0, 1, 1, 36342, 0, -5206.16, -1452.99, 504.599, 0.230309, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(41986, 48935, 0, 0, 0, 1, 1, 23926, 0, -5776.29, -841.266, 398.185, 5.76017, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42052, 48935, 0, 0, 0, 1, 1, 36342, 0, -5066.44, 398.737, 429.264, 0.254444, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42064, 48935, 0, 0, 0, 1, 1, 23926, 0, -5910.8, -540.416, 398.182, 1.71332, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42076, 48935, 0, 0, 0, 1, 1, 23926, 0, -5937.9, -474.315, 412.649, 2.07467, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42088, 48935, 0, 0, 0, 1, 1, 23926, 0, -5822.24, 86.8057, 367.178, 2.61591, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42107, 48935, 0, 0, 0, 1, 1, 23926, 0, -5219.02, -180.405, 440.331, 5.69085, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42111, 48935, 0, 0, 0, 1, 1, 23926, 0, -5879.31, -213.876, 361.903, 4.2199, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42137, 48935, 0, 0, 0, 1, 1, 36342, 0, -5825.31, -1310.33, 384.423, 3.91747, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42149, 48935, 0, 0, 0, 1, 1, 23926, 0, -6248.19, 627.064, 388.361, 3.91594, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42158, 48935, 0, 0, 0, 1, 1, 23926, 0, -5538.13, -1104.53, 393.233, 3.43492, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42180, 48935, 0, 0, 0, 1, 1, 23926, 0, -5791.52, -889.442, 397.089, 0.318379, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42182, 48935, 0, 0, 0, 1, 1, 23926, 0, -5141.97, -1911.73, 520.475, 6.27147, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42187, 48935, 0, 0, 0, 1, 1, 36342, 0, -5652.26, 331.323, 387.163, 5.24342, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42203, 48935, 0, 0, 0, 1, 1, 36342, 0, -5928.19, -547.07, 404.824, 1.04265, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42213, 48935, 0, 0, 0, 1, 1, 23926, 0, -5824.23, -327.284, 362.045, 1.71186, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42216, 48935, 0, 0, 0, 1, 1, 23926, 0, -5041.23, 425.603, 424.529, 5.49779, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42228, 48935, 0, 0, 0, 1, 1, 23926, 0, -6406.67, 349.957, 388.846, 5.725, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42283, 48935, 0, 0, 0, 1, 1, 36342, 0, -5020.37, -1714.34, 497.961, 3.68477, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42286, 48935, 0, 0, 0, 1, 1, 23926, 0, -5212.48, -1925.82, 516.324, 1.4013, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42295, 48935, 0, 0, 0, 1, 1, 23926, 0, -4889.62, 59.1513, 386.892, 2.79773, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42318, 48935, 0, 0, 0, 1, 1, 36342, 0, -5299.28, -1719.09, 517.658, 5.14548, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42330, 48935, 0, 0, 0, 1, 1, 23926, 0, -5874.56, -211.374, 360.528, 3.05432, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42343, 48935, 0, 0, 0, 1, 1, 36342, 0, -6309.86, 158.739, 435.673, 4.36397, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42361, 48935, 0, 0, 0, 1, 1, 23926, 0, -5248.56, -1827.93, 532.698, 1.28345, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42370, 48935, 0, 0, 0, 1, 1, 36342, 0, -5641.61, -1418.6, 398.457, 3.70847, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42379, 48935, 0, 0, 0, 1, 1, 23926, 0, -5969.59, -522.205, 407.245, 1.14821, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42392, 48935, 0, 0, 0, 1, 1, 36342, 0, -5776.53, -1160.44, 376.633, 2.36448, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42410, 48935, 0, 0, 0, 1, 1, 23926, 0, -5626.2, -2226.07, 424.771, 4.16748, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42424, 48935, 0, 0, 0, 1, 1, 23926, 0, -4954.12, -1694.36, 504.782, 1.37359, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42428, 48935, 0, 0, 0, 1, 1, 23926, 0, -5255.6, -1078.2, 409.637, 0.982794, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42434, 48935, 0, 0, 0, 1, 1, 23926, 0, -5811.21, -181.566, 352.4, 0.324223, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42480, 48935, 0, 0, 0, 1, 1, 36342, 0, -6361.82, 810.7, 394.119, 2.00353, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42487, 48935, 0, 0, 0, 1, 1, 36342, 0, -6078.18, -340.85, 433.731, 5.32987, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42500, 48935, 0, 0, 0, 1, 1, 23926, 0, -6339.95, 322.128, 379.54, 3.16698, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42510, 48935, 0, 0, 0, 1, 1, 36342, 0, -6311.42, 288.173, 380.627, 1.83369, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42521, 48935, 0, 0, 0, 1, 1, 23926, 0, -5687.32, -1511.73, 399.768, 0.87381, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42533, 48935, 0, 0, 0, 1, 1, 23926, 0, -6258.38, 695.919, 386.939, 4.83432, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42551, 48935, 0, 0, 0, 1, 1, 36342, 0, -5280.57, -543.997, 386.583, 4.60411, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42558, 48935, 0, 0, 0, 1, 1, 23926, 0, -5677.94, 411.225, 389.151, 5.52682, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42574, 48935, 0, 0, 0, 1, 1, 23926, 0, -6086.05, -253.467, 440.458, 0.013671, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42586, 48935, 0, 0, 0, 1, 1, 36342, 0, -5452.91, -498.735, 400.128, 1.25275, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42617, 48935, 0, 0, 0, 1, 1, 23926, 0, -5828.02, -1931.07, 409.83, 2.18424, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42641, 48935, 0, 0, 0, 1, 1, 36342, 0, -6453.24, 678.458, 387.736, 3.23417, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42644, 48935, 0, 0, 0, 1, 1, 23926, 0, -5257.61, -393.537, 399.627, 1.07523, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42652, 48935, 0, 0, 0, 1, 1, 23926, 0, -6417.35, 569.81, 386.744, 1.7079, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42683, 48935, 0, 0, 0, 1, 1, 36342, 1, -5022.13, -2172.11, 410.874, 0.86831, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42705, 48935, 0, 0, 0, 1, 1, 36342, 0, -4841.68, 58.4066, 402.993, 4.44122, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42739, 48935, 0, 0, 0, 1, 1, 23926, 0, -5708.39, -375.476, 366.143, 6.24722, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42744, 48935, 0, 0, 0, 1, 1, 36342, 0, -5533.26, -712.666, 409.126, 5.25214, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42761, 48935, 0, 0, 0, 1, 1, 36342, 0, -5688.57, -599.355, 401.91, 4.92779, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42780, 48935, 0, 0, 0, 1, 1, 36342, 0, -5624.16, -1240.58, 390.055, 6.23353, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42789, 48935, 0, 0, 0, 1, 1, 23926, 0, -5293.16, -1635.09, 499.823, 4.63622, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42796, 48935, 0, 0, 0, 1, 1, 23926, 0, -5232.99, -1961.55, 531.199, 0.313721, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42812, 48935, 0, 0, 0, 1, 1, 36342, 0, -5561.35, -972.1, 397.179, 1.31168, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42833, 48935, 0, 0, 0, 1, 1, 23926, 0, -6213.91, 580.109, 387.111, 1.52832, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42874, 48935, 0, 0, 0, 1, 1, 23926, 0, -5448.9, -651.404, 392.799, 0.784247, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42899, 48935, 0, 0, 0, 1, 1, 36342, 0, -4357.29, -1641.48, 317.112, 3.12206, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42915, 48935, 0, 0, 0, 1, 1, 36342, 0, -5581.66, -978.522, 393.131, 3.52326, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42965, 48935, 0, 0, 0, 1, 1, 23926, 0, -4948.12, -1656.41, 505.242, 2.6157, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42978, 48935, 0, 0, 0, 1, 1, 23926, 0, -5765.66, -2193.38, 411.866, 6.05668, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(42997, 48935, 0, 0, 0, 1, 1, 36342, 0, -5083.23, -2195.77, 408.293, 2.85257, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43011, 48935, 0, 0, 0, 1, 1, 36342, 0, -5535.51, -616.343, 407.88, 4.40915, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43024, 48935, 0, 0, 0, 1, 1, 36342, 0, -5479.09, -1003.01, 392.699, 2.27455, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43027, 48935, 0, 0, 0, 1, 1, 23926, 0, -5217.63, -1912.78, 516.245, 6.2148, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43050, 48935, 0, 0, 0, 1, 1, 23926, 0, -5048.07, -1618.15, 506.419, 5.83688, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43059, 48935, 0, 0, 0, 1, 1, 36342, 0, -6415.39, 483.116, 382.846, 3.8869, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43062, 48935, 0, 0, 0, 1, 1, 23926, 0, -5042.71, 319.791, 402.938, 4.7453, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43068, 48935, 0, 0, 0, 1, 1, 23926, 0, -5969.79, -188.345, 400.984, 1.46361, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43078, 48935, 0, 0, 0, 1, 1, 36342, 0, -5344.24, -525.62, 391.591, 2.94038, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43096, 48935, 0, 0, 0, 1, 1, 23926, 0, -4805.73, -1714.06, 506.199, 3.26307, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43104, 48935, 0, 0, 0, 1, 1, 36342, 0, -5872.04, -675.554, 399.849, 3.57291, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43110, 48935, 0, 0, 0, 1, 1, 23926, 0, -5847.99, -1377.75, 394.485, 1.34342, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43115, 48935, 0, 0, 0, 1, 1, 23926, 0, -4549.26, -1735.15, 504.115, 2.25852, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43145, 48935, 0, 0, 0, 1, 1, 23926, 0, -5277.03, -1850.96, 514.363, 4.31782, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(43155, 48935, 0, 0, 0, 1, 1, 36342, 0, -5786.8, -878.102, 397.06, 2.90088, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121986, 48935, 1, 0, 0, 1, 1, 36342, 0, 6470.55, -3038.88, 574.313, 4.30692, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121987, 48935, 1, 0, 0, 1, 1, 23926, 0, 7420.75, -5021.99, 726.323, 3.01033, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121988, 48935, 1, 0, 0, 1, 1, 36342, 0, 6726.92, -2525.15, 544.719, 3.83158, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121989, 48935, 1, 0, 0, 1, 1, 36342, 0, 7890.44, -3967.19, 721.945, 1.3481, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121990, 48935, 1, 0, 0, 1, 1, 36342, 0, 5928.56, -4512.08, 718.134, 2.54764, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121991, 48935, 1, 0, 0, 1, 1, 23926, 0, 6079.64, -4442.49, 687.206, 3.10251, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121993, 48935, 1, 0, 0, 1, 1, 36342, 0, 6516.99, -2775.58, 567.256, 5.4243, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121995, 48935, 1, 0, 0, 1, 1, 36342, 0, 6839.64, -2623.58, 585.465, 1.91106, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121996, 48935, 1, 0, 0, 1, 1, 36342, 0, 6549.89, -4547.41, 707.522, 3.41238, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121997, 48935, 1, 0, 0, 1, 1, 36342, 0, 6193.3, -4322.22, 736.177, 3.23941, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121998, 48935, 1, 0, 0, 1, 1, 23926, 0, 6977.74, -4014.61, 721.498, 1.36967, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(121999, 48935, 1, 0, 0, 1, 1, 36342, 0, 6790.51, -2515.63, 552.821, 3.43277, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122000, 48935, 1, 0, 0, 1, 1, 23926, 0, 6792.47, -2587.64, 557.267, 1.76551, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122001, 48935, 1, 0, 0, 1, 1, 36342, 0, 6427, -2746.93, 568.073, 2.7317, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122002, 48935, 1, 0, 0, 1, 1, 36342, 0, 7492.77, -4135.15, 688.193, 1.00474, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122003, 48935, 1, 0, 0, 1, 1, 23926, 0, 6599.05, -2783.4, 568.76, 3.87511, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122004, 48935, 1, 0, 0, 1, 1, 36342, 0, 6744.37, -2615.64, 545.044, 2.8869, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122005, 48935, 1, 0, 0, 1, 1, 36342, 0, 7240.38, -4826.7, 689.704, 0.98902, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122006, 48935, 1, 0, 0, 1, 1, 36342, 0, 7442.66, -4163.24, 686.43, 4.77395, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122007, 48935, 1, 0, 0, 1, 1, 36342, 0, 6408.8, -5075.55, 750.437, 4.56137, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122008, 48935, 1, 0, 0, 1, 1, 36342, 0, 6426.21, -3045.55, 575.804, 1.60789, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122009, 48935, 1, 0, 0, 1, 1, 23926, 0, 6103.86, -4314.14, 726.63, 5.96545, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122010, 48935, 1, 0, 0, 1, 1, 23926, 0, 7210.16, -4051.81, 719.506, 4.04894, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122011, 48935, 1, 0, 0, 1, 1, 23926, 0, 6182.54, -5088.26, 787.316, 2.74648, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122012, 48935, 1, 0, 0, 1, 1, 36342, 0, 6403.1, -4823.53, 724.739, 4.6714, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122013, 48935, 1, 0, 0, 1, 1, 23926, 0, 8091.52, -3874.82, 695.794, 2.73388, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122014, 48935, 1, 0, 0, 1, 1, 23926, 0, 6621.95, -2676.44, 533.019, 2.50161, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122015, 48935, 1, 0, 0, 1, 1, 23926, 0, 7229.11, -4962.58, 725.451, 3.65302, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122016, 48935, 1, 0, 0, 1, 1, 23926, 0, 6758.03, -4135.52, 711.094, 4.81517, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122017, 48935, 1, 0, 0, 1, 1, 36342, 0, 6288.9, -5044.78, 770.373, 2.98271, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122019, 48935, 1, 0, 0, 1, 1, 23926, 0, 7456.37, -4729.4, 647.276, 1.15168, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122020, 48935, 1, 0, 0, 1, 1, 36342, 0, 6773.5, -2722.77, 565.489, 2.46338, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122021, 48935, 1, 0, 0, 1, 1, 36342, 0, 7417.86, -4352.58, 674.322, 2.42143, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122022, 48935, 1, 0, 0, 1, 1, 36342, 0, 6063.67, -4369.01, 716.507, 3.94979, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122023, 48935, 1, 0, 0, 1, 1, 36342, 0, 7227.61, -4016.33, 729.466, 1.10016, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122024, 48935, 1, 0, 0, 1, 1, 23926, 0, 7611.84, -3828.68, 686.831, 3.53319, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122025, 48935, 1, 0, 0, 1, 1, 23926, 0, 7884.34, -4609.72, 709.539, 0.117451, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122026, 48935, 1, 0, 0, 1, 1, 23926, 0, 6777.93, -3005.69, 577.049, 2.95651, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122027, 48935, 1, 0, 0, 1, 1, 23926, 0, 6453.48, -3371.64, 598.778, 6.08866, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122028, 48935, 1, 0, 0, 1, 1, 23926, 0, 6899.42, -4045.3, 702.95, 2.39628, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122029, 48935, 1, 0, 0, 1, 1, 36342, 0, 6226.11, -5022.62, 777.73, 4.99941, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122030, 48935, 1, 0, 0, 1, 1, 23926, 0, 6452.13, -3860.85, 674.35, 1.05213, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122031, 48935, 1, 0, 0, 1, 1, 36342, 0, 6426.1, -2489.96, 552.468, 0.813015, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122032, 48935, 1, 0, 0, 1, 1, 36342, 0, 6492.8, -3190.62, 569.592, 4.90536, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122033, 48935, 1, 0, 0, 1, 1, 36342, 0, 6422.83, -2549.53, 554.324, 1.47952, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122034, 48935, 1, 0, 0, 1, 1, 36342, 0, 6644.02, -2468.23, 538.573, 0.630806, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122035, 48935, 1, 0, 0, 1, 1, 23926, 0, 6330.16, -2416.3, 551.967, 4.56427, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122036, 48935, 1, 0, 0, 1, 1, 23926, 0, 7672.98, -3938.62, 699.406, 5.5254, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122037, 48935, 1, 0, 0, 1, 1, 36342, 0, 6396.82, -3153.75, 605.202, 6.05894, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122038, 48935, 1, 0, 0, 1, 1, 23926, 0, 6056.33, -4750.68, 783.463, 0.365631, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122039, 48935, 1, 0, 0, 1, 1, 23926, 0, 6676.46, -2565.42, 526.359, 3.93598, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122040, 48935, 1, 0, 0, 1, 1, 36342, 0, 6241.13, -4541.79, 695.354, 4.5861, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122041, 48935, 1, 0, 0, 1, 1, 23926, 0, 6338.97, -4011.13, 693.958, 3.4207, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122042, 48935, 1, 0, 0, 1, 1, 36342, 0, 7552.77, -4483.61, 605.236, 4.48381, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122043, 48935, 1, 0, 0, 1, 1, 36342, 0, 6059.55, -4639.95, 714.498, 1.8153, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122044, 48935, 1, 0, 0, 1, 1, 36342, 0, 6360.76, -4789.75, 744.593, 0.783356, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122045, 48935, 1, 0, 0, 1, 1, 23926, 0, 5838.85, -4690.74, 756.165, 3.17024, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122047, 48935, 1, 0, 0, 1, 1, 36342, 0, 6448.87, -3134.17, 571.729, 3.91939, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122048, 48935, 1, 0, 0, 1, 1, 23926, 0, 6811.49, -4111.33, 715.43, 3.36005, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122049, 48935, 1, 0, 0, 1, 1, 36342, 0, 6660.29, -2949.97, 574.522, 4.44657, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122050, 48935, 1, 0, 0, 1, 1, 23926, 0, 6654.2, -3145.89, 599.987, 6.04271, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122051, 48935, 1, 0, 0, 1, 1, 23926, 0, 6432.96, -4431.3, 727.165, 5.44114, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122052, 48935, 1, 0, 0, 1, 1, 23926, 0, 6017.25, -4955.7, 762.244, 2.05277, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122053, 48935, 1, 0, 0, 1, 1, 23926, 0, 6666.36, -2532.29, 529.688, 5.59258, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122054, 48935, 1, 0, 0, 1, 1, 23926, 0, 6951.15, -5119.6, 696.066, 4.8634, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122055, 48935, 1, 0, 0, 1, 1, 36342, 0, 6617.72, -3908.39, 660.809, 1.14204, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122056, 48935, 1, 0, 0, 1, 1, 23926, 0, 6787.38, -2438.59, 550.229, 6.25195, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122057, 48935, 1, 0, 0, 1, 1, 36342, 0, 6621.3, -4916.76, 704.697, 3.98236, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122059, 48935, 1, 0, 0, 1, 1, 23926, 0, 7514.26, -4296.78, 644.533, 1.47404, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122060, 48935, 1, 0, 0, 1, 1, 23926, 0, 7541.17, -5007.36, 705.733, 4.10406, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122061, 48935, 1, 0, 0, 1, 1, 23926, 0, 6466.97, -3587.23, 679.695, 0.79575, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122062, 48935, 1, 0, 0, 1, 1, 36342, 0, 6924.59, -3973.43, 736.003, 1.29113, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122063, 48935, 1, 0, 0, 1, 1, 36342, 0, 6856.5, -3044.33, 605.215, 5.279, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122064, 48935, 1, 0, 0, 1, 1, 23926, 0, 6566.93, -3331.25, 601.212, 3.14159, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122065, 48935, 1, 0, 0, 1, 1, 36342, 0, 6679.81, -3092.64, 575.735, 4.6997, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122066, 48935, 1, 0, 0, 1, 1, 23926, 0, 7099.69, -4068.34, 714.162, 1.20425, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122067, 48935, 1, 0, 0, 1, 1, 23926, 0, 7286.14, -4923.5, 716.01, 2.8464, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122068, 48935, 1, 0, 0, 1, 1, 36342, 0, 6718.03, -4398.44, 740.13, 4.90002, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122069, 48935, 1, 0, 0, 1, 1, 36342, 0, 6577.88, -2939.63, 596.932, 2.18473, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122070, 48935, 1, 0, 0, 1, 1, 23926, 0, 6287.17, -3937.81, 702.312, 5.08328, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122071, 48935, 1, 0, 0, 1, 1, 23926, 0, 6448.87, -2849.88, 585.002, 2.03444, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122072, 48935, 1, 0, 0, 1, 1, 36342, 0, 6445.6, -2643.75, 554.867, 1.94462, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122073, 48935, 1, 0, 0, 1, 1, 36342, 0, 7227.61, -4110.55, 711.748, 0.151578, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122074, 48935, 1, 0, 0, 1, 1, 36342, 0, 6573.9, -2890.78, 597.783, 0.657959, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122075, 48935, 1, 0, 0, 1, 1, 36342, 0, 6494.98, -3293.31, 574.799, 0.023433, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122076, 48935, 1, 0, 0, 1, 1, 36342, 0, 5952.33, -4403.12, 727.357, 3.14159, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122077, 48935, 1, 0, 0, 1, 1, 36342, 0, 6523.37, -3374.79, 591.829, 2.05258, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122078, 48935, 1, 0, 0, 1, 1, 23926, 0, 6508.69, -3240.24, 572.564, 6.08062, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122079, 48935, 1, 0, 0, 1, 1, 36342, 0, 6082.75, -4515.55, 679.606, 4.7391, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122080, 48935, 1, 0, 0, 1, 1, 36342, 0, 6456.79, -2877.23, 573.252, 0.872071, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122081, 48935, 1, 0, 0, 1, 1, 23926, 0, 7533.63, -4635.83, 643.957, 5.66214, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122082, 48935, 1, 0, 0, 1, 1, 23926, 0, 7603.24, -3913.38, 687.184, 2.78465, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122083, 48935, 1, 0, 0, 1, 1, 23926, 0, 6465.35, -3111.85, 572.776, 3.15917, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122084, 48935, 1, 0, 0, 1, 1, 23926, 0, 7598.2, -4938.84, 697.298, 6.21083, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122085, 48935, 1, 0, 0, 1, 1, 23926, 0, 7598.6, -4579.43, 636.035, 3.3842, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122086, 48935, 1, 0, 0, 1, 1, 23926, 0, 5985.58, -4540.13, 708.272, 0.03127, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122087, 48935, 1, 0, 0, 1, 1, 36342, 0, 7968.01, -3792.03, 698.124, 0.599372, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122088, 48935, 1, 0, 0, 1, 1, 23926, 0, 6746.94, -4887.7, 772.597, 4.67237, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122089, 48935, 1, 0, 0, 1, 1, 23926, 0, 6002.7, -4655.75, 737.021, 0.098792, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122091, 48935, 1, 0, 0, 1, 1, 36342, 0, 7225.16, -4074.32, 717.897, 4.46708, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122092, 48935, 1, 0, 0, 1, 1, 36342, 0, 7961.19, -3925.97, 690.888, 1.82509, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122093, 48935, 1, 0, 0, 1, 1, 36342, 0, 7923.12, -4535.69, 699.947, 2.71901, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122094, 48935, 1, 0, 0, 1, 1, 23926, 0, 6204.96, -4186.61, 731.885, 2.8869, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122095, 48935, 1, 0, 0, 1, 1, 23926, 0, 5953.49, -4577.81, 714.005, 5.82784, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122096, 48935, 1, 0, 0, 1, 1, 36342, 0, 6127.9, -4824.26, 741.253, 0.277769, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122097, 48935, 1, 0, 0, 1, 1, 23926, 0, 7472.65, -4957.18, 694.465, 0.733613, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122098, 48935, 1, 0, 0, 1, 1, 36342, 0, 6155.58, -4310.61, 736.726, 1.31208, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122099, 48935, 1, 0, 0, 1, 1, 23926, 0, 8047.18, -3860.02, 696.537, 0.11357, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122100, 48935, 1, 0, 0, 1, 1, 36342, 0, 5678.68, -5003.05, 807.148, 3.0218, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122101, 48935, 1, 0, 0, 1, 1, 36342, 0, 7896.88, -4447.8, 700.984, 1.46458, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122102, 48935, 1, 0, 0, 1, 1, 23926, 0, 6809.33, -4205.45, 716.693, 2.00189, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122103, 48935, 1, 0, 0, 1, 1, 36342, 0, 7781, -4605.09, 689.239, 3.69491, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122104, 48935, 1, 0, 0, 1, 1, 36342, 0, 6479.08, -2559.64, 573.643, 2.70809, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122105, 48935, 1, 0, 0, 1, 1, 36342, 0, 6410.11, -3560.17, 697.624, 5.70439, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122106, 48935, 1, 0, 0, 1, 1, 36342, 0, 6609.64, -4444.46, 706.898, 6.23649, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122107, 48935, 1, 0, 0, 1, 1, 36342, 0, 6697.7, -2456.42, 541.456, 6.05787, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122108, 48935, 1, 0, 0, 1, 1, 36342, 0, 6896.81, -2336.69, 567.564, 3.69994, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122109, 48935, 1, 0, 0, 1, 1, 36342, 0, 6416.21, -2408.37, 562.301, 3.73176, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122110, 48935, 1, 0, 0, 1, 1, 36342, 0, 6792.69, -2690.89, 548.42, 0.128715, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122112, 48935, 1, 0, 0, 1, 1, 36342, 0, 7777.38, -4493.3, 659.955, 5.21532, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122113, 48935, 1, 0, 0, 1, 1, 36342, 0, 5904.08, -4575.31, 728.92, 0.009765, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122114, 48935, 1, 0, 0, 1, 1, 36342, 0, 6513.91, -2846.64, 583.894, 5.85842, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122115, 48935, 1, 0, 0, 1, 1, 23926, 0, 6459.52, -3624.31, 708.186, 3.42916, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122116, 48935, 1, 0, 0, 1, 1, 23926, 0, 7452.98, -4518.25, 600.878, 2.53669, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122117, 48935, 1, 0, 0, 1, 1, 36342, 0, 6447.2, -3087.19, 570.957, 6.15545, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122118, 48935, 1, 0, 0, 1, 1, 36342, 0, 6741.11, -3096.36, 573.682, 5.71408, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122119, 48935, 1, 0, 0, 1, 1, 23926, 0, 7185.59, -4902.28, 710.008, 4.34241, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122120, 48935, 1, 0, 0, 1, 1, 23926, 0, 7321.32, -5039.82, 728.43, 3.65201, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122122, 48935, 1, 0, 0, 1, 1, 36342, 0, 6592.09, -2721.78, 555.144, 1.28612, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122123, 48935, 1, 0, 0, 1, 1, 36342, 0, 5948.6, -4671.11, 746.532, 2.86678, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122124, 48935, 1, 0, 0, 1, 1, 23926, 0, 6729.17, -2610.69, 540.773, 1.5708, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122125, 48935, 1, 0, 0, 1, 1, 36342, 0, 6705.21, -2604.79, 534.023, 0.539754, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122126, 48935, 1, 0, 0, 1, 1, 23926, 0, 6609.18, -3826.98, 654.156, 5.58795, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122127, 48935, 1, 0, 0, 1, 1, 23926, 0, 6772.28, -2557.41, 553.435, 4.55807, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122128, 48935, 1, 0, 0, 1, 1, 36342, 0, 6411.94, -2946.88, 593.054, 3.82537, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122129, 48935, 1, 0, 0, 1, 1, 23926, 0, 6800.28, -3097.38, 583.093, 2.45373, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122130, 48935, 1, 0, 0, 1, 1, 36342, 0, 6060.87, -4693.6, 749.935, 4.46404, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122131, 48935, 1, 0, 0, 1, 1, 23926, 0, 6256.88, -4756.3, 754.276, 6.07493, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122132, 48935, 1, 0, 0, 1, 1, 36342, 0, 6493.42, -4806.92, 705.042, 0.326074, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122133, 48935, 1, 0, 0, 1, 1, 36342, 0, 7378.64, -4560.73, 593.649, 2.03444, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122134, 48935, 1, 0, 0, 1, 1, 23926, 0, 6015.67, -4628.5, 720.055, 1.20769, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122136, 48935, 1, 0, 0, 1, 1, 36342, 0, 7443.32, -4053.66, 695.618, 0.501217, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122137, 48935, 1, 0, 0, 1, 1, 36342, 0, 8204.87, -3802.89, 701.968, 3.24576, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122138, 48935, 1, 0, 0, 1, 1, 23926, 0, 6152.78, -4676.14, 719.378, 3.09861, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122139, 48935, 1, 0, 0, 1, 1, 36342, 0, 7291.67, -4758.33, 675.035, 2.71907, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122140, 48935, 1, 0, 0, 1, 1, 36342, 0, 6572.55, -2849.77, 594.312, 5.74829, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122141, 48935, 1, 0, 0, 1, 1, 36342, 0, 6553.76, -4987.43, 715.113, 2.85229, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122142, 48935, 1, 0, 0, 1, 1, 23926, 0, 5885.23, -4660.39, 747.049, 4.74558, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122143, 48935, 1, 0, 0, 1, 1, 36342, 0, 5976.65, -4477.06, 704.728, 3.31044, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122144, 48935, 1, 0, 0, 1, 1, 36342, 0, 7074.27, -5037.7, 713.07, 5.54957, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122145, 48935, 1, 0, 0, 1, 1, 36342, 0, 6379.1, -4552.46, 749.795, 2.07598, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122146, 48935, 1, 0, 0, 1, 1, 36342, 0, 7282.68, -4056.34, 707.546, 5.5627, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122147, 48935, 1, 0, 0, 1, 1, 36342, 0, 7506.6, -4804.87, 686.807, 1.59521, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122148, 48935, 1, 0, 0, 1, 1, 23926, 0, 6675.41, -2401.3, 550.277, 2.06088, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122149, 48935, 1, 0, 0, 1, 1, 36342, 0, 6439.77, -3293.47, 591.133, 3.90528, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122150, 48935, 1, 0, 0, 1, 1, 36342, 0, 5914.71, -4821.18, 756.45, 4.71402, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122151, 48935, 1, 0, 0, 1, 1, 23926, 0, 7930.38, -3861.16, 695.923, 3.95023, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122152, 48935, 1, 0, 0, 1, 1, 23926, 0, 8075.04, -3962.8, 690.081, 0.545064, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122153, 48935, 1, 0, 0, 1, 1, 36342, 0, 6692.76, -2672.93, 533.868, 5.83334, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122154, 48935, 1, 0, 0, 1, 1, 23926, 0, 6213.95, -4411.4, 681.194, 1.04227, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122155, 48935, 1, 0, 0, 1, 1, 36342, 0, 7054.21, -4092.85, 700.781, 0.058641, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122156, 48935, 1, 0, 0, 1, 1, 23926, 0, 6556.12, -3857.04, 658.214, 2.12689, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122157, 48935, 1, 0, 0, 1, 1, 23926, 0, 6646.9, -2653.76, 529.948, 4.00256, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122158, 48935, 1, 0, 0, 1, 1, 36342, 0, 6981.11, -3983.57, 734.129, 1.33198, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122159, 48935, 1, 0, 0, 1, 1, 23926, 0, 6398.13, -4997.69, 744.537, 5.51436, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122160, 48935, 1, 0, 0, 1, 1, 36342, 0, 7655.16, -4471.52, 623.91, 1.53611, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122161, 48935, 1, 0, 0, 1, 1, 23926, 0, 6373.72, -3490.86, 693.259, 5.34447, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(122162, 48935, 1, 0, 0, 1, 1, 23926, 0, 6325.36, -4375.91, 728.087, 0.30137, 90, 5, 0, 8, 0, 1, 0, 0, 0),
(279999, 48935, 1, 0, 0, 1, 1, 0, 0, 5688.86, -4549.2, 764.212, 3.40647, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280008, 48935, 1, 0, 0, 1, 1, 0, 0, 5789.29, -4605.69, 761.312, 0.00707437, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280009, 48935, 1, 0, 0, 1, 1, 0, 0, 5757.94, -4730.1, 775.288, 2.83373, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280012, 48935, 1, 0, 0, 1, 1, 0, 0, 5775.67, -4969.07, 836.029, 5.82347, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280016, 48935, 1, 0, 0, 1, 1, 0, 0, 5718.67, -4905.68, 798.984, 3.13183, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280031, 48935, 1, 0, 0, 1, 1, 0, 0, 5616.14, -4616.31, 774.489, 0.809619, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280035, 48935, 1, 0, 0, 1, 1, 0, 0, 5611.81, -4771.65, 779.1, 5.01446, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280045, 48935, 1, 0, 0, 1, 1, 0, 0, 5525.71, -4950.18, 842.787, 4.56137, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280050, 48935, 1, 0, 0, 1, 1, 0, 0, 5476.76, -4870.91, 869.488, 1.79021, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280056, 48935, 1, 0, 0, 1, 1, 0, 0, 5503.84, -4768.61, 789.301, 4.49775, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280096, 48935, 1, 0, 0, 1, 1, 0, 0, 5288.27, -4456.38, 840.016, 1.94604, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280130, 48935, 1, 0, 0, 1, 1, 0, 0, 5198.97, -4454.23, 856.894, 0.871808, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280140, 48935, 1, 0, 0, 1, 1, 0, 0, 5143.46, -4569.37, 842.062, 0.25578, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280144, 48935, 1, 0, 0, 1, 1, 0, 0, 5155.01, -4674.64, 830.417, 1.70816, 120, 7.786, 0, 1, 1, 1, 0, 0, 0),
(280154, 48935, 1, 0, 0, 1, 1, 0, 0, 5092.1, -4913.07, 872.462, 1.26756, 120, 7.786, 0, 1, 1, 1, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=41544;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(21052, 41544, 0, 0, 0, 1, 1, 32332, 0, -5773.91, -1302.45, 386.892, 3.15465, 90, 5, 0, 156, 0, 1, 0, 0, 2048),
(21053, 41544, 0, 0, 0, 1, 1, 32332, 0, -5795.04, -1081.16, 384.558, 2.68067, 90, 10, 0, 156, 0, 1, 0, 0, 2048),
(21054, 41544, 0, 0, 0, 1, 1, 32333, 0, -5859.86, -1190.15, 383.563, 5.07399, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(21055, 41544, 0, 0, 0, 1, 1, 32332, 0, -5850.45, -1393.99, 396.36, 1.13798, 90, 10, 0, 156, 0, 1, 0, 0, 2048),
(41886, 41544, 0, 0, 0, 1, 1, 32332, 0, -5751.66, -1237.06, 380.627, 6.18399, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(42247, 41544, 0, 0, 0, 1, 1, 32332, 0, -5832.86, -1097.4, 382.294, 4.92174, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(42383, 41544, 0, 0, 0, 1, 1, 32333, 0, -5714.65, -1237.6, 388.678, 2.1933, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(49748, 41544, 0, 0, 0, 1, 1, 0, 0, -5708.86, -1318.49, 392.307, 1.63097, 90, 0, 0, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=41539;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(21056, 41539, 0, 0, 0, 1, 1, 10002, 0, -5713.55, -1293.18, 390.9, 2.04527, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21057, 41539, 0, 0, 0, 1, 1, 10003, 0, -5825.96, -1198.99, 379.026, 3.5414, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21058, 41539, 0, 0, 0, 1, 1, 10002, 0, -5845.3, -1274.7, 387.208, 2.94551, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21059, 41539, 0, 0, 0, 1, 1, 10001, 0, -5719.9, -1253.74, 389.067, 0.078271, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21060, 41539, 0, 0, 0, 1, 1, 10001, 0, -5715.75, -1329.48, 393.029, 1.03926, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21061, 41539, 0, 0, 0, 1, 1, 10001, 0, -5757.11, -1140.87, 379.986, 2.25609, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21062, 41539, 0, 0, 0, 1, 1, 10002, 0, -5726.57, -1153.32, 381.907, 4.00989, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21063, 41539, 0, 0, 0, 1, 1, 10001, 0, -5828.04, -1155.38, 378.168, 2.1842, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21064, 41539, 0, 0, 0, 1, 1, 10002, 0, -5847.75, -1073.9, 387.292, 5.29174, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21065, 41539, 0, 0, 0, 1, 1, 10002, 0, -5856.21, -1223.98, 390.417, 0.620476, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21066, 41539, 0, 0, 0, 1, 1, 10003, 0, -5807.12, -1134.12, 378.543, 4.51221, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(21067, 41539, 0, 0, 0, 1, 1, 10002, 0, -5783.59, -1069.04, 385.261, 0.887816, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(41978, 41539, 0, 0, 0, 1, 1, 10001, 0, -5877.08, -1091.17, 382.357, 3.96289, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42051, 41539, 0, 0, 0, 1, 1, 10002, 0, -5865.99, -1156.93, 380.166, 5.22499, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42138, 41539, 0, 0, 0, 1, 1, 10003, 0, -5750.76, -1314.52, 389.983, 2.0384, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42144, 41539, 0, 0, 0, 1, 1, 10003, 0, -5885.28, -1187.77, 392.083, 1.91106, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42202, 41539, 0, 0, 0, 1, 1, 10003, 0, -5809.76, -1268.92, 380.399, 2.81737, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42362, 41539, 0, 0, 0, 1, 1, 10001, 0, -5713.11, -1208.41, 385.688, 4.00715, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42537, 41539, 0, 0, 0, 1, 1, 10002, 0, -5808.18, -1308.39, 384.548, 5.55311, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42660, 41539, 0, 0, 0, 1, 1, 10002, 0, -5851.74, -1347.54, 390.7, 2.27179, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42834, 41539, 0, 0, 0, 1, 1, 10003, 0, -5735.91, -1178.37, 378.808, 5.70656, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42960, 41539, 0, 0, 0, 1, 1, 10003, 0, -5724.46, -1112.03, 384.35, 2.11348, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(43085, 41539, 0, 0, 0, 1, 1, 10002, 0, -5779.23, -1252.78, 379.576, 3.1253, 90, 5, 0, 176, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=1196;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(53530, 1196, 0, 0, 0, 1, 1, 0, 0, -5473.11, -2141.55, 413.534, 1.07831, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53531, 1196, 0, 0, 0, 1, 1, 0, 0, -5456.15, -1880.89, 401.226, 1.53009, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53532, 1196, 0, 0, 0, 1, 1, 0, 0, -5534.02, -1472.99, 406.75, 5.334, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53533, 1196, 0, 0, 0, 1, 1, 0, 0, -5845.32, -1395.74, 396.508, 4.85732, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53534, 1196, 0, 0, 0, 1, 1, 0, 0, -5888.73, -1089.28, 383.122, 3.0675, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53535, 1196, 0, 0, 0, 1, 1, 0, 0, -5744.2, -1200.85, 384.621, 4.34899, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53536, 1196, 0, 0, 0, 1, 1, 0, 0, -5583.75, -1116.98, 390.672, 3.9031, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53537, 1196, 0, 0, 0, 1, 1, 0, 0, -5297.75, -968.592, 389.809, 3.75646, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53539, 1196, 0, 0, 0, 1, 1, 0, 0, -5643.36, -677.035, 403.874, 0.060591, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53540, 1196, 0, 0, 0, 1, 1, 0, 0, -5293.4, -717.5, 388.457, 5.09433, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53541, 1196, 0, 0, 0, 1, 1, 0, 0, -5921.85, -624.993, 399.652, 3.57032, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53542, 1196, 0, 0, 0, 1, 1, 0, 0, -5955.3, -498.318, 409.149, 5.07905, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53543, 1196, 0, 0, 0, 1, 1, 0, 0, -5199.99, -114.405, 407.844, 2.00034, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53544, 1196, 0, 0, 0, 1, 1, 0, 0, -5242.6, -56.3073, 396.17, 5.92624, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53545, 1196, 0, 0, 0, 1, 1, 0, 0, -5303.76, -94.899, 400.886, 4.5204, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53546, 1196, 0, 0, 0, 1, 1, 0, 0, -5285.84, -75.1347, 401.91, 1.5708, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53547, 1196, 0, 0, 0, 1, 1, 0, 0, -5056.07, 68.3708, 395.328, 5.66157, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53548, 1196, 0, 0, 0, 1, 1, 0, 0, -5417.8, 34.0006, 414.617, 5.90087, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53549, 1196, 0, 0, 0, 1, 1, 0, 0, -5319.32, -26.9008, 393.778, 5.9792, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53550, 1196, 0, 0, 0, 1, 1, 0, 0, -5833.81, 300.745, 420.966, 5.6057, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53551, 1196, 0, 0, 0, 1, 1, 0, 0, -5515.43, 212.82, 399.737, 5.67476, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53552, 1196, 0, 0, 0, 1, 1, 0, 0, -5574.92, 338.128, 391.483, 4.78926, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53554, 1196, 0, 0, 0, 1, 1, 0, 0, -5217.14, 277.976, 396.184, 2.24331, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53555, 1196, 0, 0, 0, 1, 1, 0, 0, -5264.65, 315.338, 396.436, 4.78078, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53556, 1196, 0, 0, 0, 1, 1, 0, 0, -5240.07, 359.182, 397.237, 0.634801, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53560, 1196, 0, 0, 0, 1, 1, 0, 0, -5437.89, 406.142, 391.565, 1.4278, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53563, 1196, 0, 0, 0, 1, 1, 0, 0, -5722.07, 487.089, 394.889, 2.4611, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53564, 1196, 0, 0, 0, 1, 1, 0, 0, -5689.31, 522.743, 388.005, 2.02134, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53565, 1196, 0, 0, 0, 1, 1, 0, 0, -5707.71, 555.298, 393.455, 5.94476, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53569, 1196, 0, 0, 0, 1, 1, 0, 0, -5145.86, 236.282, 397.908, 6.27733, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53570, 1196, 0, 0, 0, 1, 1, 0, 0, -5085.34, 159.369, 397.85, 3.00052, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53571, 1196, 0, 0, 0, 1, 1, 0, 0, -4929.46, 116.813, 388.485, 1.23168, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53572, 1196, 0, 0, 0, 1, 1, 0, 0, -4871.85, 99.7302, 389.402, 5.81539, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53573, 1196, 0, 0, 0, 1, 1, 0, 0, -4877.07, 20.2735, 388.366, 2.92886, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53574, 1196, 0, 0, 0, 1, 1, 0, 0, -4990.84, -58.1003, 386.758, 2.88709, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53575, 1196, 0, 0, 0, 1, 1, 0, 0, -4834.81, -228.943, 399.104, 6.26547, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53576, 1196, 0, 0, 0, 1, 1, 0, 0, -4822.03, -356.884, 396.206, 6.185, 90, 10, 0, 164, 0, 1, 0, 0, 0),
(53577, 1196, 0, 0, 0, 1, 1, 0, 0, -5957.03, -480.463, 408.535, 2.05878, 90, 10, 0, 164, 0, 1, 0, 0, 0);

-- http://ru.wowhead.com/quest=25932
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 25932;

DELETE FROM `creature_equip_template` WHERE (`entry`=1388);

DELETE FROM `creature` WHERE `id`=42170;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20818, 42170, 0, 0, 0, 1, 1, 954, 0, -5674.24, -2122.3, 401.065, 1.81514, 90, 13, 0, 176, 0, 1, 0, 0, 2048),
(20819, 42170, 0, 0, 0, 1, 1, 954, 0, -5511.04, -2100.34, 404.408, 1.20517, 90, 13, 0, 176, 0, 1, 0, 0, 2048),
(20820, 42170, 0, 0, 0, 1, 1, 954, 0, -5723.52, -1906.78, 400.623, 5.3327, 90, 17, 0, 176, 0, 1, 0, 0, 2048),
(20821, 42170, 0, 0, 0, 1, 1, 954, 0, -5709.48, -1826.38, 399.912, 4.46297, 90, 17, 0, 176, 0, 1, 0, 0, 2048),
(20822, 42170, 0, 0, 0, 1, 1, 954, 0, -5674.6, -1786.5, 400.638, 2.78884, 90, 18, 0, 198, 0, 1, 0, 0, 2048),
(20823, 42170, 0, 0, 0, 1, 1, 954, 0, -5825.15, -1758.46, 401.701, 3.53056, 90, 17, 0, 176, 0, 1, 0, 0, 2048),
(20824, 42170, 0, 0, 0, 1, 1, 954, 0, -5665.38, -1755.5, 399.869, 5.92591, 90, 14, 0, 198, 0, 1, 0, 0, 2048),
(20825, 42170, 0, 0, 0, 1, 1, 954, 0, -5651.17, -1670.57, 401.153, 5.09906, 90, 18, 0, 176, 0, 1, 0, 0, 2048),
(20826, 42170, 0, 0, 0, 1, 1, 954, 0, -5628.62, -1720.1, 398.721, 4.90966, 90, 19, 0, 198, 0, 1, 0, 0, 2048),
(20827, 42170, 0, 0, 0, 1, 1, 954, 0, -5789.77, -1994.96, 402.192, 4.30397, 90, 23, 0, 198, 0, 1, 0, 0, 2048),
(20828, 42170, 0, 0, 0, 1, 1, 954, 0, -5613.21, -1684.98, 399.101, 2.24828, 90, 21, 0, 176, 0, 1, 0, 0, 2048),
(20829, 42170, 0, 0, 0, 1, 1, 954, 0, -5412.41, -2153.07, 400.67, 2.45995, 90, 21, 0, 198, 0, 1, 0, 0, 2048),
(20830, 42170, 0, 0, 0, 1, 1, 954, 0, -5715.44, -1798.98, 399.68, 5.75959, 90, 20, 0, 176, 0, 1, 0, 0, 2048),
(20831, 42170, 0, 0, 0, 1, 1, 954, 0, -5786.3, -1938.25, 402.449, 0.05236, 90, 19, 0, 198, 0, 1, 0, 0, 2048),
(20832, 42170, 0, 0, 0, 1, 1, 954, 0, -5925.39, -1917.59, 405.483, 0.087266, 90, 15, 0, 176, 0, 1, 0, 0, 2048),
(20833, 42170, 0, 0, 0, 1, 1, 954, 0, -5736.77, -1743.52, 399.733, 0.05236, 90, 17, 0, 176, 0, 1, 0, 0, 2048),
(20834, 42170, 0, 0, 0, 1, 1, 954, 0, -5723.8, -1871.06, 399.69, 0.05236, 90, 17, 0, 198, 0, 1, 0, 0, 2048),
(41755, 42170, 0, 0, 0, 1, 1, 954, 0, -5748.61, -2152.22, 401.218, 0.05236, 90, 15, 0, 198, 0, 1, 0, 0, 2048),
(41942, 42170, 0, 0, 0, 1, 1, 954, 0, -5714.55, -1924.39, 399.902, 0.855211, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(41965, 42170, 0, 0, 0, 1, 1, 954, 0, -5532.85, -2028.65, 400.454, 0.436332, 90, 12, 0, 176, 0, 1, 0, 0, 2048),
(42009, 42170, 0, 0, 0, 1, 1, 954, 0, -5642.62, -2096.63, 401.168, 2.49582, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(42112, 42170, 0, 0, 0, 1, 1, 954, 0, -5754.46, -1926.04, 401.479, 3.19241, 90, 11, 0, 198, 0, 1, 0, 0, 2048),
(42233, 42170, 0, 0, 0, 1, 1, 954, 0, -5338.84, -2186.35, 424.479, 2.77464, 90, 8, 0, 198, 0, 1, 0, 0, 2048),
(42431, 42170, 0, 0, 0, 1, 1, 954, 0, -5764.12, -1738.06, 399.88, 1.82297, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(42610, 42170, 0, 0, 0, 1, 1, 954, 0, -5626.27, -1812.91, 400.939, 0.671693, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(42642, 42170, 0, 0, 0, 1, 1, 954, 0, -5787.81, -2114.03, 400.615, 0.05236, 90, 8, 0, 176, 0, 1, 0, 0, 2048),
(42695, 42170, 0, 0, 0, 1, 1, 954, 0, -5562.99, -2158.2, 402.01, 3.75072, 90, 5, 0, 176, 0, 1, 0, 0, 2048),
(42753, 42170, 0, 0, 0, 1, 1, 954, 0, -5663.13, -2204.79, 425.613, 3.92423, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(42836, 42170, 0, 0, 0, 1, 1, 954, 0, -5722.59, -1833.89, 399.754, 0.05236, 90, 18, 0, 176, 0, 1, 0, 0, 2048),
(42937, 42170, 0, 0, 0, 1, 1, 954, 0, -5440.41, -2122.79, 401.844, 1.35067, 90, 14, 0, 176, 0, 1, 0, 0, 2048),
(42979, 42170, 0, 0, 0, 1, 1, 954, 0, -5663.84, -1717.6, 400.22, 5.7907, 90, 14, 0, 176, 0, 1, 0, 0, 2048),
(43005, 42170, 0, 0, 0, 1, 1, 954, 0, -5878.07, -1906.41, 410.002, 0.835594, 90, 17, 0, 198, 0, 1, 0, 0, 2048),
(43109, 42170, 0, 0, 0, 1, 1, 954, 0, -5705.86, -1772.77, 400.183, 5.65179, 90, 11, 0, 198, 0, 1, 0, 0, 2048),
(43154, 42170, 0, 0, 0, 1, 1, 954, 0, -5618.13, -2111.81, 400.564, 1.63871, 90, 16, 0, 198, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=1117;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15461173, 1117, 0, 1, 134, 1, 1, 0, 1, -5741.48, -1548.68, 377.459, 6.02194, 300, 0, 0, 176, 0, 0, 0, 0, 0),
(21091, 1117, 0, 0, 0, 1, 1, 6530, 0, -5602.04, -1705.14, 359.06, 2.06008, 90, 4, 0, 198, 0, 1, 0, 32768, 129),
(21092, 1117, 0, 0, 0, 1, 1, 6530, 0, -5626.84, -1680.37, 362.291, 2.65842, 90, 4, 0, 198, 0, 1, 0, 32768, 129),
(21093, 1117, 0, 0, 0, 1, 1, 6530, 0, -5736.19, -1680.36, 361.987, 2.28782, 90, 2, 0, 198, 0, 1, 0, 32768, 129),
(21094, 1117, 0, 0, 0, 1, 1, 830, 0, -5577.61, -1723.57, 353.503, 3.52556, 90, 2, 0, 198, 0, 1, 0, 32768, 129),
(21095, 1117, 0, 0, 0, 1, 1, 4905, 0, -5591.52, -1665.68, 344.682, 3.10669, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21096, 1117, 0, 0, 0, 1, 1, 4905, 0, -5674.9, -1679.11, 360.878, 1.64061, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21097, 1117, 0, 0, 0, 1, 1, 4905, 0, -5690.4, -1716.89, 361.804, 5.8294, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21098, 1117, 0, 0, 0, 1, 1, 4905, 0, -5701.54, -1675.3, 360.878, 3.63029, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21099, 1117, 0, 0, 0, 1, 1, 4905, 0, -5632.65, -1788.74, 358.396, 2.02458, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(15461175, 1117, 0, 1, 134, 1, 1, 0, 1, -5747.89, -1547.03, 375.646, 6.17273, 300, 0, 0, 176, 0, 0, 0, 0, 0),
(41708, 1117, 0, 0, 0, 1, 1, 6530, 0, -5798.59, -1524.33, 359.323, 6.00393, 90, 9, 0, 198, 0, 1, 0, 32768, 129),
(41812, 1117, 0, 0, 0, 1, 1, 6530, 0, -5680.71, -1697.66, 360.795, 4.33603, 90, 8, 0, 176, 0, 1, 0, 32768, 129),
(41973, 1117, 0, 0, 0, 1, 1, 830, 0, -5581.21, -1707.11, 343.152, 2.33676, 90, 5, 0, 198, 0, 1, 0, 32768, 129),
(42045, 1117, 0, 0, 0, 1, 1, 830, 0, -5626.32, -1751.75, 357.131, 4.43314, 90, 7, 0, 198, 0, 1, 0, 32768, 129),
(42322, 1117, 0, 0, 0, 1, 1, 4905, 0, -5638.55, -1774.07, 355.883, 2.92537, 90, 9, 0, 176, 0, 1, 0, 32768, 129),
(42474, 1117, 0, 0, 0, 1, 1, 4905, 0, -5644.44, -1700.44, 362.148, 5.18363, 90, 8, 0, 198, 0, 1, 0, 32768, 129),
(42892, 1117, 0, 0, 0, 1, 1, 830, 0, -5793.1, -1546.94, 359.691, 0.314159, 90, 3, 0, 198, 0, 1, 0, 32768, 129),
(43049, 1117, 0, 0, 0, 1, 1, 830, 0, -5598.86, -1801.82, 355.398, 2.18005, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(43129, 1117, 0, 0, 0, 1, 1, 6530, 0, -5610.31, -1766.96, 356.831, 4.61328, 90, 5, 0, 198, 0, 1, 0, 32768, 129);

DELETE FROM `creature` WHERE `id`=1115;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(21078, 1115, 0, 0, 0, 1, 1, 726, 0, -5758.68, -1674.87, 359.022, 4.13643, 90, 7, 0, 156, 0, 1, 0, 32768, 129),
(21079, 1115, 0, 0, 0, 1, 1, 726, 0, -5838.26, -1605.33, 358.895, 3.05433, 90, 0, 0, 176, 0, 0, 0, 32768, 129),
(21080, 1115, 0, 0, 0, 1, 1, 726, 0, -5834.2, -1528.01, 358.389, 5.07784, 90, 9, 0, 176, 0, 1, 0, 32768, 129),
(21081, 1115, 0, 0, 0, 1, 1, 726, 0, -5821.31, -1565.11, 358.4, 4.96885, 90, 10, 0, 176, 0, 1, 0, 32768, 129),
(21082, 1115, 0, 0, 0, 1, 1, 726, 0, -5741.2, -1651.86, 358.895, 4.81711, 90, 0, 0, 156, 0, 0, 0, 32768, 129),
(21083, 1115, 0, 0, 0, 1, 1, 726, 0, -5831.11, -1641.12, 358.932, 1.26883, 90, 8, 0, 156, 0, 1, 0, 32768, 129),
(21084, 1115, 0, 0, 0, 1, 1, 726, 0, -5864.87, -1543.32, 373.095, 5.84685, 90, 9, 0, 176, 0, 1, 0, 32768, 129),
(21085, 1115, 0, 0, 0, 1, 1, 726, 0, -5603.59, -1747.88, 371.865, 5.93412, 90, 8, 0, 176, 0, 1, 0, 32768, 129),
(21086, 1115, 0, 0, 0, 1, 1, 726, 0, -5790.52, -1676.21, 359.843, 0.069813, 90, 0, 0, 176, 0, 0, 0, 32768, 129),
(21087, 1115, 0, 0, 0, 1, 1, 726, 0, -5793.85, -1668.88, 359.039, 4.4504, 90, 4, 0, 156, 0, 1, 0, 32768, 129),
(21088, 1115, 0, 0, 0, 1, 1, 726, 0, -5840.64, -1590.02, 362.181, 0.907571, 90, 6, 0, 176, 0, 1, 0, 32768, 129),
(21089, 1115, 0, 0, 0, 1, 1, 726, 0, -5823.07, -1516.52, 358.603, 3.9619, 90, 10, 0, 176, 0, 1, 0, 32768, 129),
(21090, 1115, 0, 0, 0, 1, 1, 726, 0, -5582.68, -1759.77, 371.743, 4.02346, 90, 8, 0, 176, 0, 1, 0, 32768, 129),
(23023, 1115, 0, 0, 0, 1, 1, 726, 0, -5799.37, -1697.49, 358.92, 6.13095, 90, 0, 0, 176, 0, 0, 0, 32768, 129),
(23038, 1115, 0, 0, 0, 1, 1, 726, 0, -5874.4, -1531.43, 379.362, 1.74075, 90, 6, 0, 156, 0, 1, 0, 32768, 129),
(41696, 1115, 0, 0, 0, 1, 1, 726, 0, -5817.92, -1618.58, 359.367, 0.858407, 90, 9, 0, 176, 0, 1, 0, 32768, 129),
(41710, 1115, 0, 0, 0, 1, 1, 726, 0, -5825.71, -1593.61, 361.923, 4.62512, 90, 10, 0, 156, 0, 1, 0, 32768, 129),
(41793, 1115, 0, 0, 0, 1, 1, 726, 0, -5746.46, -1610.85, 364.556, 1.17054, 90, 8, 0, 0, 0, 1, 0, 32768, 129),
(41864, 1115, 0, 0, 0, 1, 1, 726, 0, -5837.93, -1580.96, 362.362, 1.58825, 90, 7, 0, 156, 0, 1, 0, 32768, 129),
(42234, 1115, 0, 0, 0, 1, 1, 726, 0, -5538.07, -1698.77, 344.012, 3.52556, 90, 6, 0, 156, 0, 1, 0, 32768, 129),
(42288, 1115, 0, 0, 0, 1, 1, 726, 0, -5642.65, -1685.8, 361.015, 3.52556, 90, 5, 0, 156, 0, 1, 0, 32768, 129),
(42371, 1115, 0, 0, 0, 1, 1, 726, 0, -5848.77, -1542.13, 358.979, 2.00713, 90, 8, 0, 156, 0, 1, 0, 32768, 129),
(42485, 1115, 0, 0, 0, 1, 1, 726, 0, -5754.19, -1620.48, 359.143, 4.87689, 90, 9, 0, 0, 0, 1, 0, 32768, 129),
(42578, 1115, 0, 0, 0, 1, 1, 726, 0, -5779.49, -1699.82, 359.808, 3.05433, 90, 10, 0, 156, 0, 1, 0, 32768, 129),
(42719, 1115, 0, 0, 0, 1, 1, 726, 0, -5568.15, -1707.85, 371.814, 4.67748, 90, 0, 0, 156, 0, 0, 0, 32768, 129),
(42748, 1115, 0, 0, 0, 1, 1, 726, 0, -5827.25, -1541.12, 358.736, 2.22056, 90, 10, 0, 156, 0, 1, 0, 32768, 129),
(42795, 1115, 0, 0, 0, 1, 1, 726, 0, -5606.19, -1648.92, 353.126, 3.52556, 90, 9, 0, 156, 0, 1, 0, 32768, 129),
(42890, 1115, 0, 0, 0, 1, 1, 726, 0, -5818.26, -1594.84, 359.471, 5.3058, 90, 5, 0, 176, 0, 1, 0, 32768, 129),
(43054, 1115, 0, 0, 0, 1, 1, 726, 0, -5827.39, -1665.93, 359.306, 5.39807, 90, 0, 0, 176, 0, 0, 0, 32768, 129),
(43066, 1115, 0, 0, 0, 1, 1, 726, 0, -5802.22, -1644.48, 358.932, 0.011381, 90, 5, 0, 156, 0, 1, 0, 32768, 129),
(43158, 1115, 0, 0, 0, 1, 1, 726, 0, -5823.15, -1496.83, 359.949, 3.14159, 90, 7, 0, 176, 0, 1, 0, 32768, 129);

-- http://ru.wowhead.com/quest=433
DELETE FROM `conditions` WHERE `SourceEntry` = 77819;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 77819, 0, 0, 31, 1, 3, 41671, 0, 0, 0, 0, '', 'Give Rune of Return can target only Trapped Miner');
DELETE FROM `creature_text` WHERE `entry` = 41671;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(41671, 0, 0, 'I can''t wait to get home to my family. Thank you, stranger.', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 1, 'I thought I would die down here.', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 2, 'I thought they were going to tear me apart!', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 3, 'Light bless you, stranger. You''ve saved me!', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 4, 'Thank you!', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued'),
(41671, 0, 5, 'You''re the best thing I''ve seen since the troggs showed up!', 12, 0, 100, 0, 0, 0, 'Trapped Miner - rescued');
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 41671;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (41671, 4167100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(41671, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 17, 431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - on spawn - set emote state (431)'),
(41671, 0, 1, 0, 8, 0, 100, 1, 77819, 0, 0, 0, 80, 4167100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - on spell hit (77819) - run actionlist'),
(4167100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 17, 26, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - set emote state (26)'),
(4167100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - face player'),
(4167100, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 33, 41671, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - give quest credit (42224)'),
(4167100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - say text 0'),
(4167100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - play emote (2)'),
(4167100, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 6000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Miner - actionlist - despawn after 6 seconds');

DELETE FROM `creature` WHERE `id`=1689;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20835, 1689, 0, 0, 0, 1, 1, 193, 0, -5647.64, -1706.75, 399.858, 4.76323, 90, 7, 0, 198, 0, 1, 0, 0, 2048),
(20836, 1689, 0, 0, 0, 1, 1, 193, 0, -5515.14, -2061.55, 399.875, 2.84047, 90, 8, 0, 176, 0, 1, 0, 0, 2048),
(20837, 1689, 0, 0, 0, 1, 1, 193, 0, -5691.34, -2208.01, 425.751, 4.49489, 90, 7, 0, 198, 0, 1, 0, 0, 2048),
(20838, 1689, 0, 0, 0, 1, 1, 193, 0, -5710.71, -1796.51, 399.683, 2.44054, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(20839, 1689, 0, 0, 0, 1, 1, 193, 0, -5774.29, -2125.16, 401.258, 3.28071, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(20840, 1689, 0, 0, 0, 1, 1, 193, 0, -5719.55, -2118.54, 400.678, 6.09683, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(20841, 1689, 0, 0, 0, 1, 1, 193, 0, -5612.29, -2193.53, 419.006, 1.58837, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(20842, 1689, 0, 0, 0, 1, 1, 193, 0, -5027.46, -2192.86, 409.124, 3.77025, 90, 6, 0, 198, 0, 1, 0, 0, 2048),
(20843, 1689, 0, 0, 0, 1, 1, 193, 0, -5293.36, -2176.91, 422.537, 0.844094, 90, 10, 0, 176, 0, 1, 0, 0, 2048),
(20844, 1689, 0, 0, 0, 1, 1, 193, 0, -5584.09, -2128.52, 402.659, 3.01046, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(20845, 1689, 0, 0, 0, 1, 1, 193, 0, -5397.63, -2117.45, 400.724, 2.3922, 90, 7, 0, 176, 0, 1, 0, 0, 2048),
(42004, 1689, 0, 0, 0, 1, 1, 193, 0, -5608.44, -1829.84, 400.158, 1.58172, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(42066, 1689, 0, 0, 0, 1, 1, 193, 0, -5329.13, -2146.61, 418.337, 3.17824, 90, 13, 0, 176, 0, 1, 0, 0, 2048),
(42160, 1689, 0, 0, 0, 1, 1, 193, 0, -5446.55, -2147.1, 400.828, 2.53628, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(42197, 1689, 0, 0, 0, 1, 1, 193, 0, -5048.26, -2265.76, 400.721, 0.77762, 90, 11, 0, 176, 0, 1, 0, 0, 2048),
(42315, 1689, 0, 0, 0, 1, 1, 193, 0, -4999.4, -2148.31, 408.979, 4.81225, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(42452, 1689, 0, 0, 0, 1, 1, 193, 0, -5867.94, -1894.41, 411.499, 5.90703, 90, 11, 0, 198, 0, 1, 0, 0, 2048),
(42519, 1689, 0, 0, 0, 1, 1, 193, 0, -5128.79, -2314.59, 400.441, 1.31345, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(42685, 1689, 0, 0, 0, 1, 1, 193, 0, -5129.53, -2230.61, 401.022, 4.99767, 90, 12, 0, 176, 0, 1, 0, 0, 2048),
(42880, 1689, 0, 0, 0, 1, 1, 193, 0, -5767.99, -1926.19, 401.991, 3.23932, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(43114, 1689, 0, 0, 0, 1, 1, 193, 0, -5812.85, -2060.54, 401.105, 4.94314, 90, 9, 0, 198, 0, 1, 0, 0, 2048);

DELETE FROM `creature` WHERE `id`=41762;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20846, 41762, 0, 0, 0, 1, 1, 32579, 0, -5600.52, -1948.08, 396.319, 2.51209, 90, 10, 0, 166, 178, 1, 0, 0, 2048),
(20847, 41762, 0, 0, 0, 1, 1, 32579, 0, -5709.21, -1961.2, 396.498, 6.22957, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(20848, 41762, 0, 0, 0, 1, 1, 32579, 0, -5702.71, -1902.33, 399.123, 0.777111, 90, 10, 0, 186, 191, 1, 0, 0, 2048),
(20849, 41762, 0, 0, 0, 1, 1, 32579, 0, -5581.53, -1926.19, 396.414, 6.21111, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(20850, 41762, 0, 0, 0, 1, 1, 32579, 0, -5674.04, -1939.59, 396.486, 1.10513, 90, 9, 0, 186, 191, 1, 0, 0, 2048),
(20851, 41762, 0, 0, 0, 1, 1, 32579, 0, -5647.94, -2046.06, 396.444, 2.88567, 90, 8, 0, 186, 191, 1, 0, 0, 2048),
(20852, 41762, 0, 0, 0, 1, 1, 32579, 0, -5704.71, -2091.35, 401.123, 3.26002, 90, 12, 0, 186, 191, 1, 0, 0, 2048),
(20853, 41762, 0, 0, 0, 1, 1, 32579, 0, -5774.16, -1976.24, 400.975, 0.755768, 90, 11, 0, 166, 178, 1, 0, 0, 2048),
(20854, 41762, 0, 0, 0, 1, 1, 32579, 0, -5743.35, -1952.66, 399.748, 3.60349, 90, 11, 0, 186, 191, 1, 0, 0, 2048),
(20855, 41762, 0, 0, 0, 1, 1, 32579, 0, -5650.25, -1923.66, 396.486, 2.28562, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(20856, 41762, 0, 0, 0, 1, 1, 32579, 0, -5711.56, -2055.45, 396.498, 5.15548, 90, 8, 0, 166, 178, 1, 0, 0, 2048),
(20857, 41762, 0, 0, 0, 1, 1, 32579, 0, -5610.38, -1866.48, 399.544, 1.89871, 90, 10, 0, 166, 178, 1, 0, 0, 2048),
(41744, 41762, 0, 0, 0, 1, 1, 32579, 0, -5676.78, -1909.95, 396.486, 5.23345, 90, 11, 0, 186, 191, 1, 0, 0, 2048),
(41939, 41762, 0, 0, 0, 1, 1, 32579, 0, -5640.85, -1880.79, 396.498, 4.60662, 90, 9, 0, 186, 191, 1, 0, 0, 2048),
(42040, 41762, 0, 0, 0, 1, 1, 32579, 0, -5668.74, -1856.89, 400.408, 1.05819, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(42046, 41762, 0, 0, 0, 1, 1, 32579, 0, -5609.37, -2034.29, 396.304, 1.54004, 90, 8, 0, 166, 178, 1, 0, 0, 2048),
(42102, 41762, 0, 0, 0, 1, 1, 32579, 0, -5616.17, -1920.33, 396.392, 3.70987, 90, 9, 0, 186, 191, 1, 0, 0, 2048),
(42214, 41762, 0, 0, 0, 1, 1, 32579, 0, -5677.25, -1989.3, 396.486, 3.1358, 90, 7, 0, 166, 178, 1, 0, 0, 2048),
(42263, 41762, 0, 0, 0, 1, 1, 32579, 0, -5671.05, -2063.91, 396.754, 4.60475, 90, 9, 0, 166, 178, 1, 0, 0, 2048),
(42360, 41762, 0, 0, 0, 1, 1, 32579, 0, -5757.26, -2073.56, 398.373, 3.29372, 90, 8, 0, 186, 191, 1, 0, 0, 2048),
(42486, 41762, 0, 0, 0, 1, 1, 32579, 0, -5717.67, -1986.58, 396.498, 6.23255, 90, 10, 0, 166, 178, 1, 0, 0, 2048),
(42513, 41762, 0, 0, 0, 1, 1, 32579, 0, -5745.13, -2043.59, 396.498, 4.12352, 90, 11, 0, 166, 178, 1, 0, 0, 2048),
(42808, 41762, 0, 0, 0, 1, 1, 32579, 0, -5680.22, -2038.54, 396.386, 4.2695, 90, 10, 0, 166, 178, 1, 0, 0, 2048),
(42941, 41762, 0, 0, 0, 1, 1, 32579, 0, -5677.21, -1987.16, 396.486, 2.35949, 90, 9, 0, 186, 191, 1, 0, 0, 2048),
(43081, 41762, 0, 0, 0, 1, 1, 32579, 0, -5580.71, -2057.6, 396.391, 4.06533, 90, 12, 0, 166, 178, 1, 0, 0, 2048);

UPDATE `creature_template` SET `faction_A` = 189, `faction_H` = 189 WHERE `entry` = 41768;

UPDATE `creature_template` SET `mindmg` = 0, `maxdmg` = 0, `attackpower` = 0, `dmg_multiplier` = 0, `baseattacktime` = 0, `rangeattacktime` = 0, `unit_flags2` = 0, `minrangedmg` = 0, `maxrangedmg` = 0, `RegenHealth` = 0 WHERE `entry` = 41768;

DELETE FROM `creature` WHERE `id`=41768;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15461684, 41768, 0, 1, 212, 1, 1, 0, 1, -5735.7, -2054.2, 396.373, 5.90884, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461683, 41768, 0, 1, 212, 1, 1, 0, 1, -5744.85, -1994.2, 396.373, 4.25479, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461682, 41768, 0, 1, 212, 1, 1, 0, 1, -5715.14, -1960.79, 396.372, 0.338011, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461681, 41768, 0, 1, 212, 1, 1, 0, 1, -5699.87, -1999.37, 396.372, 3.7867, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461679, 41768, 0, 1, 212, 1, 1, 0, 1, -5659.4, -1886.01, 396.373, 0.859519, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461678, 41768, 0, 1, 212, 1, 1, 0, 1, -5715, -1960.61, 396.373, 4.00582, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461676, 41768, 0, 1, 212, 1, 1, 0, 1, -5656.02, -1934.01, 396.111, 2.11851, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461677, 41768, 0, 1, 212, 1, 1, 0, 1, -5687.03, -1926.98, 396.373, 3.18194, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461674, 41768, 0, 1, 212, 1, 1, 0, 1, -5654.47, -1995.35, 396.098, 2.49236, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461673, 41768, 0, 1, 212, 1, 1, 0, 1, -5666.23, -2033.77, 396.285, 3.10968, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461675, 41768, 0, 1, 212, 1, 1, 0, 1, -5664.65, -1957.04, 396.169, 1.64177, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461665, 41768, 0, 1, 212, 1, 1, 0, 1, -5614.18, -1931.91, 396.211, 3.90765, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461672, 41768, 0, 1, 212, 1, 1, 0, 1, -5636.35, -2033.2, 396.197, 2.20255, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461671, 41768, 0, 1, 212, 1, 1, 0, 1, -5618.13, -2052.54, 396.371, 4.09379, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461670, 41768, 0, 1, 212, 1, 1, 0, 1, -5598.4, -2018.35, 396.227, 3.21728, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461669, 41768, 0, 1, 212, 1, 1, 0, 1, -5564.15, -2025.19, 396.372, 4.35532, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461668, 41768, 0, 1, 212, 1, 1, 0, 1, -5567.47, -1975.71, 396.372, 5.83423, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461667, 41768, 0, 1, 212, 1, 1, 0, 1, -5604.27, -1969.4, 396.121, 5.89078, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461680, 41768, 0, 1, 212, 1, 1, 0, 1, -5627.07, -1906.33, 396.373, 5.56091, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461666, 41768, 0, 1, 212, 1, 1, 0, 1, -5614.18, -1931.94, 396.208, 2.97931, 300, 0, 0, 60, 0, 0, 0, 0, 0),
(15461664, 41768, 0, 1, 212, 1, 1, 0, 1, -5614.39, -1932.37, 396.197, 5.43053, 300, 0, 0, 60, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=6123;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(20858, 6123, 0, 0, 0, 1, 1, 25234, 0, -5877.58, -2012.25, 401.199, 3.40339, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(20859, 6123, 0, 0, 0, 1, 1, 4956, 0, -5892.99, -2013.9, 406.866, 4.61466, 90, 6, 0, 198, 0, 1, 0, 0, 2048),
(20860, 6123, 0, 0, 0, 1, 1, 3452, 0, -5827.77, -2025.19, 401.184, 0.277913, 90, 8, 0, 176, 0, 1, 0, 0, 2048),
(20861, 6123, 0, 0, 0, 1, 1, 4956, 0, -5883.26, -2056.69, 402.991, 5.72769, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(20862, 6123, 0, 0, 0, 1, 1, 3452, 0, -5874.59, -1986.28, 401.366, 3.61962, 90, 7, 0, 176, 0, 1, 0, 0, 2048),
(20863, 6123, 0, 0, 0, 1, 1, 25234, 0, -5880.11, -1941.12, 406.085, 4.1792, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(20864, 6123, 0, 0, 0, 1, 1, 4956, 0, -5905.99, -2038.17, 405.962, 2.14675, 90, 8, 0, 176, 0, 1, 0, 0, 2048),
(20865, 6123, 0, 0, 0, 1, 1, 4956, 0, -5827.49, -2060.28, 401.676, 4.08543, 90, 8, 0, 198, 0, 1, 0, 0, 2048),
(41729, 6123, 0, 0, 0, 1, 1, 7814, 0, -5905.02, -1972.28, 403.46, 0.49751, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(42143, 6123, 0, 0, 0, 1, 1, 4956, 0, -5854.67, -2046.05, 401.836, 3.29647, 90, 9, 0, 176, 0, 1, 0, 0, 2048),
(42235, 6123, 0, 0, 0, 1, 1, 4956, 0, -5851.71, -2004.32, 401.649, 2.96706, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(42414, 6123, 0, 0, 0, 1, 1, 4956, 0, -5816.49, -1958.17, 403.334, 1.44467, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(42601, 6123, 0, 0, 0, 1, 1, 7814, 0, -5846.9, -1963.6, 405.26, 4.81411, 90, 10, 0, 198, 0, 1, 0, 0, 2048),
(42639, 6123, 0, 0, 0, 1, 1, 7814, 0, -5862.42, -1925.81, 409.354, 1.82058, 90, 11, 0, 198, 0, 1, 0, 0, 2048),
(42792, 6123, 0, 0, 0, 1, 1, 7814, 0, -5911.45, -2018.16, 405.74, 2.6529, 90, 9, 0, 198, 0, 1, 0, 0, 2048),
(42993, 6123, 0, 0, 0, 1, 1, 3452, 0, -5916.7, -1997.3, 404.686, 2.84489, 90, 10, 0, 176, 0, 1, 0, 0, 2048);


DELETE FROM `creature` WHERE `id`=6124;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(18711, 6124, 0, 1, 716, 1, 1, 0, 1, -5920.6, -2034.27, 400.749, 3.25027, 300, 0, 0, 198, 0, 0, 0, 0, 0);

DELETE FROM creature_template WHERE entry in (532971,532972,532973,532974,532975,532976,532977,532978,532979,532980);
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `unit_flags`, `InhabitType`, `Health_mod`, `flags_extra`, `ScriptName`) VALUES
('532971','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532972','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532973','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532974','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532975','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532976','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532977','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532978','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532979','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532980','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper');

-- intering to the molten front --
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (208900, 22, 10637, 'Portal to the Firelands', '', '', '', 0, 32, 2.94, 0, 0, 0, 0, 0, 0, 99556, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

-- fix all quests point rewards --
UPDATE `quest_template` SET `RewardCurrencyCount1`='1' WHERE `RewardCurrencyId1`='392' AND `RewardCurrencyCount1`='100';
UPDATE `quest_template` SET `RewardCurrencyCount1`='1' WHERE `RewardCurrencyId1`='390' AND `RewardCurrencyCount1`='100';
UPDATE `quest_template` SET `RewardCurrencyCount1`='1' WHERE `RewardCurrencyId1`='395' AND `RewardCurrencyCount1`='100';
UPDATE `quest_template` SET `RewardCurrencyCount1`='1' WHERE `RewardCurrencyId1`='396' AND `RewardCurrencyCount1`='100';




-- molten front beautification --
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_firehawk', `unit_flags`='0', mindmg=619.2, maxdmg=835.2, dmg_multiplier=4.6 WHERE entry In (53245,53249);
UPDATE `creature_template` SET `mindmg`='1007', `maxdmg`='1354.7', `dmg_multiplier`='4.5' WHERE entry In (53249, 52552, 54322);
UPDATE `creature_template` SET `mindmg`='1007', `maxdmg`='1354.7', `dmg_multiplier`='2' WHERE entry In (52107,53245);
DELETE FROM smart_scripts WHERE entryorguid IN (53245,53249);


-- singed wings quest fix --
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1' WHERE entry In (53243);
DELETE FROM smart_scripts WHERE entryorguid IN (53243);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53243,0,0,0,64,0,100,0,0,0,0,0,33,53243,0,0,0,0,0,7,0,0,0,0,0,0,0,'molten front quests fix'),
(53243,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix');


-- How Hot quest fix --
UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`='128', `unit_flags`='33554432' WHERE entry In (53192,53191,53190);
DELETE FROM smart_scripts WHERE entryorguid IN (53192,53191,53190);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53192,0,0,0,1,0,100,0,0,0,0,0,33,53192,0,0,0,0,0,21,5,0,0,0,0,0,0,'molten front quests fix'),
(53191,0,0,0,1,0,100,0,0,0,0,0,33,53191,0,0,0,0,0,21,5,0,0,0,0,0,0,'molten front quests fix'),
(53190,0,0,0,1,0,100,0,0,0,0,0,33,53190,0,0,0,0,0,21,5,0,0,0,0,0,0,'molten front quests fix');


-- How Hot quest fix --
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1' WHERE entry In (53275);
DELETE FROM smart_scripts WHERE entryorguid IN (53275);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53275,0,0,0,64,0,100,0,0,0,0,0,56,69845,1,0,0,0,0,7,0,0,0,0,0,0,0,'molten front quests fix'),
(53275,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix');



-- Hounds of shannox quest fix --
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE item In (69816);


-- Wisp Away quest fix --
UPDATE `creature_template` SET `AIName`='' WHERE entry In (54429);
DELETE FROM smart_scripts WHERE entryorguid IN (54429,53083);
UPDATE creature_template SET minlevel=85, maxlevel=85, exp=3, faction_A=2204, faction_H=2204, mindmg=1007, maxdmg=1354.7, AIName='SmartAI' WHERE entry in (53083);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53083,0,0,0,11,0,100,0,0,0,0,0,53,0,530830,0,29143,2000,0,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53083,0,1,0,40,0,100,0,4,530830,0,0,70,2,0,0,0,0,0,20,208899,20,0,0,0,0,0,'molten front quests fix'),
(53083,0,2,0,40,0,100,0,4,530830,0,0,33,52531,0,0,0,0,0,21,20,0,0,0,0,0,0,'molten front quests fix');

DELETE FROM waypoints WHERE entry in (530830);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('530830','1','1045.67','366.08','39.37','Hyjal Wisp waypoint'),
('530830','2','1107.62','360.68','20.63','Hyjal Wisp waypoint'),
('530830','3','1133.77','360.87','16.68','Hyjal Wisp waypoint'),
('530830','4','1194.78','404.108','16.0372','Hyjal Wisp waypoint');



-- Breach in the Defenses quest fix --
UPDATE `creature_template` SET `AIName`='SmartAI', `mindmg`='1007', `maxdmg`='1354.7', `modelid1`='38152', `modelid2`='0', `unit_flags`='4', `unit_flags2`='0', `dynamicflags`='0', `scale`='0.3' WHERE entry In (52633);
DELETE FROM smart_scripts WHERE entryorguid IN (52633);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(52633,0,0,0,9,0,100,0,3,100,4000,5000,11,97306,0,0,0,0,0,2,0,0,0,0,0,0,0,'molten front fix');


-- Some Like It Hot quest fix --
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE entry In (53240);
DELETE FROM smart_scripts WHERE entryorguid IN (53240);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53240,0,0,0,0,0,100,0,0,0,100000,100000,33,53263,0,0,0,0,0,21,5,0,0,0,0,0,0,'molten front quests fix');



-- Burn Victims quest fix --
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE entry In (52834);
DELETE FROM smart_scripts WHERE entryorguid IN (52834);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(52834,0,0,0,8,0,100,0,97670,0,0,0,33,52834,0,0,0,0,0,7,0,0,0,0,0,0,0,'molten front quests fix'),
(52834,0,1,0,8,0,100,0,97670,0,0,0,41,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'molten front quests fix');



-- Into the Fire quest fix --
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE entry In (52490);
DELETE FROM smart_scripts WHERE entryorguid IN (52490);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(52490,0,0,0,1,0,100,0,0,0,0,0,33,53218,0,0,0,0,0,21,20,0,0,0,0,0,0,'molten front quests fix');


-- The Forlorn Spire quest fix --
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE entry In (52921);
DELETE FROM smart_scripts WHERE entryorguid IN (52921);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(52921,0,0,0,1,0,100,0,0,0,0,0,33,53012,0,0,0,0,0,21,10,0,0,0,0,0,0,'molten front quests fix');


-- Into the Depths quest fix --
UPDATE `creature_template` SET `mindmg`='1007', `maxdmg`='1354.7', `dmg_multiplier`='4.5', `unit_flags`='0' WHERE entry In (54321);
UPDATE `creature_template` SET `mindmg`='1007', `maxdmg`='1354.7', `dmg_multiplier`='7', `unit_flags`='0' WHERE entry In (53366);


-- Living Obsidium quest fix --
DELETE FROM gameobject_loot_template WHERE entry in (208672,208587,208576);
INSERT INTO `gameobject_loot_template`(`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES 
(208672,69807,-100,1,0,1,1),
(208587,69807,-100,1,0,1,1),
(208576,69807,-100,1,0,1,1);


-- Rage Against the Flames quest fix --
UPDATE quest_template SET ObjectiveText1 = 'Invader from the Firelands slain' , ZoneOrSort = -379 , RequiredNpcOrGo1 = 52816 , RequiredNpcOrGo2 = 0 , RequiredNpcOrGo3 = 0 , RequiredNpcOrGo4 = 0 , RequiredNpcOrGoCount1 = 9 , RequiredNpcOrGoCount2 = 0 , RequiredNpcOrGoCount3 = 0 , RequiredNpcOrGoCount4 = 0 WHERE id IN (29163);


UPDATE quest_template SET RewardCurrencyId1 = 416 , RewardCurrencyCount1 = 1 WHERE id IN (29147,29164,29101,29161,29125);

-- Call the Flock quest fix --
UPDATE quest_template SET ObjectiveText1 = 'Alpine Songbird gathered' , ObjectiveText2 = 'Forest Owl gathered' , ObjectiveText3 = 'Goldwing Hawk gathered' , RequiredNpcOrGo1 = 52595 , RequiredNpcOrGo2 = 52596 , RequiredNpcOrGo3 = 52594 , RequiredNpcOrGo4 = 0 , RequiredNpcOrGoCount1 = 12 , RequiredNpcOrGoCount2 = 5 , RequiredNpcOrGoCount3 = 2 , RequiredNpcOrGoCount4 = 0 , Level = 85 , MinLevel = 85 , MaxLevel = 85 WHERE id IN (29147);
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1', IconName='LootAll' WHERE entry IN (52595,52596,52594);
DELETE FROM smart_scripts WHERE entryorguid IN (52595,52596,52594);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(52595,0,0,0,64,0,100,0,0,0,0,0,33,52595,0,0,0,0,0,7,0,0,0,0,0,0,0,'molten front quests fix'),
(52595,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix'),
(52596,0,0,0,64,0,100,0,0,0,0,0,33,52596,0,0,0,0,0,7,0,0,0,0,0,0,0,'molten front quests fix'),
(52596,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix'),
(52594,0,0,0,64,0,100,0,0,0,0,0,33,52594,0,0,0,0,0,7,0,0,0,0,0,0,0,'molten front quests fix'),
(52594,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix');

-- Perfecting Your Howl quest fix --
UPDATE quest_template SET RequiredSpellCast1 = 0 ,RequiredNpcOrGo1 = 100001 , RequiredNpcOrGo2 = 0 , RequiredNpcOrGo3 = 0 , RequiredNpcOrGo4 = 0 , RequiredNpcOrGoCount1 = 10 , RequiredNpcOrGoCount2 = 0 , RequiredNpcOrGoCount3 = 0 , RequiredNpcOrGoCount4 = 0 WHERE id IN (29164);
DELETE FROM creature_template WHERE entry IN (100001);
INSERT INTO creature_template (entry, modelid1, name, minlevel, maxlevel, exp, faction_A, faction_H, maxgold, AIName, flags_extra) VALUES 
('100001', '4449', 'Howl atop invader corpse kill credit', '83', '83', '3', '35', '35', '100', 'SmartAI', '128');
DELETE FROM smart_scripts WHERE entryorguid IN (100001);
UPDATE creature_template SET KillCredit2 = 100001 WHERE entry in (52791,46910,46911,40336); --
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='0' WHERE entry In (52791,46910,46911,40336);



-- Punting Season quest fix --
UPDATE quest_template SET ObjectiveText1 = 'Child of Tortolla punted into water' , RequiredNpcOrGo1 = 52208 , RequiredNpcOrGo2 = 0 , RequiredNpcOrGo3 = 0 , RequiredNpcOrGo4 = 0 , RequiredNpcOrGoCount1 = 5 , RequiredNpcOrGoCount2 = 0 , RequiredNpcOrGoCount3 = 0 , RequiredNpcOrGoCount4 = 0 WHERE id IN (29101);
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1' WHERE entry In (52208);
DELETE FROM smart_scripts WHERE entryorguid IN (52208);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(52208,0,0,0,64,0,100,0,0,0,0,0,33,52208,0,0,0,0,0,7,0,0,0,0,0,0,0,'molten front quests fix'),
(52208,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix');

-- Those Bears Up There quest fix --
UPDATE quest_template SET ObjectiveText1 = 'Hyjal Bear Cubs chucked to safety' , RequiredNpcOrGo1 = 40240 , RequiredNpcOrGo2 = 0 , RequiredNpcOrGo3 = 0 , RequiredNpcOrGo4 = 0 , RequiredNpcOrGoCount1 = 6 , RequiredNpcOrGoCount2 = 0 , RequiredNpcOrGoCount3 = 0 , RequiredNpcOrGoCount4 = 0 WHERE id IN (29161);
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1' WHERE entry In (40240);
DELETE FROM smart_scripts WHERE entryorguid IN (40240);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(40240,0,0,0,64,0,100,0,0,0,0,0,33,40240,0,0,0,0,0,7,0,0,0,0,0,0,0,'molten front quests fix'),
(40240,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix');

-- Between the Trees quest fix --
UPDATE quest_template SET ObjectiveText1 = 'Spirit of Malorne captured' , RequiredNpcOrGo1 = 52176 , RequiredNpcOrGo2 = 0 , RequiredNpcOrGo3 = 0 , RequiredNpcOrGo4 = 0 , RequiredNpcOrGoCount1 = 3 , RequiredNpcOrGoCount2 = 0 , RequiredNpcOrGoCount3 = 0 , RequiredNpcOrGoCount4 = 0 WHERE id IN (29125);
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='0', `unit_flags`='0', `unit_flags2`='2048', `type_flags`='0', `faction_A`='35', `faction_H`='35' WHERE entry In (52176);
DELETE FROM smart_scripts WHERE entryorguid IN (521760);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(521760,0,0,0,1,0,100,0,0,0,0,0,33,52176,0,0,0,0,0,21,5,0,0,0,0,0,0,'molten front quests fix'),
(521760,0,1,0,1,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix');
DELETE FROM creature_template WHERE entry=521760;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `modelid1`, `name`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `AIName`) VALUES
('521760','52176','29029','Spirit of Malorne','85','85','3','35','35','SmartAI');
UPDATE creature SET id=521760 WHERE id=52176;

-- Phase one
-- Phase one
-- Phase one
-- Phase one
-- Phase one
-- Phase one
DELETE FROM gameobject_questrelation WHERE quest=29388;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
('206109','29388'),
('206116','29388'),
('207323','29388'),
('207324','29388');
UPDATE quest_template SET NextQuestId=29145 WHERE Id=29388;
UPDATE quest_template SET NextQuestId=29195 WHERE Id=29145;
UPDATE quest_template SET PrevQuestId=29145, NextQuestId=29196 WHERE Id=29195;
UPDATE quest_template SET PrevQuestId=29195, NextQuestId=29197 WHERE Id=29196;
UPDATE quest_template SET PrevQuestId=29196, NextQuestId=29198 WHERE Id=29197;
UPDATE quest_template SET PrevQuestId=29197 WHERE Id=29198;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29123;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29149;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29127;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29163;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29166;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29125;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29147;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29164;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29101;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29161;
UPDATE quest_template SET PrevQuestId=29198 WHERE Id=29199;

UPDATE creature_template SET AIName='', ScriptName='npc_arch_druid_hamuul_runetotem' WHERE entry in (52838);
UPDATE quest_template SET  RequiredNpcOrGo1 = 52863 , RequiredNpcOrGoCount1 = 1 WHERE id=29195;
UPDATE creature_template SET AIName='', ScriptName='npc_leyara', Health_mod=70, Mana_mod=10, faction_A=2371, faction_H=2371, mechanic_immune_mask=33554432 WHERE entry in (52863);
DELETE FROM creature WHERE id IN (52863);
UPDATE quest_template SET  RequiredNpcOrGo1 = 52906 , RequiredNpcOrGoCount1 = 6, RequiredNpcOrGo2 = 52907 , RequiredNpcOrGoCount2 = 6, RequiredNpcOrGo3 = 52903 , RequiredNpcOrGoCount3 = 6 WHERE id=29197;
UPDATE quest_template SET  RequiredNpcOrGo1 = 52845 , RequiredNpcOrGoCount1 = 1 WHERE id=29198;
UPDATE creature_template SET AIName='', ScriptName='npc_elderlimb' WHERE entry in (52906);
UPDATE creature_template SET AIName='', ScriptName='npc_thisalee_crow' WHERE entry in (52907);
UPDATE creature_template SET AIName='', ScriptName='npc_tholo_whitehoof' WHERE entry in (52903);
UPDATE creature_template SET AIName='', ScriptName='npc_melfurion_stormrage' WHERE entry in (52845);
UPDATE quest_template SET RewardCurrencyId1=416, RewardCurrencyCount1=6 WHERE id=29197;
UPDATE quest_template SET RewardCurrencyId1=416, RewardCurrencyCount1=10 WHERE id=29198;
-- Phase two
-- Phase two
-- Phase two
-- Phase two
-- Phase two
-- Phase two
UPDATE creature SET phaseMask=2 WHERE id=52953;
DELETE FROM creature WHERE id IN (52845,52858,52838,52669,52902);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('15462741','52669','1','0','0','1','1','31626','0','4424.42','-2082.76','1210.75','5.60251','300','0','0','1','1','0','0','0','0'),
('15462742','52838','1','0','0','1','1','31605','0','5125.25','-1758.53','1334.55','3.42085','300','0','0','1','1','0','0','0','0'),
('15462743','52838','1','0','0','1','1','31605','0','4653','-2078.98','1231.42','3.44762','300','0','0','1','1','0','0','0','0'),
('15462744','52845','1','0','0','1','1','35095','0','4417.44','-2081.68','1210.7','5.72578','300','0','0','1','1','0','0','0','0'),
('15462745','52858','1','0','0','1','1','31605','0','4417.22','-2080.25','1210.4','5.68977','300','0','0','1','1','0','0','0','0'),
('15462746','52902','1','0','0','1','1','38656','0','4411.39','-2071.62','1213.87','5.55015','300','0','0','1','1','0','0','0','0');
DELETE FROM creature WHERE id IN (52749,52383,52766,52649,52399);

DELETE FROM gameobject WHERE id IN (301106,301104,208899);
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('301106','1','616','4861','1','1','4922.47','-1486.18','1330.89','3.95436','0','0','0.918556','-0.395292','300','0','1'),
('208899','1','616','4861','1','1','4602.65','-2707.01','1145.36','2.20309','0','0','0.891906','0.45222','300','0','0'),
('208899','1','0','0','1','1','4920.81','-1486.28','1327.95','5.5676','0','0','0','1','120','255','0'),
('208899','861','5733','5739','1','1','1194.78','404.108','16.0372','3.77843','0','0','0.949732','-0.313065','300','0','0'),
('301104','1','616','4861','1','1','4602.65','-2707.01','1145.36','2.20309','0','0','0.891906','0.45222','300','0','1');

-- pool molten front --
DELETE FROM pool_template WHERE entry in (100000,100001);
INSERT INTO `pool_template`(`entry`,`max_limit`,`description`) VALUES 
(100000,1,'moltenfront phase2'),
(100001,1,'moltenfront phase2');

DELETE FROM pool_quest WHERE entry in (29123,29149,29127,29163,29166,29247,29246,29248);
INSERT INTO `pool_quest`(`entry`,`pool_entry`,`description`) VALUES 
(29123,100000,'Rage Against the Flames'),
(29149,100000,'Rage Against the Flames'),
(29127,100000,'Rage Against the Flames'),
(29163,100000,'Rage Against the Flames'),
(29166,100000,'Supplies for the Other Side'),
(29247,100000,'Treating the Wounds'),
(29246,100000,'Relieving the Pain'),
(29248,100000,'Releasing the Pressure');

DELETE FROM pool_quest WHERE entry in (29147,29164,29101,29161,29125);
INSERT INTO `pool_quest`(`entry`,`pool_entry`,`description`) VALUES 
(29147,100001,'Call the Flock'),
(29164,100001,'Perfecting Your Howl'),
(29101,100001,'Punting Season'),
(29161,100001,'Those Bears Up There'),
(29125,100001,'Between the Trees');
UPDATE quest_template SET RewardCurrencyId1 = 416 , RewardCurrencyCount1 = 1 WHERE id IN (29123,29149,29127,29163,29166);
UPDATE quest_template SET Title = 'Perfecting Your Howl' WHERE id IN (29164);
UPDATE quest_template SET Title = 'Those Bears Up There' WHERE id IN (29161);
UPDATE quest_template SET NextQuestId=29126 WHERE Id=29125;
UPDATE quest_template SET NextQuestId=29148 WHERE Id=29147;
UPDATE quest_template SET NextQuestId=29165 WHERE Id=29164;
UPDATE quest_template SET NextQuestId=29122 WHERE Id=29101;
UPDATE quest_template SET NextQuestId=29162 WHERE Id=29161;
UPDATE quest_template SET PrevQuestId=29125 WHERE Id=29126;
UPDATE quest_template SET PrevQuestId=29147 WHERE Id=29148;
UPDATE quest_template SET PrevQuestId=29164 WHERE Id=29165;
UPDATE quest_template SET PrevQuestId=29101 WHERE Id=29122;
UPDATE quest_template SET PrevQuestId=29161 WHERE Id=29162;
UPDATE quest_template SET NextQuestId=29200 WHERE Id=29199;
UPDATE quest_template SET PrevQuestId=29199, NextQuestId=29201 WHERE Id=29200;
UPDATE quest_template SET PrevQuestId=29200 WHERE Id=29201;

-- achievements --
--  And the Meek Shall Inherit Kalimdor --
UPDATE creature_template SET AIName='', ScriptName='npc_bear_cub' WHERE entry in (40240);
UPDATE creature_template SET AIName='SmartAI', ScriptName='', unit_flags=32768, npcflag=1 WHERE entry in (39998);
UPDATE creature_template SET AIName='', ScriptName='npc_squirrel', IconName='LootAll', unit_flags=33587200, npcflag=0 WHERE entry in (52195);
UPDATE creature_template SET AIName='', ScriptName='npc_child_of_tortolla', IconName='LootAll' WHERE entry in (52177,52208);

--  Ludicrous Speed --
UPDATE creature SET spawndist=50, MovementType=1 WHERE id IN (52595,52596,52594);
UPDATE creature SET position_z=1340 WHERE id IN (52595,52596,52594) AND position_z < 1340;
UPDATE creature SET position_z=1334 WHERE id IN (52595,52596,52594) AND position_z > 1340;

UPDATE creature_template SET AIName='', ScriptName='npc_alpine_songbird', HoverHeight=1, npcflag=0, faction_A=2252, faction_H=2252, unit_flags=33587200 WHERE entry in (52595);
UPDATE creature_template SET AIName='', ScriptName='npc_forest_owl', HoverHeight=1, npcflag=0, faction_A=2252, faction_H=2252, unit_flags=33587200 WHERE entry in (52596);
UPDATE creature_template SET AIName='', ScriptName='npc_goldwing_hawk', HoverHeight=1, npcflag=0, faction_A=2252, faction_H=2252, unit_flags=33587200 WHERE entry in (52594);

--  Infernal Ambassadors --
DELETE FROM item_script_names WHERE id IN (69232,69225,69212,68997);
INSERT INTO `item_script_names` (`Id`, `ScriptName`) VALUES
('69232','item_emerald_of_aessina'),
('69225','item_fang_of_the_wolf'),
('69212','item_quill_of_the_bird_queen'),
('68997','item_guardians_staff');

UPDATE creature_template SET AIName='', ScriptName='npc_pyrachnis', mindmg=619.2, maxdmg=835.2, dmg_multiplier=4.6, Health_mod=3, Mana_mod=20.2 WHERE entry in (52749);
UPDATE creature_template SET AIName='', ScriptName='npc_tooga' WHERE entry in (52425);
UPDATE creature_template SET AIName='', ScriptName='npc_nemesis', mindmg=1007, maxdmg=1354.7, dmg_multiplier=4.6, Health_mod=5.99017 WHERE entry in (52383);
UPDATE creature_template SET AIName='', ScriptName='npc_lylagar', Health_mod=4, Mana_mod=10 WHERE entry in (52766);
UPDATE creature_template SET AIName='', ScriptName='npc_millagazor', mindmg=619.2, maxdmg=835.2, dmg_multiplier=4.6, Health_mod=6, Mana_mod=2.02 WHERE entry in (52649);
UPDATE creature_template SET AIName='', ScriptName='npc_galenges', Health_mod=20.3666 WHERE entry in (52399);

UPDATE quest_template SET  RequiredNpcOrGo1 = 52649 , RequiredNpcOrGoCount1 = 1 WHERE id=29148;
UPDATE quest_template SET  RequiredNpcOrGo1 = 52399 , RequiredNpcOrGoCount1 = 1 WHERE id=29126;

--  phase2 last quest lines --
UPDATE quest_template SET RewardHonorMultiplier=1, RequiredCurrencyId1=416, RequiredCurrencyCount1=20 WHERE id=29199;

UPDATE creature_template SET AIName='', ScriptName='npc_leyara2' WHERE entry in (53014);
UPDATE quest_template SET RewardCurrencyId1=416, RewardCurrencyCount1=15 WHERE id=29201;

-- Phase three
-- Phase three
-- Phase three
-- Phase three
-- Phase three
-- Phase three
--  phase3 quest chains --
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29247;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29246;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29248;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29138;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29179;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29128;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29304;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29141;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29142;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29137;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29139;
UPDATE quest_template SET PrevQuestId=29201 WHERE Id=29143;

--  phase3 pool quest --
DELETE FROM pool_template WHERE entry in (100002,100003,100004);
INSERT INTO `pool_template`(`entry`,`max_limit`,`description`) VALUES 
(100002,1,'moltenfront phase3'),
(100003,1,'moltenfront phase3'),
(100004,1,'moltenfront phase3');

DELETE FROM pool_quest WHERE entry in (29138,29179,29128,29304,29141,29142,29137,29139,29143);
INSERT INTO `pool_quest`(`entry`,`pool_entry`,`description`) VALUES 
(29138,100002,'Burn Victims'),
(29179,100002,'Hostile Elements'),
(29128,100002,'The Protectors of Hyjal'),
(29304,100003,'The Dogs of War'),
(29141,100003,'The Harder They Fall'),
(29142,100003,'Traitors Return'),
(29137,100003,'Breach in the Defenses'),
(29139,100004,'Aggressive Growth'),
(29143,100004,'Wisp Away');

--  phase3 beautification --
DELETE FROM creature WHERE id IN (53080);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('15462747','53080','861','0','0','1','1','32487','0','987.644','375.648','38.6421','2.40855','300','0','0','387450','0','0','0','0','0');

--  phase3 fixes --
UPDATE quest_template SET RewardCurrencyId1=416, RewardCurrencyCount1=1 WHERE id IN (29247,29246,29248);
UPDATE creature_template SET mindmg=619.2, maxdmg=835.2, dmg_multiplier=4.6, Health_mod=10, Mana_mod=6.06 WHERE entry in (52289);

UPDATE creature_template SET unit_flags=33284 WHERE entry in (52834);
UPDATE creature SET MovementType=0 WHERE id IN (52834);
DELETE FROM creature_template_addon WHERE entry in (52834);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('52834','0','0','7','0','65','');

UPDATE creature_template SET Health_mod=2 WHERE entry in (54339);
UPDATE creature_template SET AIName='', ScriptName='npc_molten_behemoth', mindmg=1007, maxdmg=1007, dmg_multiplier=4.6, Health_mod=4, Mana_mod=1 WHERE entry in (52552);
UPDATE creature_template SET AIName='', ScriptName='npc_rayne_feathersong' WHERE entry in (52467);

DELETE FROM creature_involvedrelation WHERE quest in (29181,29214);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('52493','29214'),
('52490','29181');
UPDATE quest_template SET maxlevel=85, RequiredCurrencyId1=416, RequiredCurrencyCount1=150 WHERE id IN (29181,29214);
UPDATE quest_template SET maxlevel=85, RequiredCurrencyId1=416, RequiredCurrencyCount1=125 WHERE id IN (29279,29281,29283);
UPDATE creature_template SET AIName='', ScriptName='npc_currency_required_quest_taker' WHERE entry in (52490,52493);

-- achievements --
-- Have... Have We Met? --
UPDATE creature_template SET minlevel=85, maxlevel=85 WHERE entry in (52233,52261,52244,52265,52238,53427);
DELETE FROM creature WHERE id IN (52233,52261,52244,52265,52238,53427);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('52233','1','616','5087','1','1','0','1','4180.26','-2333.75','1146.92','2.06526','300','0','0','126','0','0','0','0','0'),
('52238','1','616','5087','1','1','0','1','4000.66','-2207.02','1132.05','5.3223','300','0','0','126','0','0','0','0','0'),
('52244','1','616','5087','1','1','0','1','4039.73','-2271.06','1132.15','1.57673','300','0','0','42','0','0','0','0','0'),
('52261','1','616','5087','1','1','0','1','3942.43','-2207.39','1125.25','5.62311','300','0','0','42','0','0','0','0','0'),
('52265','1','616','5087','1','1','0','1','4085.84','-2223.86','1146.71','3.87482','300','0','0','42','0','0','0','0','0'),
('53427','1','616','5087','1','1','0','1','4124.21','-2281.54','1132.5','4.4992','300','0','0','126','0','0','0','0','0');

-- Gang War --
DELETE FROM spell_area WHERE spell=96543;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
('96543','5087','29128','0','0','0','0','2','1','10','1');

-- The Fiery Lords of SEThria's Roost --
DELETE FROM creature WHERE id IN (53264);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('53264','1','616','5087','1','1','0','1','3481.09','-2355.24','967.757','4.4112','300','10','0','40','13506','1','0','0','0');

UPDATE creature_template SET `AIName`='SmartAI', minlevel=86, maxlevel=86, exp=3, mindmg=643.2, maxdmg=838.8, dmg_multiplier=4.6, Health_mod=40, Mana_mod=6.06 WHERE entry in (53264);
UPDATE creature_template SET `AIName`='SmartAI', minlevel=86, maxlevel=86, exp=3, mindmg=643.2, maxdmg=838.8, dmg_multiplier=4.6, Health_mod=35, Mana_mod=6.06 WHERE entry in (53267);
UPDATE creature_template SET `AIName`='SmartAI', minlevel=86, maxlevel=86, exp=3, mindmg=643.2, maxdmg=838.8, dmg_multiplier=4.6, Health_mod=25, Mana_mod=6.06 WHERE entry in (53265);
UPDATE creature_template SET `AIName`='SmartAI', minlevel=86, maxlevel=86, exp=3, mindmg=643.2, maxdmg=838.8, dmg_multiplier=4.6, Health_mod=35, Mana_mod=6.06 WHERE entry in (53271);
DELETE FROM smart_scripts WHERE entryorguid IN (53264,53267,53265,53271);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53264,0,0,0,0,0,100,0,3000,5000,20000,20000,11,96693,0,0,0,0,0,2,0,0,0,0,0,0,0,'molten front fix'),
(53264,0,1,0,0,0,100,0,7000,10000,20000,20000,11,15616,0,0,0,0,0,2,0,0,0,0,0,0,0,'molten front fix'),
(53264,0,2,0,0,0,100,0,15000,18000,20000,20000,11,98716,0,0,0,0,0,2,0,0,0,0,0,0,0,'molten front fix'),
(53264,0,3,0,0,0,100,0,25000,28000,20000,20000,11,98716,0,0,0,0,0,2,0,0,0,0,0,0,0,'molten front fix'),
(53267,0,0,0,0,0,100,0,2000,3000,5000,7000,11,98711,0,0,0,0,0,2,0,0,0,0,0,0,0,'molten front fix'),
(53265,0,0,0,0,0,100,0,2000,3000,5000,7000,11,98701,0,0,0,0,0,2,0,0,0,0,0,0,0,'molten front fix'),
(53265,0,1,0,0,0,100,0,7000,10000,20000,30000,11,3149,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front fix'),
(53265,0,2,0,2,0,100,0,0,20,120000,120000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front fix'),
(53271,0,0,0,0,0,100,0,5000,7000,15000,20000,11,98719,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front fix');

-- King of the Spider-Hill --
-- INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES('97959','spell_entangling_net');
UPDATE creature_template SET `AIName`='', ScriptName='npc_cinderweb_spinner2', unit_flags=32772 WHERE entry in (52981);
DELETE FROM creature_template WHERE entry in (529810);
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `faction_A`, `faction_H`, `flags_extra`, `ScriptName`) VALUES
('529810','1126','achievement helper','35','35','128','npc_Achievement_helper');
DELETE FROM creature WHERE id IN (529810);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('529810','861','5733','5743','1','65535','0','1','1250.56','150.975','115.685','4.82111','300','0','0','42','0','0','0','0','0');

-- Fireside Chat --
UPDATE creature_template SET `AIName`='', ScriptName='npc_fireside_chat' WHERE entry in (52921,53259,52824,52134,52986,52669);
UPDATE creature_template SET `npcflag`=1 WHERE entry in (52907);
UPDATE creature_template SET `unit_flags`=33280 WHERE entry in (52921);

-- Phase four
-- Phase four
-- Phase four
-- Phase four
-- Phase four
-- Phase four
--  phase4 quest chains --
UPDATE quest_template SET PrevQuestId=29201, NextQuestId=29182 WHERE Id=29181;
UPDATE quest_template SET PrevQuestId=29181, NextQuestId=29281 WHERE Id=29182;
UPDATE quest_template SET PrevQuestId=29272 WHERE Id=29274;
UPDATE quest_template SET PrevQuestId=29272 WHERE Id=29273;
UPDATE quest_template SET PrevQuestId=29182 WHERE Id=29272;
UPDATE quest_template SET PrevQuestId=29182 WHERE Id=29206;
UPDATE quest_template SET PrevQuestId=29206 WHERE Id=29265;
UPDATE quest_template SET PrevQuestId=29206 WHERE Id=29264;
UPDATE quest_template SET PrevQuestId=29206 WHERE Id=29293;
UPDATE quest_template SET PrevQuestId=29206 WHERE Id=29296;
UPDATE quest_template SET PrevQuestId=29206 WHERE Id=29290;
UPDATE quest_template SET PrevQuestId=29206 WHERE Id=29287;
UPDATE quest_template SET PrevQuestId=29206 WHERE Id=29288;
UPDATE quest_template SET PrevQuestId=29206 WHERE Id=29289;

--  phase4 pool quest --
DELETE FROM pool_template WHERE entry in (100005,100006,100007);
INSERT INTO `pool_template`(`entry`,`max_limit`,`description`) VALUES 
(100005,1,'moltenfront phase4'),
(100006,1,'moltenfront phase4'),
(100007,1,'moltenfront phase4');

DELETE FROM pool_quest WHERE entry in (29265,29264,29293,29296,29290,29287,29288,29289);
INSERT INTO `pool_quest`(`entry`,`pool_entry`,`description`) VALUES 
(29265,100005,'Fire Flowers'),
(29264,100005,'Flamewakers of the Molten Flow'),
(29293,100006,'Singed Wings'),
(29296,100006,'Territorial Birds'),
(29290,100007,'Fire in the Skies'),
(29287,100007,'Peaked Interest'),
(29288,100007,'Starting Young'),
(29289,100007,'Mothers Malice');

--  phase4 fixes --
DELETE FROM creature_questrelation WHERE quest in (29182,29215);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
('52490','29182'),
('52493','29215');
UPDATE quest_template SET RewardCurrencyId1=416, RewardCurrencyCount1=5 WHERE id=29272;
DELETE FROM creature WHERE id IN (53233);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('53233','861','5733','5749','1','65535','0','1','1444.62','323.376','45.578','2.86749','300','0','0','36865','7988','0','0','0','0');

UPDATE creature_template SET flags_extra=128, unit_flags=33555206, type_flags=0, modelid1=11686 WHERE entry in (53213,52948,53212,54038,54036,54040,54039,54037,54041,52692,52693,52186);
UPDATE creature_template_addon SET auras=97921 WHERE entry in (53213,52948,53212);
UPDATE creature_template_addon SET auras=100610 WHERE entry in (54038);
UPDATE creature_template_addon SET auras=100608 WHERE entry in (54036,54039,54037);

-- Need... Water... Badly... --
UPDATE creature_template SET exp=3, InhabitType=1, HoverHeight=0, AIName='SmartAI' WHERE entry in (53233);
DELETE FROM smart_scripts WHERE entryorguid IN (53233);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53233,0,0,0,19,0,100,0,29272,0,0,0,53,1,532330,0,29272,2000,1,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53233,0,1,0,40,0,100,0,9,532330,0,0,33,53234,0,0,0,0,0,21,20,0,0,0,0,0,0,'molten front quests fix');

DELETE FROM waypoints WHERE entry in (532330);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('532330','1','1444.62','323.37','45.58','Anren Shadowseeker waypoint'),
('532330','2','1413.08','333.2','37.64','Anren Shadowseeker waypoint'),
('532330','3','1340.56','398.04','22.45','Anren Shadowseeker waypoint'),
('532330','4','1280.85','423.62','22.8','Anren Shadowseeker waypoint'),
('532330','5','1239.98','429.82','22.69','Anren Shadowseeker waypoint'),
('532330','6','1194.78','404.108','16.0372','Anren Shadowseeker waypoint'),
('532330','7','1133.77','360.87','16.68','Anren Shadowseeker waypoint'),
('532330','8','1107.62','360.68','20.63','Anren Shadowseeker waypoint'),
('532330','9','1045.67','366.08','39.37','Anren Shadowseeker waypoint');

UPDATE creature SET modelid=0 WHERE id=52633;
UPDATE `creature_template` SET `AIName`='', ScriptName='npc_emberspit_scorpion' WHERE entry In (53240);

-- Into the Fire --
UPDATE creature_template SET AIName='SmartAI', npcflag=1 WHERE entry in (53355,53217);
DELETE FROM smart_scripts WHERE entryorguid IN (53355,53217);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53355,0,0,0,64,0,100,0,0,0,0,0,53,1,533550,0,29206,2000,1,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53355,0,1,0,64,0,100,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53355,0,2,0,64,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53355,0,3,0,40,0,100,0,6,533550,0,0,33,53218,0,0,0,0,0,21,20,0,0,0,0,0,0,'molten front quests fix'),
(53217,0,0,0,64,0,100,0,0,0,0,0,53,1,533550,0,29206,2000,1,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53217,0,1,0,64,0,100,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53217,0,2,0,64,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53217,0,3,0,40,0,100,0,6,533550,0,0,33,53218,0,0,0,0,0,21,20,0,0,0,0,0,0,'molten front quests fix');

DELETE FROM waypoints WHERE entry in (533550);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('533550','1','1040.92','405.86','41.46','windcaller waypoint'),
('533550','2','1081.74','433.85','42.2','windcaller waypoint'),
('533550','3','1088.7','458','45.47','windcaller waypoint'),
('533550','4','1107.48','455.85','49.6','windcaller waypoint'),
('533550','5','1130.29','486.56','59.44','windcaller waypoint'),
('533550','6','1142.8','503.77','59.02','windcaller waypoint');

--  Fire Flowers  --
DELETE FROM creature_loot_template WHERE entry in (53152);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('53152','69816','-100','1','0','1','1'),
('53152','69765','-100','1','0','1','1');
DELETE FROM creature WHERE id IN (53152);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('53152','861','5733','5746','1','1','0','1','1250.77','301.715','-60.337','3.72045','300','0','0','23465','0','0','0','0','0'),
('53152','861','5733','5746','1','1','0','1','1170.58','349.343','-53.586','1.93366','300','0','0','23465','0','0','0','0','0'),
('53152','861','5733','5746','1','1','0','1','1333.39','435.936','-73.5262','3.5398','300','0','0','23465','0','0','0','0','0'),
('53152','861','5733','5746','1','1','0','1','1252.71','293.338','-60.875','4.75088','300','0','0','23465','0','0','0','0','0'),
('53152','861','5733','5746','1','1','0','1','1282.95','301.48','-60.3103','0.961337','300','0','0','23465','0','0','0','0','0'),
('53152','861','0','0','1','1','38186','0','1178.44','345.692','-53.507','2.28208','300','0','0','30996','0','0','0','0','0');

--  Fire in the Skies  --
UPDATE creature_template SET speed_walk=1.5, speed_run=1.5, npcflag=16777217, type_flags=2048, unit_flags=16777220, IconName='vehichleCursor', AIName='', spell1=99587, VehicleId=156, InhabitType=5, ScriptName='npc_trained_firehawk' WHERE entry in (53297);
DELETE FROM creature_template_addon WHERE entry in (53297);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('53297','0','0','50331648','1','0','53112');
DELETE FROM spell_linked_spell WHERE spell_trigger in (99587);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `req_aura`, `comment`) VALUES
('99587','99589','1','0','Flame Seed');
                            -- sakhte vehicle -- 
DELETE FROM npc_spellclick_spells WHERE npc_entry in (53297);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
('53297','80343','1','0');
DELETE FROM disables WHERE entry in (44795);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES('0','44795','1','','','');
DELETE FROM creature_template WHERE entry in (532971,532972,532973,532974,532975,532976,532977,532978,532979,532980);
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `unit_flags`, `InhabitType`, `Health_mod`, `flags_extra`, `ScriptName`) VALUES
('532971','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532972','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532973','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532974','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532975','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532976','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532977','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532978','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532979','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper'),
('532980','11686','firehawk helper 1','85','85','3','35','35','33554438','4','10','0','npc_firehawk_helper');
DELETE FROM creature WHERE id IN (53297,532971,532972,532973,532974,532975,532976,532977,532978,532979,532980);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('53297','861','5733','5745','1','1','0','1','1250.56','534.771','61.5737','0.0494363','300','0','0','58662','0','0','0','0','0'),
('53297','861','5733','5815','1','1','0','1','366.364','-352.425','220.638','6.0083','300','0','0','58662','0','0','0','0','0'),
('532971','861','5733','5811','1','1','0','1','514.87','-467.04','188.76','0','300','0','0','0','0','0','0','0','0'),
('532972','861','5733','5811','1','1','0','1','560.34','-604.76','204.38','0','300','0','0','0','0','0','0','0','0'),
('532973','861','5733','5811','1','1','0','1','892.18','-455.54','237.11','0','300','0','0','0','0','0','0','0','0'),
('532974','861','5733','5811','1','1','0','1','878.91','-371.4','221.36','0','300','0','0','0','0','0','0','0','0'),
('532975','861','5733','5811','1','1','0','1','826.62','-379.41','233.25','0','300','0','0','0','0','0','0','0','0'),
('532976','861','5733','5811','1','1','0','1','804.6','-191.4','254.07','0','300','0','0','0','0','0','0','0','0'),
('532977','861','5733','5811','1','1','0','1','773.41','-325.75','212.82','0','300','0','0','0','0','0','0','0','0'),
('532978','861','5733','5811','1','1','0','1','669.86','-384.36','191.38','0','300','0','0','0','0','0','0','0','0'),
('532979','861','5733','5811','1','1','0','1','598.43','-519.02','192','0','300','0','0','0','0','0','0','0','0'),
('532980','861','5733','5811','1','1','0','1','509.3','-443.67','165.64','0','300','0','0','0','0','0','0','0','0');

-- Peaked Interest -- 
DELETE FROM creature WHERE id IN (53275);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('53275','861','5733','5748','1','1','0','1','1364.35','651.562','134.409','2.90067','300','0','0','58662','0','0','0','0','0'),
('53275','861','5733','5748','1','1','0','1','1370.97','647.606','134.271','4.79976','300','0','0','58662','0','0','0','0','0'),
('53275','861','5733','5748','1','1','0','1','1372.43','665.676','134.572','0.473792','300','0','0','58662','0','0','0','0','0'),
('53275','861','5733','5748','1','1','0','1','1366.19','660.431','134.377','5.48463','300','0','0','58662','0','0','0','0','0'),
('53275','861','5733','5748','1','1','0','1','1367.86','655.782','134.369','1.4202','300','0','0','58662','0','0','0','0','0'),
('53275','861','5733','5748','1','1','0','1','1380.34','655.402','134.352','4.19658','300','0','0','58662','0','0','0','0','0'),
('53275','861','5733','5748','1','1','0','1','1385.53','660.968','134.398','5.54354','300','0','0','58662','0','0','0','0','0'),
('53275','861','5733','5748','1','1','0','1','1380.96','665.645','134.348','0.674066','300','0','0','58662','0','0','0','0','0'),
('53275','861','5733','5748','1','1','0','1','1369.82','668.485','134.401','2.40587','300','0','0','58662','0','0','0','0','0'),
('53275','861','5733','5748','1','1','0','1','1372.53','653.029','134.516','1.34715','300','0','0','58662','0','0','0','0','0');

--  achievements --
--  Master of the Molten Flow --
UPDATE creature_template SET `AIName`='', ScriptName='npc_flamewaker_shaman', mindmg=619.2, maxdmg=835.2, dmg_multiplier=1 WHERE entry in (53093);
UPDATE creature_template SET `AIName`='', ScriptName='npc_flamewaker_hunter', mindmg=619.2, maxdmg=835.2, dmg_multiplier=1 WHERE entry in (53143);
UPDATE creature_template SET `AIName`='', ScriptName='npc_flamewaker_sentinel', mindmg=1007, maxdmg=1354.7, dmg_multiplier=1, faction_A=2170, faction_H=2170 WHERE entry in (53085);
DELETE FROM creature_template WHERE entry in (530930,531430,531431);
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `unit_flags`, `Health_mod`, `flags_extra`, `ScriptName`) VALUES
('530930','11686','flamewaker shaman helper','85','85','3','16','16','33554438','10','0','npc_flamewaker_shaman_helper'),
('531430','11686','Wild Barrage','85','85','3','16','16','4','10','0','npc_flamewaker_hunter_helper'),
('531431','11686','flamewaker hunter helper','85','85','3','2369','2369','33554438','10','128','npc_flamewaker_hunter_helper2');
DELETE FROM creature_equip_template WHERE entry in (531431);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
('531431','1','69229','0','0');

--  Going Down? --
UPDATE creature_template SET mindmg=619.2, maxdmg=835.2, dmg_multiplier=4.6 WHERE entry in (52683);
UPDATE creature SET spawntimesecs=5 WHERE id IN (52683);

--  Death From Above --
DELETE FROM creature WHERE id IN (54256,54257);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('54256','861','0','0','1','1','0','0','960.653','-181.533','182.791','4.41568','7200','0','0','1','0','0','0','0','0'),
('54256','861','5733','5807','1','1','0','1','855.93','-356.156','183.17','5.16317','300','0','0','1850432','0','0','0','0','0'),
('54257','861','0','0','1','1','38710','0','917.786','-406.363','193.599','3.91914','300','0','0','2576760','0','0','0','0','0');

UPDATE creature_template SET `AIName`='', ScriptName='death_from_above', Health_mod=20 WHERE entry in (54252,54253,54254,54255,54256,54257);
-- additional fixes
-- additional fixes
-- additional fixes
-- additional fixes
-- additional fixes
-- additional fixes
UPDATE quest_template SET Flags=136, SpecialFlags=0 WHERE id IN (29204,29272);
UPDATE quest_template SET Flags=0, SpecialFlags=0 WHERE id IN (29214);
UPDATE creature_template SET `AIName`='', npcflag=3 WHERE entry in (52490,52492);
DELETE FROM creature_involvedrelation WHERE id IN (52490,52492) and quest=29243;
DELETE FROM creature_involvedrelation WHERE quest=29305;
DELETE FROM creature_questrelation WHERE quest=29305;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('52490','29243');
DELETE FROM creature_questrelation WHERE id IN (52490,52492) and quest=29243;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
('52490','29243'),
('52492','29243');

--  additional quest chains --
UPDATE quest_template SET PrevQuestId=29201, NextQuestId=29215 WHERE Id=29214;
UPDATE quest_template SET PrevQuestId=29214, NextQuestId=29281 WHERE Id=29215;
UPDATE quest_template SET PrevQuestId=29215, NextQuestId=29205 WHERE Id=29204;
UPDATE quest_template SET PrevQuestId=29204 WHERE Id=29205;
UPDATE quest_template SET NextQuestId=29282 WHERE Id=29281;
UPDATE quest_template SET PrevQuestId=29281, NextQuestId=29284 WHERE Id=29283;
UPDATE quest_template SET PrevQuestId=29281, NextQuestId=29280 WHERE Id=29279;
UPDATE quest_template SET PrevQuestId=29281 WHERE Id=29282;
UPDATE quest_template SET PrevQuestId=29283, NextQuestId=29244 WHERE Id=29284;
UPDATE quest_template SET PrevQuestId=29279, NextQuestId=29203 WHERE Id=29280;
UPDATE quest_template SET PrevQuestId=29284, NextQuestId=29243 WHERE Id=29244;
UPDATE quest_template SET PrevQuestId=29244 WHERE Id=29243;
UPDATE quest_template SET PrevQuestId=29205 WHERE Id=29210;
UPDATE quest_template SET PrevQuestId=29205 WHERE Id=29211;
UPDATE quest_template SET PrevQuestId=29205 WHERE Id=29192;
UPDATE quest_template SET PrevQuestId=29205 WHERE Id=29189;
UPDATE quest_template SET PrevQuestId=29205 WHERE Id=29159;
UPDATE quest_template SET PrevQuestId=29205 WHERE Id=29160;
UPDATE quest_template SET PrevQuestId=29215, NextQuestId=29249 WHERE Id=29245;
UPDATE quest_template SET PrevQuestId=29245, NextQuestId=29254 WHERE Id=29249;
UPDATE quest_template SET PrevQuestId=29249 WHERE Id=29254;
UPDATE quest_template SET PrevQuestId=29254 WHERE Id=29275;
UPDATE quest_template SET PrevQuestId=29254 WHERE Id=29276;
UPDATE quest_template SET PrevQuestId=29254 WHERE Id=29255;
UPDATE quest_template SET PrevQuestId=29254 WHERE Id=29299;
UPDATE quest_template SET PrevQuestId=29254 WHERE Id=29257;
UPDATE quest_template SET PrevQuestId=29282 WHERE Id=29263;
UPDATE quest_template SET PrevQuestId=29282 WHERE Id=29278;
UPDATE quest_template SET PrevQuestId=29282 WHERE Id=29295;
UPDATE quest_template SET PrevQuestId=29282 WHERE Id=29297;
UPDATE quest_template SET PrevQuestId=29280, NextQuestId=29302 WHERE Id=29298;
UPDATE quest_template SET PrevQuestId=29298, NextQuestId=29303 WHERE Id=29302;
UPDATE quest_template SET PrevQuestId=29302, NextQuestId=29310 WHERE Id=29303;
UPDATE quest_template SET PrevQuestId=29303, NextQuestId=29311 WHERE Id=29310;
UPDATE quest_template SET PrevQuestId=29310 WHERE Id=29311;
--  additional pool quest --
DELETE FROM pool_template WHERE entry in (100008,100009,100010,100011,100012,100013);
INSERT INTO `pool_template`(`entry`,`max_limit`,`description`) VALUES 
(100008,1,'moltenfront additional fixes'),
(100009,2,'moltenfront additional fixes'),
(100010,1,'moltenfront additional fixes'),
(100011,1,'moltenfront additional fixes'),
(100012,1,'moltenfront additional fixes'),
(100013,1,'moltenfront additional fixes');

DELETE FROM pool_quest WHERE entry in (29211,29192,29189,29159,29160,29275,29276,29255,29299,29257,29205,29206,29263,29278,29295,29297);
INSERT INTO `pool_quest`(`entry`,`pool_entry`,`description`) VALUES 
(29211,100008,'Solar Core Destruction'),
(29192,100008,'The Wardens are Watching'),
(29189,100009,'Wicked Webs'),
(29159,100009,'Pyrorachnophobia'),
(29160,100009,'Egg-stinction'),
(29275,100010,'Fandrals Methods'),
(29276,100010,'The Flame Spider Queen'),
(29255,100011,'Embergris'),
(29299,100011,'Some Like It Hot'),
(29257,100011,'Steal Magmolias'),
(29205,100012,'The Forlorn Spire'),
(29206,100012,'Into the Fire'),
(29263,100013,'A Bitter Pill'),
(29278,100013,'Living Obsidium'),
(29295,100013,'The Bigger They Are'),
(29297,100013,'Bye Bye Burdy');
-- additional fixes --
-- beautification --
UPDATE creature_template SET flags_extra=128 WHERE entry in (53388,53302,53301,53296);
UPDATE creature_template SET mindmg=435.6, maxdmg=606.1 WHERE entry in (52871,52999,52872);
UPDATE creature_template SET mindmg=435.6, maxdmg=606.1, dmg_multiplier=4.6 WHERE entry in (52663);
UPDATE creature_template SET mindmg=619.2, maxdmg=835.2, dmg_multiplier=4.6 WHERE entry in (52663);
	
-- Planting Season --
UPDATE quest_template SET Flags=262280 WHERE id IN (29249);
UPDATE quest_template SET Flags=138, SpecialFlags=0, RequiredNpcOrGo1 = 53079 , RequiredNpcOrGoCount1 = 1 WHERE id IN (29254);

DELETE FROM gameobject WHERE id IN (208537);
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('208537','861','5733','5738','1','1','1016.51','394.512','42.134','4.68939','0','0','0.715191','-0.698929','300','0','1'),
('208537','861','5733','5738','1','1','1024.25','353.706','41.0241','2.89476','0','0','0.992394','0.123104','300','0','1'),
('208537','861','0','0','1','1','981.807','296.495','45.6984','1.22173','0','0','0.573576','0.819152','300','255','1'),
('208537','861','5733','5738','1','1','1001.96','399.876','41.1921','3.6456','0','0','0.968415','-0.249345','300','0','1'),
('208537','861','5733','5738','1','1','1018.32','360.009','41.0241','0.153719','0','0','0.0767836','0.997048','300','0','1');

UPDATE gameobject_template SET ScriptName='go_ungoro_soil', type=2 WHERE entry in (208537);
DELETE FROM creature WHERE id IN (53013);
UPDATE creature_template SET npcflag=1, ScriptName='npc_little_lasher' WHERE entry in (53013);

-- The Forlorn Spire --
DELETE FROM creature_template WHERE entry in (525010);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('525010','0','0','0','0','0','31228','31229','31230','31231','Hyjal Druid','','','0','85','85','3','0','2233','2233','0','1','1.14286','1','1.14286','1','0','0','0','0','0','1','2000','2000','2','32768','2048','0','0','0','0','0','0','0','0','0','7','4096','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,'SmartAI','0','3','1','1.51403','2.01904','1','1','0','0','0','0','0','0','0','0','1','0','0','0','npc_hyjal_druid','15595');
DELETE FROM creature_equip_template WHERE entry in (525010);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
('525010','1','69229','0','0');
DELETE FROM creature WHERE id IN (525010);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('525010','861','5733','5742','1','1','0','1','1204.26','149.511','60.7896','3.6309','300','0','0','117323','8909','0','0','0','0'),
('525010','861','5733','5742','1','1','0','1','1200.09','156.769','60.4697','3.79191','300','0','0','117323','8909','0','0','0','0'),
('525010','861','5733','5742','1','1','0','1','1193.31','164.895','60.0608','4.43593','300','0','0','117323','8909','0','0','0','0');

-- Enduring the Heat --
UPDATE creature_template SET KillCredit1=53886 WHERE entry in (54321);
UPDATE creature_template SET unit_flags=0, unit_flags2=0, type_flags=0, npcflag=1, ScriptName='npc_flame_protection_rune' WHERE entry in (52884,52885,52886,52887,52888,52889,52890,53887);

DELETE FROM creature_template WHERE entry IN (528840);
INSERT INTO creature_template (entry, modelid1, name, minlevel, maxlevel, exp, faction_A, faction_H, maxgold, AIName, flags_extra, ScriptName) VALUES 
('528840', '11686', 'Flame Protection Rune', '85', '85', '3', '35', '35', '100', '', '128', 'npc_flame_protection_rune1');

DELETE FROM creature WHERE id IN (528840);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('528840','861','5733','5741','1','1','0','1','1236.78','160.702','10.7927','1.12074','300','0','0','77490','0','0','0','33554432','0');

-- Solar Core Destruction --
UPDATE gameobject_template SET ScriptName='go_solar_core', type=2 WHERE entry in (208474);

-- The Wardens are Watching --
UPDATE creature_template SET ScriptName='npc_druid_of_the_flame_molten_front', InhabitType=5, HoverHeight=10 WHERE entry in (52871,52872);
UPDATE creature_template SET minlevel=85, maxlevel=85, exp=3, mindmg=1, maxdmg=1, faction_A=2252, faction_H=2252, dmg_multiplier=1, Health_mod=1, Mana_mod=1 WHERE entry in (52804);

-- Wicked Webs --
DELETE FROM creature_template_addon WHERE entry in (52751,52783,52784,52989,52991,52992);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('52751','0','0','0','1','0','97503 97999'),
('52783','0','0','0','1','0','97503 97999'),
('52784','0','0','0','1','0','97503 97999'),
('52989','0','0','0','1','0','97503 97999'),
('52991','0','0','0','1','0','97503 97999'),
('52992','0','0','0','1','0','97503 97999');
UPDATE creature_template SET IconName='openhandglow', npcflag=1, ScriptName='npc_cinderweb_cocoon' WHERE entry in (52751,52783,52784,52989,52991,52992);

-- fixes --
UPDATE quest_template SET Flags=8, SpecialFlags=0 WHERE id IN (29243);

UPDATE creature_template SET mindmg=2314.4, maxdmg=3027, dmg_multiplier=4.6, unit_flags=0 WHERE entry in (53771,53864,53759,53055,53834,54230);
DELETE FROM creature WHERE id IN (53771,53864,53759,53055,53834,54230);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('53055','861','5733','5749','1','1','0','1','1486.46','245.691','68.4566','1.16666','300','0','0','1173222','0','0','0','0','0'),
('53834','861','5733','5749','1','1','0','1','1565.74','339.263','62.0257','3.10581','300','0','0','1173222','89081','0','0','0','0');

UPDATE quest_template SET RewardItemId1=69854, RewardItemCount1=1 WHERE id IN (29203);
UPDATE quest_template SET RequiredNpcOrGo1 = 0 , RequiredNpcOrGoCount1 = 0 WHERE id IN (29302,29303);
UPDATE quest_template SET Flags=136, SpecialFlags=0 WHERE id IN (29303);

DELETE FROM gameobject_template WHERE entry in (2087900);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
('2087900','2','20','Night Elf Grave','','','','0','0','1.5','0','0','0','0','0','0','43','14773','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','15595');
DELETE FROM gameobject WHERE id IN (2087900,202135,208791);
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('2087900','1','331','415','1','1','2634.67','-608.872','107.163','2.84465','0','0','0.988998','0.147928','300','0','1'),
('208791','1','616','5015','1','1','5226.51','-1234.68','1375.66','1.38155','0','0','0.637136','0.770752','300','0','1');
DELETE FROM gameobject_involvedrelation WHERE id IN (2087900,208791);
INSERT INTO gameobject_involvedrelation (id, quest) VALUES
(2087900,29303),
(208791,29310);
DELETE FROM gameobject_questrelation WHERE id IN (2087900,208791);
INSERT INTO gameobject_questrelation (id, quest) VALUES
(2087900,29310),
(208791,29311);

UPDATE creature_template SET AIName='SmartAI' WHERE entry in (53302,53301,53296);
DELETE FROM smart_scripts WHERE entryorguid in (53302,53301,53296);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53302,0,0,0,11,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53301,0,1,0,11,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix'),
(53296,0,1,0,11,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'molten front quests fix');
DELETE FROM item_script_names WHERE id IN (71259);
INSERT INTO `item_script_names` (`Id`, `ScriptName`) VALUES
('71259','item_leyaras_locket');

DELETE FROM achievement_reward WHERE entry in (5866,5879);
INSERT INTO `achievement_reward` (`entry`, `title_A`, `title_H`, `item`, `sender`, `subject`, `text`) VALUES
('5866','0','0','69213','52135','A Gift from the Arch Druid','Never again will Hyjal shudder beneath the endless forces of flame. Never again shall the mortal races of the world tremble before the minions of Ragnaros.!$B$BNow, thanks to your efforts, they will tremble before US.!$B$BYour heroism on the Molten Front has been instrumental in the fight against the Firelord.You have gathered allies from all over Kalimdor and turned them into an army. You have fought the minions of Ragnaros... and prevailed. And for that, you have our deepest thanks.'),
('5879','276','276','0','0',NULL,NULL);

UPDATE creature_template SET unit_flags=33414 WHERE entry in (52669,52845,39858,40331);

UPDATE creature_template SET ScriptName='npc_molten_front_vendor' WHERE entry in (53882,53214,53881);
UPDATE creature_template SET npcflag=131 WHERE entry in (53882,53881);

DELETE FROM item_loot_template WHERE entry in (71631);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('71631','34955','4.668','1','0','1','1'),
('71631','55287','0.2899','1','0','1','1'),
('71631','55288','0.4349','1','0','1','1'),
('71631','55295','0.4059','1','0','1','1'),
('71631','55296','0.3479','1','0','1','1'),
('71631','55297','0.3479','1','0','1','1'),
('71631','55313','0.4349','1','0','1','1'),
('71631','55314','0.3769','1','0','1','1'),
('71631','55315','0.3769','1','0','1','1'),
('71631','55331','0.3769','1','0','1','1'),
('71631','55332','0.3479','1','0','1','1'),
('71631','55333','0.3769','1','0','1','1'),
('71631','55341','0.3189','1','0','1','1'),
('71631','55342','0.232','1','0','1','1'),
('71631','55349','0.3479','1','0','1','1'),
('71631','55350','0.3189','1','0','1','1'),
('71631','55351','0.3189','1','0','1','1'),
('71631','55358','0.3189','1','0','1','1'),
('71631','55367','0.3189','1','0','1','1'),
('71631','55368','0.6669','1','0','1','1'),
('71631','55369','0.5219','1','0','1','1'),
('71631','55376','0.6669','1','0','1','1'),
('71631','55377','0.3769','1','0','1','1'),
('71631','55378','0.4059','1','0','1','1'),
('71631','55385','0.2899','1','0','1','1'),
('71631','55386','0.3189','1','0','1','1'),
('71631','55387','0.4639','1','0','1','1'),
('71631','55403','0.9858','1','0','1','1'),
('71631','55404','1.0438','1','0','1','1'),
('71631','55405','0.8698','1','0','1','1'),
('71631','55421','1.7976','1','0','1','1'),
('71631','55422','1.8266','1','0','1','1'),
('71631','55423','1.7686','1','0','1','1'),
('71631','55430','0.3479','1','0','1','1'),
('71631','55431','0.3769','1','0','1','1'),
('71631','55432','0.3769','1','0','1','1'),
('71631','55439','0.9858','1','0','1','1'),
('71631','55440','1.0728','1','0','1','1'),
('71631','55441','1.2757','1','0','1','1'),
('71631','55457','0.4059','1','0','1','1'),
('71631','55458','0.3479','1','0','1','1'),
('71631','55459','0.4349','1','0','1','1'),
('71631','55468','0.3479','1','0','1','1'),
('71631','55484','0.8698','1','0','1','1'),
('71631','55485','0.8988','1','0','1','1'),
('71631','55486','0.7538','1','0','1','1'),
('71631','55493','0.6669','1','0','1','1'),
('71631','55494','0.3769','1','0','1','1'),
('71631','55495','0.9278','1','0','1','1'),
('71631','55502','0.5799','1','0','1','1'),
('71631','55503','0.6959','1','0','1','1'),
('71631','55504','0.4929','1','0','1','1'),
('71631','55511','0.5799','1','0','1','1'),
('71631','55512','0.5509','1','0','1','1'),
('71631','55513','0.5799','1','0','1','1'),
('71631','55520','0.5219','1','0','1','1'),
('71631','55521','0.7828','1','0','1','1'),
('71631','55522','0.5509','1','0','1','1'),
('71631','55529','0.4059','1','0','1','1'),
('71631','55530','0.5799','1','0','1','1'),
('71631','55531','0.4059','1','0','1','1'),
('71631','55538','0.4059','1','0','1','1'),
('71631','55539','0.4059','1','0','1','1'),
('71631','55540','0.4639','1','0','1','1'),
('71631','55547','0.4639','1','0','1','1'),
('71631','55548','0.6959','1','0','1','1'),
('71631','55549','0.4059','1','0','1','1'),
('71631','55556','0.9278','1','0','1','1'),
('71631','55557','0.4929','1','0','1','1'),
('71631','55558','0.5219','1','0','1','1'),
('71631','55565','0.6959','1','0','1','1'),
('71631','55566','0.6379','1','0','1','1'),
('71631','55567','0.6379','1','0','1','1'),
('71631','55574','0.7538','1','0','1','1'),
('71631','55575','0.5509','1','0','1','1'),
('71631','55576','0.8118','1','0','1','1'),
('71631','55583','0.6959','1','0','1','1'),
('71631','55584','0.4639','1','0','1','1'),
('71631','55585','0.4929','1','0','1','1'),
('71631','55593','0.6089','1','0','1','1'),
('71631','55594','0.5219','1','0','1','1'),
('71631','55601','0.8408','1','0','1','1'),
('71631','55602','0.6379','1','0','1','1'),
('71631','55603','0.6669','1','0','1','1'),
('71631','55610','0.8118','1','0','1','1'),
('71631','55611','0.4059','1','0','1','1'),
('71631','55612','0.6379','1','0','1','1'),
('71631','55619','0.7828','1','0','1','1'),
('71631','55620','0.4929','1','0','1','1'),
('71631','55621','0.3189','1','0','1','1'),
('71631','55628','0.4929','1','0','1','1'),
('71631','55629','0.5509','1','0','1','1'),
('71631','55630','0.5509','1','0','1','1'),
('71631','55637','0.7828','1','0','1','1'),
('71631','55638','0.7828','1','0','1','1'),
('71631','55639','0.4929','1','0','1','1'),
('71631','55646','0.6089','1','0','1','1'),
('71631','55647','0.4059','1','0','1','1'),
('71631','55648','0.6089','1','0','1','1'),
('71631','55656','0.6089','1','0','1','1'),
('71631','55657','0.4059','1','0','1','1'),
('71631','55664','0.4059','1','0','1','1'),
('71631','55665','0.5509','1','0','1','1'),
('71631','55666','0.5219','1','0','1','1'),
('71631','55673','0.6959','1','0','1','1'),
('71631','55674','0.8118','1','0','1','1'),
('71631','55675','0.4639','1','0','1','1'),
('71631','55682','0.3769','1','0','1','1'),
('71631','55683','0.5219','1','0','1','1'),
('71631','55684','0.5509','1','0','1','1'),
('71631','55691','0.6669','1','0','1','1'),
('71631','55692','0.8408','1','0','1','1'),
('71631','55693','0.8408','1','0','1','1'),
('71631','55700','0.4059','1','0','1','1'),
('71631','55701','0.4639','1','0','1','1'),
('71631','55702','0.5219','1','0','1','1'),
('71631','55709','0.7248','1','0','1','1'),
('71631','55710','0.7538','1','0','1','1'),
('71631','55711','0.7538','1','0','1','1'),
('71631','55718','0.8408','1','0','1','1'),
('71631','55719','0.8988','1','0','1','1'),
('71631','55720','0.9568','1','0','1','1'),
('71631','55727','0.7538','1','0','1','1'),
('71631','55728','0.7828','1','0','1','1'),
('71631','55729','0.9278','1','0','1','1'),
('71631','55736','0.6669','1','0','1','1'),
('71631','55737','0.9568','1','0','1','1'),
('71631','55738','0.8698','1','0','1','1'),
('71631','55745','0.9568','1','0','1','1'),
('71631','55746','0.8408','1','0','1','1'),
('71631','55747','0.7248','1','0','1','1'),
('71631','55754','0.6379','1','0','1','1'),
('71631','55755','0.6959','1','0','1','1'),
('71631','55756','0.6959','1','0','1','1'),
('71631','55763','0.7538','1','0','1','1'),
('71631','55764','1.2757','1','0','1','1'),
('71631','55765','1.0728','1','0','1','1'),
('71631','55772','0.7828','1','0','1','1'),
('71631','55773','0.6379','1','0','1','1'),
('71631','55774','0.9858','1','0','1','1'),
('71631','66931','0.029','1','0','1','1'),
('71631','66969','0.029','1','0','1','1'),
('71631','68729','0','1','1','1','1');
UPDATE creature SET spawntimesecs=900 WHERE map=861;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (45524);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (45524,"spell_dk_chains_of_ice");
DELETE FROM item_script_names WHERE id=62237;
INSERT INTO item_script_names (Id, ScriptName) VALUES (62237, 'item_adventurers_journal');


DELETE FROM `spell_script_names` WHERE `spell_id` IN (44457, 30455, 83853);

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('30455', 'spell_mage_ice_lance');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('44457', 'spell_mage_living_bomb_tic');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('83853', 'spell_mage_combustion_tic');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (45477, 49184, 49020, 49143);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('45477', 'spell_dk_merciless_combat'); -- Icy toush
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('49184', 'spell_dk_merciless_combat'); -- Howling Blast
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('49020', 'spell_dk_merciless_combat'); -- Obliterate
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('49143', 'spell_dk_merciless_combat'); -- Frost Strike

DELETE FROM `spell_script_names` WHERE `spell_id` IN (58621, 635, 19750, 20473, 53563, 82326, 82327, 85673, 86452);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('58621', 'spell_dk_glyph_chains_of_ice');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('635', 'spell_pal_avenging_wrath_heal_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('19750', 'spell_pal_avenging_wrath_heal_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('20473', 'spell_pal_avenging_wrath_heal_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('53563', 'spell_pal_avenging_wrath_heal_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('82326', 'spell_pal_avenging_wrath_heal_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('82327', 'spell_pal_avenging_wrath_heal_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('85673', 'spell_pal_avenging_wrath_heal_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('86452', 'spell_pal_avenging_wrath_heal_bonus');

DELETE FROM item_script_names WHERE id=71949;
INSERT INTO item_script_names (Id, ScriptName) VALUES (71949, 'item_tome_of_burning_jewels');
DELETE FROM spell_script_names WHERE spell_id=45524;
INSERT INTO spell_script_names VALUE (45524, 'spell_dk_chilblains');
DELETE FROM spell_script_names WHERE spell_id=53;
INSERT INTO spell_script_names VALUE (53,'spell_rogue_backstab');
DELETE FROM spell_script_names WHERE spell_id=57755;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('57755', 'spell_warr_glyph_of_heroic_throw');
UPDATE `creature_template` SET `ScriptName` = 'npc_Tentacle_of_the_Old_Ones' WHERE `entry` IN (57220, 58077, 58078);
UPDATE creature_template SET ScriptName = 'npc_melee_guardian' WHERE entry = 46506;
UPDATE creature_template SET ScriptName = 'npc_power_word_barrier' WHERE entry = 33248;
UPDATE `creature_template` SET `ScriptName`= "npc_shadowflame_flashfire" WHERE `entry` =54254;
UPDATE `creature_template` SET `ScriptName`= "npc_king_greymanes_horse_35905" WHERE `entry` =35905;
UPDATE `creature_template` SET `ScriptName`= "npc_goriona" WHERE `entry` =56781;
UPDATE `creature_template` SET `ScriptName`= "npc_elemental" WHERE `entry` =29573;
UPDATE creature_template SET ScriptName = 'npc_krennan_aranas' WHERE entry = 35907;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (54928, 0, 0, 0, 0, 0, 169, 11686, 0, 0, 'Hourglass of Time', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 2000, 2000, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 10, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1.35, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_hourglass_of_time', 15595);
DELETE FROM `spell_script_names` WHERE `spell_id` = 99353;
INSERT INTO `spell_script_names` VALUES ('99353','spell_decimating_strike');
UPDATE `creature_template` SET `ScriptName`='npc_sassy_handwrench' WHERE `entry`='37680';
DELETE FROM `areatrigger_scripts` WHERE `entry` = 6076;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(6076, 'at_rockdoor_break');

REPLACE INTO `creature_template` ( `entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ( 42333, 0, 0, 0, 0, 0, 26448, 0, 0, 0, "High Priestess Azil", "", "", 0, 85, 87, 3, 16, 16, 3, 1.2, 1.42857, 1.0, 1, 2806, 2941, 0, 1815, 9.9, 2000, 2000, 1, 0, 1, 0, 0, 0, 0, 0, 2806, 2941, 1815, 7, 4, 42333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 903, 16820, 19650, "", 0, 1, 19.4279, 0.0, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299803, 1, "boss_priestess_azil", "13623");
UPDATE `creature_template` SET `ScriptName` = 'npc_gravity_well_azil' WHERE `entry` =42499;



-- ??????? ?????????? / http://ru.wowhead.com/npc=40358
DELETE FROM `creature` WHERE `id`=40358;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(88385, 40358, 1, 0, 0, 1, 1, 1233, 0, -4568.4, -3223.19, 34.9894, 5.35816, 300, 0, 0, 232470, 0, 0, 0, 0, 0);


-- ?????: ?????????? ??????? ???? / http://ru.wowhead.com/item=68742
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `flagsCustom`) VALUES (68741, 3, 4, 'Vivid Dream Emerald', 79077, 3, 0, 8192, 1, 150000, 37500, 0, -1, -1, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 'Matches a Blue or Yellow Socket.', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 1855, 0, 0, 0, 0, 0);

-- ??????? ??????, ?????? ???????? ??????
DELETE FROM `creature` WHERE `id`=37776;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(218651, 37776, 571, 0, 0, 1, 1, 0, 0, 5669.74, 680.798, 651.987, 5.82387, 300, 0, 0, 60480, 17628, 2, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=37780;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(195053, 37780, 571, 0, 0, 1, 1, 0, 0, 5939.18, 618.325, 650.585, 2.1914, 300, 0, 0, 75600, 0, 0, 0, 0, 0);


-- ??????????? ????
DELETE FROM `npc_trainer` WHERE `entry` in (3345, 1317) AND `spell`=20051;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(1317, 20051, 15000, 333, 290, 0),
(3345, 20051, 15000, 333, 290, 0);

-- ????????? ???????? / http://ru.wowhead.com/quest=27538
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`) VALUES (204880, 3, 10352, 'Verrall River Muck', '', 'Gathering', '', 0, 4, 1.2, 60337, 0, 0, 0, 0, 0, 43, 31293, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

##########################################

REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES (204880, '', '', '', '', '', '', '', '?? ???? ??????', '', '', '', '', '', '', '', '????');
DELETE FROM `gameobject` WHERE `id`=204880;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(204880, 0, 1, 1, -3777.08, -5919.27, 7.18697, 3.84938, 0, 0, 0.93803, -0.346553, 300, 0, 1),
(204880, 0, 1, 1, -3739.1, -5849.87, 7.0053, 4.05424, 0, 0, 0.897679, -0.44065, 300, 0, 1),
(204880, 0, 1, 1, -3926.76, -6136.66, 7.17005, 0.832043, 0, 0, 0.404124, 0.914704, 300, 0, 1),
(204880, 0, 1, 1, -3701.48, -5828.98, 7.45756, 1.87149, 0, 0, 0.80504, 0.593221, 300, 0, 1),
(204880, 0, 1, 1, -3808.02, -6000.5, 7.06628, 5.99233, 0, 0, 0.144914, -0.989444, 300, 0, 1),
(204880, 0, 1, 1, -3713.98, -5932.04, 7.52676, 4.05342, 0, 0, 0.897859, -0.440283, 300, 0, 1),
(204880, 0, 1, 1, -3753.71, -6006.24, 7.49554, 4.42711, 0, 0, 0.800444, -0.599407, 300, 0, 1),
(204880, 0, 1, 1, -3823.14, -5934.88, 7.17428, 3.69383, 0, 0, 0.962121, -0.272624, 300, 0, 1),
(204880, 0, 1, 1, -3671.92, -5877.44, 7.42471, 4.23394, 0, 0, 0.854519, -0.519421, 300, 0, 1),
(204880, 0, 1, 1, -3820.38, -6062.02, 7.1961, 4.12591, 0, 0, 0.881314, -0.47253, 300, 0, 1),
(204880, 0, 1, 1, -3857.32, -6087.05, 6.59407, 3.59498, 0, 0, 0.974415, -0.224758, 300, 0, 1),
(204880, 0, 1, 1, -3905.67, -6082.86, 6.81666, 3.03751, 0, 0, 0.998646, 0.0520194, 300, 0, 1),
(204880, 0, 1, 1, -3939.62, -6026.66, 7.07262, 0.477814, 0, 0, 0.236641, 0.971597, 300, 0, 1),
(204880, 0, 1, 1, -3968.8, -5982.59, 7.51536, 2.91601, 0, 0, 0.993646, 0.112554, 300, 0, 1),
(204880, 0, 1, 1, -3878.69, -5973.29, 7.0427, 0.490067, 0, 0, 0.242589, 0.970129, 300, 0, 1),
(204880, 0, 1, 1, -3877.15, -6025.51, 7.18023, 4.74347, 0, 0, 0.696031, -0.718011, 300, 0, 1),
(204880, 0, 1, 1, -3768.93, -6035.88, 7.4949, 1.00497, 0, 0, 0.481605, 0.876388, 300, 0, 1),
(204880, 0, 1, 1, -3906.98, -6167.89, 7.5587, 2.87548, 0, 0, 0.991161, 0.132664, 300, 0, 1),
(204880, 0, 1, 1, -3833.58, -5980.97, 7.93343, 1.15711, 0, 0, 0.546814, 0.837254, 300, 0, 1),
(204880, 0, 1, 1, -3924.4, -6108.63, 6.03273, 1.65589, 0, 0, 0.736543, 0.676391, 300, 0, 1);

-- ???????????? ???????? / http://ru.wowhead.com/quest=27177
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (205250, 3, 335, 'Water-Logged Crate', '', 'Salvaging', '', 0, 4, 0.8, 60857, 0, 0, 0, 0, 0, 43, 33839, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES (205250, '', '', '', '', '', '', '', '????????? ????', '', '', '', '', '', '', '', '????????');
DELETE FROM `gameobject` WHERE `id`=205250;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(205250, 0, 1, 1, -5099.99, -6281.65, -22.1667, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5016.97, -6387.47, -22.4936, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5039.85, -6407.33, -24.8526, 3.08921, 0, 0, 0.999657, 0.0262017, 300, 100, 1),
(205250, 0, 1, 1, -4946.39, -6356.28, -7.26569, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4982.93, -6456.06, -16.0921, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5026.42, -6540.1, -64.3583, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5018.45, -6510.69, -58.4795, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5061.83, -6515.43, -49.4499, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5001.16, -6367.45, -17.168, -3.08921, 0, 0, -0.999657, 0.0262017, 300, 100, 1),
(205250, 0, 1, 1, -5034.32, -6324.43, -18.1762, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5027.97, -6376.82, -20.4385, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5021.06, -6400.41, -24.8993, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4940.22, -6391.17, -11.3961, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4956.05, -6416.44, -9.92276, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4931.95, -6439.38, -15.2949, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4974.83, -6447.69, -14.728, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4957.64, -6434.22, -14.0343, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4944.61, -6440.7, -16.4767, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4935.49, -6431.04, -11.5811, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5030.69, -6406.58, -25.3359, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4978.17, -6386.37, -16.786, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4983.74, -6520, -70.4004, -2.37364, 0, 0, -0.927183, 0.374608, 300, 100, 1),
(205250, 0, 1, 1, -4975.37, -6523.98, -70.6844, 2.67035, 0, 0, 0.972369, 0.233448, 300, 100, 1),
(205250, 0, 1, 1, -5013.55, -6522.33, -63.8293, -2.61799, 0, 0, -0.965925, 0.258821, 300, 100, 1),
(205250, 0, 1, 1, -4903.25, -6502.08, -60.4497, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4857.74, -6432.13, -26.7545, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4990.42, -6417.05, -17.6729, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5037.19, -6436.4, -28.8455, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4893.78, -6404.66, -16.4162, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4877.36, -6408.63, -22.1681, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4914.9, -6389.36, -8.54178, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1);

-- ????????? ???? / http://ru.wowhead.com/quest=27939
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`=47201;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (47201, 87961, 1, 0);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 47201, 87961, 0, 0, 9, 0, 27939, 0, 0, 0, 0, 0, '', 'The Desert Fox');

-- ????????? ????? ??????? / http://ru.wowhead.com/quest=27602
DELETE FROM `gameobject` WHERE `id`=205824;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (205824, 1, 1, 1, -9905.06, -13.5625, 54.0845, -0.558505, 0, 0, -0.275637, 0.961262, 300, 100, 1);

-- ??????????? ????? / http://ru.wowhead.com/quest=28272
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (207124, 3, 10201, 'Pillaged Loot Sack', '', 'Rummaging', '', 0, 0, 1, 63685, 0, 0, 0, 0, 0, 43, 35934, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES (207124, '', '', '', '', '', '', '', '????? ? ????????????', '', '', '', '', '', '', '', '?????');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (207124, 63685, -100);
DELETE FROM `gameobject` WHERE `id`=207124;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(207124, 1, 1, 1, -8913.23, 101.528, 141.048, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8914.25, 76.8333, 141.048, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8899.93, -48.5451, 141.048, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8860.86, -16.0243, 142.207, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8831.59, 0.0590278, 141.046, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8754.06, 18.0503, 141.08, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -9060.08, 63.4931, 141.049, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8919.02, -48.0747, 141.047, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8973.1, -86.4688, 141.046, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8976.1, -92.6493, 141.058, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -9046.4, -97.9931, 141.048, 0, 0, 0, 0, 1, 300, 100, 1);

-- ????????? ? ??????: ??????! / http://ru.wowhead.com/quest=28558
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry` in (44833, 46532);

-- ???? ????? ??????
DELETE FROM `creature` WHERE `id` in (52408, 52382);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(52408, 0, 1, 1, 37874, 0, -9009.46, 862.241, 30.4525, 1.20428, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(52382, 1, 1, 1, 37864, 0, 1673.21, -4354.4, 27.0909, 3.00197, 300, 0, 0, 30951, 0, 0, 0, 0, 0);
REPLACE INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
((select `guid` from `creature` where `id`=52408), 0, 0, 33554432, 0, 0, '74426'), 
((select `guid` from `creature` where `id`=52382), 0, 0, 33554432, 0, 0, '74426');

REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (52382, 29452), (52408, 29453);

-- ?????? ? ?????? / http://ru.wowhead.com/quest=26585
DELETE FROM `gameobject` WHERE `id`=204410;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(204410, 646, 1, 1, 1858.88, -718.573, 240.465, 0.009417, 0, 0, 0.004708, 0.999989, 300, 0, 1),
(204410, 646, 1, 1, 1839.41, -659.892, 241.419, 2.51484, 0, 0, 0.951298, 0.308274, 300, 0, 1),
(204410, 646, 1, 1, 1844.28, -622.868, 242.906, 6.12688, 0, 0, 0.078071, -0.996948, 300, 0, 1),
(204410, 646, 1, 1, 1879.57, -613.204, 244.501, 5.72241, 0, 0, 0.276729, -0.960948, 300, 0, 1),
(204410, 646, 1, 1, 1882.22, -666.595, 239.931, 4.1791, 0, 0, 0.868438, -0.495799, 300, 0, 1),
(204410, 646, 1, 1, 1845.53, -723.592, 245.343, 5.16084, 0, 0, 0.532179, -0.846632, 300, 0, 1),
(204410, 646, 1, 1, 1874.5, -711.066, 241.122, 1.5064, 0, 0, 0.683975, 0.729505, 300, 0, 1),
(204410, 646, 1, 1, 1822.95, -691.485, 243.283, 1.79698, 0, 0, 0.782386, 0.622794, 300, 0, 1);

-- ??????? ?????? / http://ru.wowhead.com/quest=26869
DELETE FROM `gameobject` WHERE `id` in (205195, 204959);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(205195, 646, 1, 1, 1888, -46.7219, -174.179, 2.22718, 0, 0, 0.897288, 0.441445, 1, 0, 1),
(205195, 646, 1, 1, 1976.89, -173.154, -176.221, 2.45101, 0, 0, 0.940976, 0.338472, 1, 0, 1),
(205195, 646, 1, 1, 2078.78, -205.893, -174.055, 5.86749, 0, 0, 0.206353, -0.978478, 1, 0, 1),
(205195, 646, 1, 1, 2165.36, -211.713, -166.258, 0.911622, 0, 0, 0.440191, 0.897904, 1, 0, 1),
(205195, 646, 1, 1, 2167.38, -89.7111, -190.652, 0.650866, 0, 0, 0.319719, 0.947512, 1, 0, 1),
(205195, 646, 1, 1, 2139.43, -129.228, -189.845, 4.01473, 0, 0, 0.906208, -0.422831, 1, 0, 1),
(205195, 646, 1, 1, 2024.5, -153.285, -176.031, 0.382248, 0, 0, 0.189962, 0.981791, 1, 0, 1),
(205195, 646, 1, 1, 2023.6, -223.077, -172.959, 3.81444, 0, 0, 0.943942, -0.330112, 1, 0, 1),
(205195, 646, 1, 1, 2072.14, -178.025, -175.682, 2.86017, 0, 0, 0.990117, 0.140247, 1, 0, 1),
(204959, 646, 1, 1, 1857.19, -99.4932, -173.22, 3.51523, 0, 0, 0.9826, -0.185735, 3600, 0, 1);

-- ????????? ?????????? ???? / http://ru.wowhead.com/quest=2459
DELETE FROM `creature_loot_template` WHERE `item`=8049;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7234, 8050, -100);

-- ?????????? ????'??? / http://ru.wowhead.com/quest=12030
REPLACE INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (188419, 12030), (188419, 12031);

-- ?????? ??
UPDATE `quest_template` SET `RequiredClasses`=0, `RequiredRaces`=0, `RequiredSkillId`=0, `RequiredSkillPoints`=0, `RequiredFactionId1`=0, `RequiredFactionId2`=0, `RequiredFactionValue1`=0, `RequiredFactionValue2`=0 WHERE `Id`=12641;

-- ???? ???????
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(209894, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 94, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 209894, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(209895, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 0, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 41159, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, '', '', 15595),
(209896, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 94, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 209896, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, '', '', 15595),
(209897, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 0, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 209897, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES 
(209894, '', '', '', '', '', '', '', '??????? ???? ????????', '', '', '', '', '', '', '', ''),
(209895, '', '', '', '', '', '', '', '??????? ???? ????????', '', '', '', '', '', '', '', ''),
(209896, '', '', '', '', '', '', '', '??????? ???? ????????', '', '', '', '', '', '', '', ''),
(209897, '', '', '', '', '', '', '', '??????? ???? ????????', '', '', '', '', '', '', '', '');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(209895, 71998, 60, 1, 0, 1, 3),
(209895, 77197, 0, 1, 2, 1, 1),
(209895, 77198, 0, 1, 3, 1, 1),
(209895, 77199, 0, 1, 4, 1, 1),
(209895, 77200, 0, 1, 1, 1, 1),
(209895, 77201, 0, 1, 2, 1, 1),
(209895, 77235, 0, 1, 3, 1, 1),
(209895, 77236, 0, 1, 1, 1, 1),
(209895, 77237, 0, 1, 4, 1, 1),
(209895, 77238, 0, 1, 1, 1, 1),
(209895, 77952, 70, 1, 0, 1, 3),
(209895, 78357, 0, 1, 2, 1, 1),
(209897, 71998, 60, 1, 0, 1, 3),
(209897, 77952, 70, 1, 0, 1, 3),
(209897, 77994, 0, 1, 2, 1, 1),
(209897, 77995, 0, 1, 1, 1, 1),
(209897, 77996, 0, 1, 2, 1, 1),
(209897, 77997, 0, 1, 3, 1, 1),
(209897, 77998, 0, 1, 4, 1, 1),
(209897, 78461, 0, 1, 1, 1, 1),
(209897, 78462, 0, 1, 3, 1, 1),
(209897, 78463, 0, 1, 2, 1, 1),
(209897, 78464, 0, 1, 4, 1, 1),
(209897, 78465, 0, 1, 1, 1, 1);

-- ???????? ???? / http://ru.wowhead.com/npc=50419
DELETE FROM `creature` WHERE `id`=50419;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(50419, 1, 1, 1, 36357, 0, 5139.56, -2305.21, 1278.55, 2.37691, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5142.74, -2309.46, 1278.52, 1.1346, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5677.49, -3356.57, 1556.44, 5.20282, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5674.64, -3361.7, 1556.44, 3.34411, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5658.43, -3368.15, 1556.46, 4.0545, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4959, 0, 5679.15, -3337.15, 1556.17, 5.14811, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5683.9, -3336.3, 1556.44, 3.94494, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4959, 0, 5623.77, -3291.37, 1568.07, 0.302406, 300, 0, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5617.3, -3285.49, 1568.07, 2.80996, 300, 0, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5639.71, -3342.28, 1556.44, 0.304428, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5657.64, -3257.78, 1568.07, 1.12108, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5675.14, -3316.41, 1556.44, 3.8676, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5670.58, -3225.97, 1573.46, 0.340716, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5682.43, -3282.95, 1583.03, 5.94746, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5141.26, -2308.12, 1278.5, 0.23134, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5663.79, -3222.91, 1573.43, 4.4772, 300, 0, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5718.4, -3241.53, 1582.69, 1.72736, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5677.91, -3310.58, 1556.31, 1.25467, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4959, 0, 5718.54, -3246.8, 1582.82, 2.53919, 300, 3, 0, 8, 0, 1, 0, 0, 0);

-- ????????? ?????? ?????? / http://ru.wowhead.com/npc=37737
DELETE FROM `npc_trainer` WHERE `entry`=37737;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES 
(37737, 465, 142, 0, 0, 5), (37737, 20154, 60, 0, 0, 3), (37737, 20271, 60, 0, 0, 3);

-- ????? ??????? / http://ru.wowhead.com/npc=46377
DELETE FROM `creature` WHERE `id`=46377;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (46377, 0, 1, 1, 35060, 1, -3174.54, -5239.19, 99.4918, 0.994838, 300, 3, 0, 85239, 0, 0, 0, 0, 0);

-- ????????? ????? / http://ru.wowhead.com/npc=32538
DELETE FROM `creature` WHERE `id`=32538;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (32538, 571, 1, 1, 28039, 0, 8566.71, 2722.85, 652.437, 4.4855, 600, 0, 0, 10080, 8814, 0, 0, 0, 0);

-- ?????? ???????? / http://ru.wowhead.com/npc=14828
DELETE FROM `creature` WHERE `id`=14828 and `map`!=974;

-- ???????? / http://ru.wowhead.com/npc=10181
DELETE FROM `creature` WHERE `id`=10181;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (10181, 0, 1, 1, 0, 10181, 1289.6, 312.974, -57.3209, 1.69281, 300, 0, 0, 6371505, 315092, 0, 0, 0, 0);

-- ????? ??????? / http://ru.wowhead.com/npc=6367
DELETE FROM `creature` WHERE `id`=6367;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (6367, 0, 1, 1, 0, 0, -9176.5, 0.704102, 80.4761, 5.79449, 180, 0, 0, 102, 0, 0, 0, 0, 0);

-- ???????? ???? / http://ru.wowhead.com/npc=28776
DELETE FROM `creature` WHERE `id`=28776;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (28776, 571, 1, 1, 25674, 0, 5762.86, 628.569, 650.175, 4.03171, 600, 0, 0, 10635, 0, 0, 0, 0, 0);

-- ????? ????????????? ????? / http://ru.wowhead.com/npc=51961
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `equipment_id`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (51961, 0, 0, 0, 0, 0, 23952, 0, 0, 0, 'Tirisfal Stag', '', '', 0, 80, 82, 3, 2000, 2000, 0, 0.8, 1.14286, 1, 0, 452, 678, 0, 169, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 362, 542, 135, 1, 0, 51961, 0, 51961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 8752, 0, 0, 8, 0, 8747, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8752, 0, 0, 8, 0, 8757, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8757, 0, 0, 0, 0, 8752, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8757, 0, 0, 0, 0, 8747, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8747, 0, 0, 0, 0, 8752, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8747, 0, 0, 0, 0, 8757, 0, 0, 1, 0, 0, '', NULL);

-- ???????? / http://ru.wowhead.com/npc=53009
DELETE FROM `creature` WHERE `id` in (53009, 53149);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(53009, 571, 1, 1, 0, 0, 3546.56, 5882.51, 143.915, 1.18275, 300, 0, 0, 77490, 0, 0, 0, 0, 0),
(53149, 571, 1, 1, 0, 0, 3956.35, 6770.45, 153.565, 0.868587, 300, 0, 0, 77490, 0, 0, 0, 0, 0);

-- ????????????: ????????? / http://ru.wowhead.com/spell=3567
REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (3567, 1, 1776.5, -4338.8, -7.48, 3.54718);

-- ????????? ?????? ???? ??????????? / http://ru.wowhead.com/item=46125
UPDATE `item_template` SET `displayid`=97877 WHERE `entry`=46125;

-- ????, ??????? ? ????? / http://ru.wowhead.com/quest=27750
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(206289, 3, 10034, 'Wildhammer Food Stores', '', 'Gathering', '', 0, 4, 1, 62324, 0, 0, 0, 0, 0, 93, 206289, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(206290, 3, 224, 'Wildhammer Food Stores', '', 'Gathering', '', 0, 4, 1, 62324, 0, 0, 0, 0, 0, 43, 206290, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(206291, 3, 229, 'Wildhammer Food Stores', '', 'Gathering', '', 0, 4, 1, 62324, 0, 0, 0, 0, 0, 43, 206291, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES 
(206289, '', '', '', '', '', '', '', '???????? ??????? ????????? ??????', '', '', '', '', '', '', '', '????'),
(206290, '', '', '', '', '', '', '', '???????? ??????? ????????? ??????', '', '', '', '', '', '', '', '????'),
(206291, '', '', '', '', '', '', '', '???????? ??????? ????????? ??????', '', '', '', '', '', '', '', '????');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(206289, 62324, -100, 1, 0, 1, 1), (206290, 62324, -100, 1, 0, 1, 1), (206291, 62324, -100, 1, 0, 1, 1);
DELETE FROM `gameobject` WHERE `id` in (206291, 206290, 206289);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(206289, 0, 1, 1, -3665.98, -4799.57, 86.2955, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3582.19, -4841.37, 91.2892, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3682.36, -4812.49, 85.814, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3311.7, -4850.23, 117.153, -2.25147, 0, 0, -0.902585, 0.430512, 300, 100, 1),
(206289, 0, 1, 1, -3318.36, -4881.84, 114.69, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3438.21, -5033.19, 70.5377, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3486.84, -5020.13, 73.327, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3343.77, -4836.41, 113.725, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3290.83, -5172.33, 85.7886, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3469.62, -4849.96, 93.4663, 0.698131, 0, 0, 0.34202, 0.939693, 300, 100, 1),
(206289, 0, 1, 1, -3469.15, -4811.83, 83.0166, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3318.95, -5151.6, 82.3733, -0.575958, 0, 0, -0.284015, 0.95882, 300, 100, 1),
(206289, 0, 1, 1, -3136.9, -5204.48, 106.41, 2.04203, 0, 0, 0.85264, 0.522499, 300, 100, 1),
(206289, 0, 1, 1, -3302.51, -5131.45, 72.035, -1.01229, 0, 0, -0.484809, 0.87462, 300, 100, 1),
(206289, 0, 1, 1, -3480.32, -4868.35, 93.8301, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3577.51, -4843.28, 88.2505, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3656.93, -4815.16, 81.6233, 1.67551, 0, 0, 0.743144, 0.669132, 300, 100, 1),
(206290, 0, 1, 1, -3678.6, -4810.5, 80.954, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3300.23, -4866.09, 111.098, 0.663223, 0, 0, 0.325567, 0.945519, 300, 100, 1),
(206290, 0, 1, 1, -3317.95, -4866.21, 111.581, -2.80997, 0, 0, -0.986285, 0.16505, 300, 100, 1),
(206290, 0, 1, 1, -3331.7, -5121.73, 79.8446, -2.28638, 0, 0, -0.909961, 0.414694, 300, 100, 1),
(206290, 0, 1, 1, -3351.65, -5120.29, 81.4283, -2.68781, 0, 0, -0.97437, 0.224951, 300, 100, 1),
(206290, 0, 1, 1, -3465.08, -4989.73, 66.7655, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3489.96, -5014.7, 69.314, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3451.97, -4860.44, 92.4906, -0.977383, 0, 0, -0.469471, 0.882948, 300, 100, 1),
(206290, 0, 1, 1, -3480.55, -4816.71, 78.4982, -0.575958, 0, 0, -0.284015, 0.95882, 300, 100, 1),
(206290, 0, 1, 1, -3166.61, -5157.46, 111.242, 0.436331, 0, 0, 0.216439, 0.976296, 300, 100, 1),
(206290, 0, 1, 1, -3121.22, -5182.07, 91.4309, 2.68781, 0, 0, 0.97437, 0.224951, 300, 100, 1),
(206290, 0, 1, 1, -3185.49, -5199.44, 101.588, -0.715584, 0, 0, -0.350207, 0.936672, 300, 100, 1),
(206290, 0, 1, 1, -3320.12, -5176.47, 79.8699, 3.03685, 0, 0, 0.998629, 0.0523535, 300, 100, 1),
(206290, 0, 1, 1, -3297.81, -5117.53, 67.4239, -0.750491, 0, 0, -0.366501, 0.930418, 300, 100, 1),
(206290, 0, 1, 1, -3472.78, -5035.45, 67.3594, 2.19912, 0, 0, 0.891007, 0.453991, 300, 100, 1),
(206291, 0, 1, 1, -3663.46, -4794.91, 82.784, -1.46608, 0, 0, -0.66913, 0.743145, 300, 100, 1),
(206291, 0, 1, 1, -3667.72, -4817.02, 81.8979, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3596.61, -4852.96, 88.6355, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3468.07, -4990.96, 68.3095, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3338.76, -5147.13, 80.3789, -0.296705, 0, 0, -0.147809, 0.989016, 300, 100, 1),
(206291, 0, 1, 1, -3318.76, -4842.62, 112.58, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3452.68, -5010.44, 68.2943, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3484.4, -5029.44, 69.314, -0.593413, 0, 0, -0.292372, 0.956305, 300, 100, 1),
(206291, 0, 1, 1, -3333.64, -4849.23, 110.577, -2.74016, 0, 0, -0.979924, 0.19937, 300, 100, 1),
(206291, 0, 1, 1, -3335.64, -5113.22, 81.3807, -1.97222, 0, 0, -0.833885, 0.551938, 300, 100, 1),
(206291, 0, 1, 1, -3479.17, -4874.05, 89.8647, -0.0698118, 0, 0, -0.0348988, 0.999391, 300, 100, 1),
(206291, 0, 1, 1, -3476.51, -4857.07, 89.5042, -0.122173, 0, 0, -0.0610485, 0.998135, 300, 100, 1),
(206291, 0, 1, 1, -3138.96, -5219.11, 100.041, 2.68781, 0, 0, 0.97437, 0.224951, 300, 100, 1),
(206291, 0, 1, 1, -3124.08, -5166.43, 91.3482, -1.62316, 0, 0, -0.725374, 0.688355, 300, 100, 1),
(206291, 0, 1, 1, -3132.09, -5240.16, 99.4601, 1.25664, 0, 0, 0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3290.55, -5162.99, 83.4236, -2.77506, 0, 0, -0.983254, 0.182238, 300, 100, 1),
(206291, 0, 1, 1, -3291.89, -5110.87, 67.4195, 2.65289, 0, 0, 0.970295, 0.241925, 300, 100, 1),
(206291, 0, 1, 1, -3472.48, -4807.11, 78.5011, -2.46091, 0, 0, -0.942641, 0.333807, 300, 100, 1);

-- ??????? ??? ??????? / http://ru.wowhead.com/quest=28041
DELETE FROM `creature` WHERE `id`=46158;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(46158, 0, 1, 1, 1148, 0, -3691.6, -5675.34, 27.2122, 4.75583, 300, 3, 0, 70946, 0, 1, 0, 0, 0),
(46158, 0, 1, 1, 1148, 0, -3710.35, -5509.12, 38.9873, 1.40404, 300, 3, 0, 70946, 0, 1, 0, 0, 0);

-- Lady Deathwhisper / http://www.wowhead.com/npc=36855
DELETE FROM `creature` WHERE `id`=36855;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (36855, 631, 15, 1, 0, 0, -634.691, 2211.39, 51.9808, 0.034907, 604800, 0, 0, 3346800, 1632400, 0, 0, 0, 0);

-- ORATORY OF THE DAMNED
UPDATE `creature` SET `MovementType`=0 WHERE `id` in (36808, 36807, 36805, 36844, 36811, 37948, 37947, 36829, 37947, 37744);
UPDATE `creature_template` SET `flags_extra`=128 WHERE  `entry`=37744;

-- Teleport (hack)
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (573340, 0, 0, 0, 0, 0, 10045, 0, 0, 0, 'Saurfang\'s trigger', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 1);
DELETE FROM `smart_scripts` WHERE `entryorguid`=573340;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (573340, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 500, 1000, 11, 70859, 0, 0, 0, 0, 0, 18, 3, 0, 0, 0, 0, 0, 0, "Teleport (hack)");
DELETE FROM `creature` WHERE `id`=573340;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (573340, 631, 15, 1, 0, 0, -458.321, 2211.27, 541.114, 0.0339088, 300, 0, 0, 41, 60, 0, 0, 0, 0);

-- http://ru.wowhead.com/npc=51663 / http://ru.wowhead.com/npc=51662 / http://ru.wowhead.com/npc=51661
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(51661, 0, 0, 0, 0, 0, 10133, 0, 0, 0, 'Tsul\'Kalu', '', '', 65535, 28, 28, 0, 189, 189, 0, 1.14286, 1, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 2, 64, 2048, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 51661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 2, 1, 0, 57990, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048),
(51662, 0, 0, 0, 0, 0, 37613, 0, 0, 0, 'Mahamba', '', '', 65535, 28, 28, 0, 189, 189, 0, 1, 1, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 2, 64, 2048, 0, 6, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 51662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 2, 1, 0, 57990, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048),
(51663, 0, 0, 0, 0, 0, 37615, 0, 0, 0, 'Pogeyan', '', '', 65535, 85, 85, 0, 3, 3, 0, 1, 1.14286, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 1, 8, 2048, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 51663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 2, 1, 0, 57990, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048);
REPLACE INTO `locales_creature` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `subname_loc1`, `subname_loc2`, `subname_loc3`, `subname_loc4`, `subname_loc5`, `subname_loc6`, `subname_loc7`, `subname_loc8`) VALUES 
(51661, '', '', '', '', '', '', '', '????\'????', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '??? ?????'),
(51662, '', '', '', '', '', '', '', '???????', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '??? ????'),
(51663, '', '', '', '', '', '', '', '??????', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '??? ????');
DELETE FROM `creature` WHERE `id` in (51663, 51662, 51661);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(51661, 0, 1, 1, 10133, 0, -11887, -185.924, 17.8688, 3.80383, 28800, 3, 0, 1464, 1512, 1, 0, 0, 0),
(51662, 0, 1, 1, 37613, 0, -11858.7, -470.909, 12.8289, 0.267904, 28800, 3, 0, 1464, 1512, 1, 0, 0, 0),
(51663, 0, 1, 1, 37615, 0, -11801.9, 255.149, 14.3333, 0.342761, 28800, 3, 0, 1464, 1512, 1, 0, 0, 0);

-- ????? / http://ru.wowhead.com/npc=14846
DELETE FROM `npc_vendor` WHERE `entry`=14846;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(14846, 0, 72140, 0, 0, 3701, 1),
(14846, 0, 73762, 0, 0, 3700, 1),
(14846, 0, 73764, 0, 0, 3700, 1),
(14846, 0, 73765, 0, 0, 3700, 1),
(14846, 0, 73766, 0, 0, 3701, 1),
(14846, 0, 73903, 0, 0, 3700, 1),
(14846, 0, 73905, 0, 0, 3700, 1),
(14846, 0, 74981, 0, 0, 3700, 1);

-- ???????? ???????? / http://ru.wowhead.com/npc=23163
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=23163;

-- ?????????? ????? / http://ru.wowhead.com/item=30746
DELETE FROM `npc_vendor` WHERE `item`=30746;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(372, 0, 30746, 0, 0, 0, 1),
(790, 0, 30746, 0, 0, 0, 1),
(1321, 0, 30746, 0, 0, 0, 1),
(3002, 0, 30746, 0, 0, 0, 1),
(3133, 0, 30746, 0, 0, 0, 1),
(3167, 0, 30746, 0, 0, 0, 1),
(3358, 0, 30746, 0, 0, 0, 1),
(3369, 0, 30746, 0, 0, 0, 1),
(4230, 0, 30746, 0, 0, 0, 1),
(4256, 0, 30746, 0, 0, 0, 1),
(4590, 0, 30746, 0, 0, 0, 1),
(4599, 0, 30746, 0, 0, 0, 1),
(5132, 0, 30746, 0, 0, 0, 1),
(5514, 0, 30746, 0, 0, 0, 1),
(8364, 0, 30746, 0, 0, 0, 1),
(11186, 0, 30746, 0, 0, 0, 1),
(16602, 0, 30746, 1, 3600, 0, 1),
(16664, 0, 30746, 0, 0, 0, 1),
(16690, 0, 30746, 0, 0, 0, 1),
(16709, 0, 30746, 0, 0, 0, 1),
(16751, 0, 30746, 0, 0, 0, 1),
(18906, 0, 30746, 1, 3600, 0, 1),
(19053, 0, 30746, 1, 3600, 0, 1),
(19197, 0, 30746, 0, 0, 0, 1),
(20981, 0, 30746, 0, 0, 0, 1),
(28728, 0, 30746, 0, 0, 0, 1),
(33640, 0, 30746, 0, 0, 0, 1),
(33682, 0, 30746, 0, 0, 0, 1),
(44005, 0, 30746, 0, 0, 0, 1),
(46358, 0, 30746, 0, 0, 0, 1),
(48090, 0, 30746, 0, 0, 0, 1),
(48858, 0, 30746, 0, 0, 0, 1),
(49702, 0, 30746, 0, 0, 0, 1),
(50460, 0, 30746, 0, 0, 0, 1),
(52643, 0, 30746, 0, 0, 0, 1),
(53421, 0, 30746, 0, 0, 0, 1),
(53409, 0, 30746, 0, 0, 0, 1);

-- ?????????? ?? / http://ru.wowhead.com/npc=42405
DELETE FROM `creature` WHERE `id`=42405;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (42405, 0, 1, 65534, 0, 0, -9844.97, 1277.53, 41.1596, 5.52406, 600, 0, 0, 42, 0, 0, 0, 0, 0);

-- ??????? ? ???? / http://ru.wowhead.com/quest=25653
REPLACE INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) values('25653','2','81','80','0','616','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','25928','0','0','25597','5','7800','16500','0','0','0','0','0','0','0','0','0','136','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1158','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','The Ancients are With Us','Return to Ysera at Nordrassil in Mount Hyjal.','Nemesis... destroyed.$B$BI feel rejuvenated.$BPowerful.$BAwakened.$B$BTell Ysera my strength is hers.$B$BThe Twilight\'s Hammer will fall.','Return to Ysera at Nordrassil.',NULL,NULL,NULL,'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,'890','878','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1');

-- ????? ???????? ???????????? ?????... (?/?)

UPDATE `creature_template` SET `VehicleId`=1598, `AIName`='SmartAI', `speed_run`=10, `speed_walk`=10 WHERE `entry` in (30487, 30477);
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (30487, 46598, 1, 0), (30477, 46598, 1, 0);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30487, 30477);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30487, 0, 0, 0, 27, 0, 100, 0, 5000, 5000, 0, 0, 53, 0, 30487, 0, 12862, 600000, 0, 1, 0, 0, 0, 0, 0, 0, 0, "D16 Propelled Delivery Device"),
(30477, 0, 0, 0, 27, 0, 100, 0, 5000, 5000, 0, 0, 53, 0, 30477, 0, 13060, 600000, 0, 1, 0, 0, 0, 0, 0, 0, 0, "D16 Propelled Delivery Device");
DELETE FROM `waypoints` WHERE `entry` in (30487, 30477);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(30477, 1, 6403.5, -1034.47, 514.895, 'D16 Propelled Delivery Device'),
(30477, 2, 6515.71, -1175.93, 691.633, 'D16 Propelled Delivery Device'),
(30477, 3, 6577.75, 1177.57, 752.238, 'D16 Propelled Delivery Device'),
(30477, 4, 6669.56, -1118.74, 836.206, 'D16 Propelled Delivery Device'),
(30477, 5, 6977.46, -1065.06, 977.284, 'D16 Propelled Delivery Device'),
(30477, 6, 7728.83, -955.302, 1147.87, 'D16 Propelled Delivery Device'),
(30477, 7, 7867.09, -737.926, 1176.12, 'D16 Propelled Delivery Device'),
(30487, 1, 6356.52, -875.001, 489.99, 'D16 Propelled Delivery Device'),
(30487, 2, 6490.39, -705.961, 762.106, 'D16 Propelled Delivery Device'),
(30487, 3, 6476.53, -545.968, 876.673, 'D16 Propelled Delivery Device'),
(30487, 4, 6594.75, -344.923, 1016.14, 'D16 Propelled Delivery Device'),
(30487, 5, 6671.71, -227.414, 945.472, 'D16 Propelled Delivery Device');

DELETE FROM `gameobject` WHERE `id` in (209894, 209895, 209896, 209897);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(209894, 967, 1, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209895, 967, 2, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209896, 967, 4, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209897, 967, 8, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1);









-- Winter Hyacinth (item 45000) Send Script Event (20990) by right-click
DELETE FROM `event_scripts` WHERE `id`=20990;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(20990, 0, 10, 33273, 42000, 4602.977, 0, -1600.141, 156.7834, 0.7504916);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`) VALUES (206195, 22, 7490, 'Thundermar Ale Keg', '', '', '', 0, 0, 0.85, 0, 0, 0, 0, 0, 0, 86855, 0, 0, 0, 0, 10736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');


-- ????????? ???????? ????? / http://ru.wowhead.com/quest=7786
-- loot
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-4 WHERE `entry`=12056 AND `item`=18563;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-4 WHERE `entry`=12057 AND `item`=18564;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=11502 AND `item`=19017;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=14435 AND `item`=19018;
-- boss
DELETE FROM `creature` WHERE `id`=14435;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(999492, 14435, 1, 0, 0, 1, 2, 0, 0, -6237.06, 1718.68, 4.30388, 0.758073, 300, 0, 0, 333100, 0, 0, 0, 0, 0);



 REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `flags`, `comment`) values('1377','1','3','0','0','0','0','Silithus - Quest Boss Phase');


REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(23, 1377, 1, 0, 0, 8, 0, 7786, 0, 0, 0, 0, 0, '', 'Phase Condition: Silithus - Quest Boss Phase'),
(23, 1377, 1, 0, 1, 14, 0, 7787, 0, 0, 1, 0, 0, '', 'Phase Condition: Silithus - Quest Boss Phase');

-- ??????? ?????????? / http://ru.wowhead.com/npc=40358
DELETE FROM `creature` WHERE `id`=40358;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(88385, 40358, 1, 0, 0, 1, 1, 1233, 0, -4568.4, -3223.19, 34.9894, 5.35816, 300, 0, 0, 232470, 0, 0, 0, 0, 0);


-- ?????: ?????????? ??????? ???? / http://ru.wowhead.com/item=68742
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `flagsCustom`) VALUES (68741, 3, 4, 'Vivid Dream Emerald', 79077, 3, 0, 8192, 1, 150000, 37500, 0, -1, -1, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 'Matches a Blue or Yellow Socket.', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 1855, 0, 0, 0, 0, 0);

-- ??????? ??????, ?????? ???????? ??????
DELETE FROM `creature` WHERE `id`=37776;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(218651, 37776, 571, 0, 0, 1, 1, 0, 0, 5669.74, 680.798, 651.987, 5.82387, 300, 0, 0, 60480, 17628, 2, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=37780;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(195053, 37780, 571, 0, 0, 1, 1, 0, 0, 5939.18, 618.325, 650.585, 2.1914, 300, 0, 0, 75600, 0, 0, 0, 0, 0);


-- ??????????? ????
DELETE FROM `npc_trainer` WHERE `entry` in (3345, 1317) AND `spell`=20051;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(1317, 20051, 15000, 333, 290, 0),
(3345, 20051, 15000, 333, 290, 0);

-- ????????? ???????? / http://ru.wowhead.com/quest=27538
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`) VALUES (204880, 3, 10352, 'Verrall River Muck', '', 'Gathering', '', 0, 4, 1.2, 60337, 0, 0, 0, 0, 0, 43, 31293, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

##########################################

REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES (204880, '', '', '', '', '', '', '', '?? ???? ??????', '', '', '', '', '', '', '', '????');
DELETE FROM `gameobject` WHERE `id`=204880;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(204880, 0, 1, 1, -3777.08, -5919.27, 7.18697, 3.84938, 0, 0, 0.93803, -0.346553, 300, 0, 1),
(204880, 0, 1, 1, -3739.1, -5849.87, 7.0053, 4.05424, 0, 0, 0.897679, -0.44065, 300, 0, 1),
(204880, 0, 1, 1, -3926.76, -6136.66, 7.17005, 0.832043, 0, 0, 0.404124, 0.914704, 300, 0, 1),
(204880, 0, 1, 1, -3701.48, -5828.98, 7.45756, 1.87149, 0, 0, 0.80504, 0.593221, 300, 0, 1),
(204880, 0, 1, 1, -3808.02, -6000.5, 7.06628, 5.99233, 0, 0, 0.144914, -0.989444, 300, 0, 1),
(204880, 0, 1, 1, -3713.98, -5932.04, 7.52676, 4.05342, 0, 0, 0.897859, -0.440283, 300, 0, 1),
(204880, 0, 1, 1, -3753.71, -6006.24, 7.49554, 4.42711, 0, 0, 0.800444, -0.599407, 300, 0, 1),
(204880, 0, 1, 1, -3823.14, -5934.88, 7.17428, 3.69383, 0, 0, 0.962121, -0.272624, 300, 0, 1),
(204880, 0, 1, 1, -3671.92, -5877.44, 7.42471, 4.23394, 0, 0, 0.854519, -0.519421, 300, 0, 1),
(204880, 0, 1, 1, -3820.38, -6062.02, 7.1961, 4.12591, 0, 0, 0.881314, -0.47253, 300, 0, 1),
(204880, 0, 1, 1, -3857.32, -6087.05, 6.59407, 3.59498, 0, 0, 0.974415, -0.224758, 300, 0, 1),
(204880, 0, 1, 1, -3905.67, -6082.86, 6.81666, 3.03751, 0, 0, 0.998646, 0.0520194, 300, 0, 1),
(204880, 0, 1, 1, -3939.62, -6026.66, 7.07262, 0.477814, 0, 0, 0.236641, 0.971597, 300, 0, 1),
(204880, 0, 1, 1, -3968.8, -5982.59, 7.51536, 2.91601, 0, 0, 0.993646, 0.112554, 300, 0, 1),
(204880, 0, 1, 1, -3878.69, -5973.29, 7.0427, 0.490067, 0, 0, 0.242589, 0.970129, 300, 0, 1),
(204880, 0, 1, 1, -3877.15, -6025.51, 7.18023, 4.74347, 0, 0, 0.696031, -0.718011, 300, 0, 1),
(204880, 0, 1, 1, -3768.93, -6035.88, 7.4949, 1.00497, 0, 0, 0.481605, 0.876388, 300, 0, 1),
(204880, 0, 1, 1, -3906.98, -6167.89, 7.5587, 2.87548, 0, 0, 0.991161, 0.132664, 300, 0, 1),
(204880, 0, 1, 1, -3833.58, -5980.97, 7.93343, 1.15711, 0, 0, 0.546814, 0.837254, 300, 0, 1),
(204880, 0, 1, 1, -3924.4, -6108.63, 6.03273, 1.65589, 0, 0, 0.736543, 0.676391, 300, 0, 1);

-- ???????????? ???????? / http://ru.wowhead.com/quest=27177
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (205250, 3, 335, 'Water-Logged Crate', '', 'Salvaging', '', 0, 4, 0.8, 60857, 0, 0, 0, 0, 0, 43, 33839, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES (205250, '', '', '', '', '', '', '', '????????? ????', '', '', '', '', '', '', '', '????????');
DELETE FROM `gameobject` WHERE `id`=205250;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(205250, 0, 1, 1, -5099.99, -6281.65, -22.1667, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5016.97, -6387.47, -22.4936, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5039.85, -6407.33, -24.8526, 3.08921, 0, 0, 0.999657, 0.0262017, 300, 100, 1),
(205250, 0, 1, 1, -4946.39, -6356.28, -7.26569, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4982.93, -6456.06, -16.0921, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5026.42, -6540.1, -64.3583, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5018.45, -6510.69, -58.4795, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5061.83, -6515.43, -49.4499, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5001.16, -6367.45, -17.168, -3.08921, 0, 0, -0.999657, 0.0262017, 300, 100, 1),
(205250, 0, 1, 1, -5034.32, -6324.43, -18.1762, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5027.97, -6376.82, -20.4385, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5021.06, -6400.41, -24.8993, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4940.22, -6391.17, -11.3961, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4956.05, -6416.44, -9.92276, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4931.95, -6439.38, -15.2949, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4974.83, -6447.69, -14.728, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4957.64, -6434.22, -14.0343, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4944.61, -6440.7, -16.4767, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4935.49, -6431.04, -11.5811, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5030.69, -6406.58, -25.3359, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4978.17, -6386.37, -16.786, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4983.74, -6520, -70.4004, -2.37364, 0, 0, -0.927183, 0.374608, 300, 100, 1),
(205250, 0, 1, 1, -4975.37, -6523.98, -70.6844, 2.67035, 0, 0, 0.972369, 0.233448, 300, 100, 1),
(205250, 0, 1, 1, -5013.55, -6522.33, -63.8293, -2.61799, 0, 0, -0.965925, 0.258821, 300, 100, 1),
(205250, 0, 1, 1, -4903.25, -6502.08, -60.4497, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4857.74, -6432.13, -26.7545, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4990.42, -6417.05, -17.6729, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5037.19, -6436.4, -28.8455, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4893.78, -6404.66, -16.4162, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4877.36, -6408.63, -22.1681, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4914.9, -6389.36, -8.54178, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1);

-- ????????? ???? / http://ru.wowhead.com/quest=27939
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`=47201;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (47201, 87961, 1, 0);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 47201, 87961, 0, 0, 9, 0, 27939, 0, 0, 0, 0, 0, '', 'The Desert Fox');

-- ????????? ????? ??????? / http://ru.wowhead.com/quest=27602
DELETE FROM `gameobject` WHERE `id`=205824;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (205824, 1, 1, 1, -9905.06, -13.5625, 54.0845, -0.558505, 0, 0, -0.275637, 0.961262, 300, 100, 1);

-- ??????????? ????? / http://ru.wowhead.com/quest=28272
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (207124, 3, 10201, 'Pillaged Loot Sack', '', 'Rummaging', '', 0, 0, 1, 63685, 0, 0, 0, 0, 0, 43, 35934, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES (207124, '', '', '', '', '', '', '', '????? ? ????????????', '', '', '', '', '', '', '', '?????');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (207124, 63685, -100);
DELETE FROM `gameobject` WHERE `id`=207124;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(207124, 1, 1, 1, -8913.23, 101.528, 141.048, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8914.25, 76.8333, 141.048, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8899.93, -48.5451, 141.048, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8860.86, -16.0243, 142.207, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8831.59, 0.0590278, 141.046, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8754.06, 18.0503, 141.08, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -9060.08, 63.4931, 141.049, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8919.02, -48.0747, 141.047, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8973.1, -86.4688, 141.046, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8976.1, -92.6493, 141.058, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -9046.4, -97.9931, 141.048, 0, 0, 0, 0, 1, 300, 100, 1);

-- ????????? ? ??????: ??????! / http://ru.wowhead.com/quest=28558
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry` in (44833, 46532);

-- ???? ????? ??????
DELETE FROM `creature` WHERE `id` in (52408, 52382);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(52408, 0, 1, 1, 37874, 0, -9009.46, 862.241, 30.4525, 1.20428, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(52382, 1, 1, 1, 37864, 0, 1673.21, -4354.4, 27.0909, 3.00197, 300, 0, 0, 30951, 0, 0, 0, 0, 0);
REPLACE INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
((select `guid` from `creature` where `id`=52408), 0, 0, 33554432, 0, 0, '74426'), 
((select `guid` from `creature` where `id`=52382), 0, 0, 33554432, 0, 0, '74426');

REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (52382, 29452), (52408, 29453);

-- ?????? ? ?????? / http://ru.wowhead.com/quest=26585
DELETE FROM `gameobject` WHERE `id`=204410;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(204410, 646, 1, 1, 1858.88, -718.573, 240.465, 0.009417, 0, 0, 0.004708, 0.999989, 300, 0, 1),
(204410, 646, 1, 1, 1839.41, -659.892, 241.419, 2.51484, 0, 0, 0.951298, 0.308274, 300, 0, 1),
(204410, 646, 1, 1, 1844.28, -622.868, 242.906, 6.12688, 0, 0, 0.078071, -0.996948, 300, 0, 1),
(204410, 646, 1, 1, 1879.57, -613.204, 244.501, 5.72241, 0, 0, 0.276729, -0.960948, 300, 0, 1),
(204410, 646, 1, 1, 1882.22, -666.595, 239.931, 4.1791, 0, 0, 0.868438, -0.495799, 300, 0, 1),
(204410, 646, 1, 1, 1845.53, -723.592, 245.343, 5.16084, 0, 0, 0.532179, -0.846632, 300, 0, 1),
(204410, 646, 1, 1, 1874.5, -711.066, 241.122, 1.5064, 0, 0, 0.683975, 0.729505, 300, 0, 1),
(204410, 646, 1, 1, 1822.95, -691.485, 243.283, 1.79698, 0, 0, 0.782386, 0.622794, 300, 0, 1);

-- ??????? ?????? / http://ru.wowhead.com/quest=26869
DELETE FROM `gameobject` WHERE `id` in (205195, 204959);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(205195, 646, 1, 1, 1888, -46.7219, -174.179, 2.22718, 0, 0, 0.897288, 0.441445, 1, 0, 1),
(205195, 646, 1, 1, 1976.89, -173.154, -176.221, 2.45101, 0, 0, 0.940976, 0.338472, 1, 0, 1),
(205195, 646, 1, 1, 2078.78, -205.893, -174.055, 5.86749, 0, 0, 0.206353, -0.978478, 1, 0, 1),
(205195, 646, 1, 1, 2165.36, -211.713, -166.258, 0.911622, 0, 0, 0.440191, 0.897904, 1, 0, 1),
(205195, 646, 1, 1, 2167.38, -89.7111, -190.652, 0.650866, 0, 0, 0.319719, 0.947512, 1, 0, 1),
(205195, 646, 1, 1, 2139.43, -129.228, -189.845, 4.01473, 0, 0, 0.906208, -0.422831, 1, 0, 1),
(205195, 646, 1, 1, 2024.5, -153.285, -176.031, 0.382248, 0, 0, 0.189962, 0.981791, 1, 0, 1),
(205195, 646, 1, 1, 2023.6, -223.077, -172.959, 3.81444, 0, 0, 0.943942, -0.330112, 1, 0, 1),
(205195, 646, 1, 1, 2072.14, -178.025, -175.682, 2.86017, 0, 0, 0.990117, 0.140247, 1, 0, 1),
(204959, 646, 1, 1, 1857.19, -99.4932, -173.22, 3.51523, 0, 0, 0.9826, -0.185735, 3600, 0, 1);

-- ????????? ?????????? ???? / http://ru.wowhead.com/quest=2459
DELETE FROM `creature_loot_template` WHERE `item`=8049;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7234, 8050, -100);

-- ?????????? ????'??? / http://ru.wowhead.com/quest=12030
REPLACE INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (188419, 12030), (188419, 12031);

-- ?????? ??
UPDATE `quest_template` SET `RequiredClasses`=0, `RequiredRaces`=0, `RequiredSkillId`=0, `RequiredSkillPoints`=0, `RequiredFactionId1`=0, `RequiredFactionId2`=0, `RequiredFactionValue1`=0, `RequiredFactionValue2`=0 WHERE `Id`=12641;

-- ???? ???????
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(209894, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 94, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 209894, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(209895, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 0, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 41159, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, '', '', 15595),
(209896, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 94, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 209896, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, '', '', 15595),
(209897, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 0, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 209897, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES 
(209894, '', '', '', '', '', '', '', '??????? ???? ????????', '', '', '', '', '', '', '', ''),
(209895, '', '', '', '', '', '', '', '??????? ???? ????????', '', '', '', '', '', '', '', ''),
(209896, '', '', '', '', '', '', '', '??????? ???? ????????', '', '', '', '', '', '', '', ''),
(209897, '', '', '', '', '', '', '', '??????? ???? ????????', '', '', '', '', '', '', '', '');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(209895, 71998, 60, 1, 0, 1, 3),
(209895, 77197, 0, 1, 2, 1, 1),
(209895, 77198, 0, 1, 3, 1, 1),
(209895, 77199, 0, 1, 4, 1, 1),
(209895, 77200, 0, 1, 1, 1, 1),
(209895, 77201, 0, 1, 2, 1, 1),
(209895, 77235, 0, 1, 3, 1, 1),
(209895, 77236, 0, 1, 1, 1, 1),
(209895, 77237, 0, 1, 4, 1, 1),
(209895, 77238, 0, 1, 1, 1, 1),
(209895, 77952, 70, 1, 0, 1, 3),
(209895, 78357, 0, 1, 2, 1, 1),
(209897, 71998, 60, 1, 0, 1, 3),
(209897, 77952, 70, 1, 0, 1, 3),
(209897, 77994, 0, 1, 2, 1, 1),
(209897, 77995, 0, 1, 1, 1, 1),
(209897, 77996, 0, 1, 2, 1, 1),
(209897, 77997, 0, 1, 3, 1, 1),
(209897, 77998, 0, 1, 4, 1, 1),
(209897, 78461, 0, 1, 1, 1, 1),
(209897, 78462, 0, 1, 3, 1, 1),
(209897, 78463, 0, 1, 2, 1, 1),
(209897, 78464, 0, 1, 4, 1, 1),
(209897, 78465, 0, 1, 1, 1, 1);

-- ???????? ???? / http://ru.wowhead.com/npc=50419
DELETE FROM `creature` WHERE `id`=50419;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(50419, 1, 1, 1, 36357, 0, 5139.56, -2305.21, 1278.55, 2.37691, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5142.74, -2309.46, 1278.52, 1.1346, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5677.49, -3356.57, 1556.44, 5.20282, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5674.64, -3361.7, 1556.44, 3.34411, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5658.43, -3368.15, 1556.46, 4.0545, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4959, 0, 5679.15, -3337.15, 1556.17, 5.14811, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5683.9, -3336.3, 1556.44, 3.94494, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4959, 0, 5623.77, -3291.37, 1568.07, 0.302406, 300, 0, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5617.3, -3285.49, 1568.07, 2.80996, 300, 0, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5639.71, -3342.28, 1556.44, 0.304428, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5657.64, -3257.78, 1568.07, 1.12108, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5675.14, -3316.41, 1556.44, 3.8676, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5670.58, -3225.97, 1573.46, 0.340716, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5682.43, -3282.95, 1583.03, 5.94746, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5141.26, -2308.12, 1278.5, 0.23134, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5663.79, -3222.91, 1573.43, 4.4772, 300, 0, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5718.4, -3241.53, 1582.69, 1.72736, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5677.91, -3310.58, 1556.31, 1.25467, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4959, 0, 5718.54, -3246.8, 1582.82, 2.53919, 300, 3, 0, 8, 0, 1, 0, 0, 0);

-- ????????? ?????? ?????? / http://ru.wowhead.com/npc=37737
DELETE FROM `npc_trainer` WHERE `entry`=37737;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES 
(37737, 465, 142, 0, 0, 5), (37737, 20154, 60, 0, 0, 3), (37737, 20271, 60, 0, 0, 3);

-- ????? ??????? / http://ru.wowhead.com/npc=46377
DELETE FROM `creature` WHERE `id`=46377;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (46377, 0, 1, 1, 35060, 1, -3174.54, -5239.19, 99.4918, 0.994838, 300, 3, 0, 85239, 0, 0, 0, 0, 0);

-- ????????? ????? / http://ru.wowhead.com/npc=32538
DELETE FROM `creature` WHERE `id`=32538;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (32538, 571, 1, 1, 28039, 0, 8566.71, 2722.85, 652.437, 4.4855, 600, 0, 0, 10080, 8814, 0, 0, 0, 0);

-- ?????? ???????? / http://ru.wowhead.com/npc=14828
DELETE FROM `creature` WHERE `id`=14828 and `map`!=974;

-- ???????? / http://ru.wowhead.com/npc=10181
DELETE FROM `creature` WHERE `id`=10181;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (10181, 0, 1, 1, 0, 10181, 1289.6, 312.974, -57.3209, 1.69281, 300, 0, 0, 6371505, 315092, 0, 0, 0, 0);

-- ????? ??????? / http://ru.wowhead.com/npc=6367
DELETE FROM `creature` WHERE `id`=6367;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (6367, 0, 1, 1, 0, 0, -9176.5, 0.704102, 80.4761, 5.79449, 180, 0, 0, 102, 0, 0, 0, 0, 0);

-- ???????? ???? / http://ru.wowhead.com/npc=28776
DELETE FROM `creature` WHERE `id`=28776;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (28776, 571, 1, 1, 25674, 0, 5762.86, 628.569, 650.175, 4.03171, 600, 0, 0, 10635, 0, 0, 0, 0, 0);

-- ????? ????????????? ????? / http://ru.wowhead.com/npc=51961
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `equipment_id`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (51961, 0, 0, 0, 0, 0, 23952, 0, 0, 0, 'Tirisfal Stag', '', '', 0, 80, 82, 3, 2000, 2000, 0, 0.8, 1.14286, 1, 0, 452, 678, 0, 169, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 362, 542, 135, 1, 0, 51961, 0, 51961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 8752, 0, 0, 8, 0, 8747, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8752, 0, 0, 8, 0, 8757, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8757, 0, 0, 0, 0, 8752, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8757, 0, 0, 0, 0, 8747, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8747, 0, 0, 0, 0, 8752, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8747, 0, 0, 0, 0, 8757, 0, 0, 1, 0, 0, '', NULL);

-- ???????? / http://ru.wowhead.com/npc=53009
DELETE FROM `creature` WHERE `id` in (53009, 53149);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(53009, 571, 1, 1, 0, 0, 3546.56, 5882.51, 143.915, 1.18275, 300, 0, 0, 77490, 0, 0, 0, 0, 0),
(53149, 571, 1, 1, 0, 0, 3956.35, 6770.45, 153.565, 0.868587, 300, 0, 0, 77490, 0, 0, 0, 0, 0);

-- ????????????: ????????? / http://ru.wowhead.com/spell=3567
REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (3567, 1, 1776.5, -4338.8, -7.48, 3.54718);

-- ????????? ?????? ???? ??????????? / http://ru.wowhead.com/item=46125
UPDATE `item_template` SET `displayid`=97877 WHERE `entry`=46125;

-- ????, ??????? ? ????? / http://ru.wowhead.com/quest=27750
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(206289, 3, 10034, 'Wildhammer Food Stores', '', 'Gathering', '', 0, 4, 1, 62324, 0, 0, 0, 0, 0, 93, 206289, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(206290, 3, 224, 'Wildhammer Food Stores', '', 'Gathering', '', 0, 4, 1, 62324, 0, 0, 0, 0, 0, 43, 206290, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(206291, 3, 229, 'Wildhammer Food Stores', '', 'Gathering', '', 0, 4, 1, 62324, 0, 0, 0, 0, 0, 43, 206291, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES 
(206289, '', '', '', '', '', '', '', '???????? ??????? ????????? ??????', '', '', '', '', '', '', '', '????'),
(206290, '', '', '', '', '', '', '', '???????? ??????? ????????? ??????', '', '', '', '', '', '', '', '????'),
(206291, '', '', '', '', '', '', '', '???????? ??????? ????????? ??????', '', '', '', '', '', '', '', '????');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(206289, 62324, -100, 1, 0, 1, 1), (206290, 62324, -100, 1, 0, 1, 1), (206291, 62324, -100, 1, 0, 1, 1);
DELETE FROM `gameobject` WHERE `id` in (206291, 206290, 206289);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(206289, 0, 1, 1, -3665.98, -4799.57, 86.2955, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3582.19, -4841.37, 91.2892, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3682.36, -4812.49, 85.814, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3311.7, -4850.23, 117.153, -2.25147, 0, 0, -0.902585, 0.430512, 300, 100, 1),
(206289, 0, 1, 1, -3318.36, -4881.84, 114.69, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3438.21, -5033.19, 70.5377, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3486.84, -5020.13, 73.327, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3343.77, -4836.41, 113.725, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3290.83, -5172.33, 85.7886, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3469.62, -4849.96, 93.4663, 0.698131, 0, 0, 0.34202, 0.939693, 300, 100, 1),
(206289, 0, 1, 1, -3469.15, -4811.83, 83.0166, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3318.95, -5151.6, 82.3733, -0.575958, 0, 0, -0.284015, 0.95882, 300, 100, 1),
(206289, 0, 1, 1, -3136.9, -5204.48, 106.41, 2.04203, 0, 0, 0.85264, 0.522499, 300, 100, 1),
(206289, 0, 1, 1, -3302.51, -5131.45, 72.035, -1.01229, 0, 0, -0.484809, 0.87462, 300, 100, 1),
(206289, 0, 1, 1, -3480.32, -4868.35, 93.8301, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3577.51, -4843.28, 88.2505, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3656.93, -4815.16, 81.6233, 1.67551, 0, 0, 0.743144, 0.669132, 300, 100, 1),
(206290, 0, 1, 1, -3678.6, -4810.5, 80.954, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3300.23, -4866.09, 111.098, 0.663223, 0, 0, 0.325567, 0.945519, 300, 100, 1),
(206290, 0, 1, 1, -3317.95, -4866.21, 111.581, -2.80997, 0, 0, -0.986285, 0.16505, 300, 100, 1),
(206290, 0, 1, 1, -3331.7, -5121.73, 79.8446, -2.28638, 0, 0, -0.909961, 0.414694, 300, 100, 1),
(206290, 0, 1, 1, -3351.65, -5120.29, 81.4283, -2.68781, 0, 0, -0.97437, 0.224951, 300, 100, 1),
(206290, 0, 1, 1, -3465.08, -4989.73, 66.7655, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3489.96, -5014.7, 69.314, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3451.97, -4860.44, 92.4906, -0.977383, 0, 0, -0.469471, 0.882948, 300, 100, 1),
(206290, 0, 1, 1, -3480.55, -4816.71, 78.4982, -0.575958, 0, 0, -0.284015, 0.95882, 300, 100, 1),
(206290, 0, 1, 1, -3166.61, -5157.46, 111.242, 0.436331, 0, 0, 0.216439, 0.976296, 300, 100, 1),
(206290, 0, 1, 1, -3121.22, -5182.07, 91.4309, 2.68781, 0, 0, 0.97437, 0.224951, 300, 100, 1),
(206290, 0, 1, 1, -3185.49, -5199.44, 101.588, -0.715584, 0, 0, -0.350207, 0.936672, 300, 100, 1),
(206290, 0, 1, 1, -3320.12, -5176.47, 79.8699, 3.03685, 0, 0, 0.998629, 0.0523535, 300, 100, 1),
(206290, 0, 1, 1, -3297.81, -5117.53, 67.4239, -0.750491, 0, 0, -0.366501, 0.930418, 300, 100, 1),
(206290, 0, 1, 1, -3472.78, -5035.45, 67.3594, 2.19912, 0, 0, 0.891007, 0.453991, 300, 100, 1),
(206291, 0, 1, 1, -3663.46, -4794.91, 82.784, -1.46608, 0, 0, -0.66913, 0.743145, 300, 100, 1),
(206291, 0, 1, 1, -3667.72, -4817.02, 81.8979, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3596.61, -4852.96, 88.6355, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3468.07, -4990.96, 68.3095, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3338.76, -5147.13, 80.3789, -0.296705, 0, 0, -0.147809, 0.989016, 300, 100, 1),
(206291, 0, 1, 1, -3318.76, -4842.62, 112.58, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3452.68, -5010.44, 68.2943, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3484.4, -5029.44, 69.314, -0.593413, 0, 0, -0.292372, 0.956305, 300, 100, 1),
(206291, 0, 1, 1, -3333.64, -4849.23, 110.577, -2.74016, 0, 0, -0.979924, 0.19937, 300, 100, 1),
(206291, 0, 1, 1, -3335.64, -5113.22, 81.3807, -1.97222, 0, 0, -0.833885, 0.551938, 300, 100, 1),
(206291, 0, 1, 1, -3479.17, -4874.05, 89.8647, -0.0698118, 0, 0, -0.0348988, 0.999391, 300, 100, 1),
(206291, 0, 1, 1, -3476.51, -4857.07, 89.5042, -0.122173, 0, 0, -0.0610485, 0.998135, 300, 100, 1),
(206291, 0, 1, 1, -3138.96, -5219.11, 100.041, 2.68781, 0, 0, 0.97437, 0.224951, 300, 100, 1),
(206291, 0, 1, 1, -3124.08, -5166.43, 91.3482, -1.62316, 0, 0, -0.725374, 0.688355, 300, 100, 1),
(206291, 0, 1, 1, -3132.09, -5240.16, 99.4601, 1.25664, 0, 0, 0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3290.55, -5162.99, 83.4236, -2.77506, 0, 0, -0.983254, 0.182238, 300, 100, 1),
(206291, 0, 1, 1, -3291.89, -5110.87, 67.4195, 2.65289, 0, 0, 0.970295, 0.241925, 300, 100, 1),
(206291, 0, 1, 1, -3472.48, -4807.11, 78.5011, -2.46091, 0, 0, -0.942641, 0.333807, 300, 100, 1);

-- ??????? ??? ??????? / http://ru.wowhead.com/quest=28041
DELETE FROM `creature` WHERE `id`=46158;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(46158, 0, 1, 1, 1148, 0, -3691.6, -5675.34, 27.2122, 4.75583, 300, 3, 0, 70946, 0, 1, 0, 0, 0),
(46158, 0, 1, 1, 1148, 0, -3710.35, -5509.12, 38.9873, 1.40404, 300, 3, 0, 70946, 0, 1, 0, 0, 0);

-- Lady Deathwhisper / http://www.wowhead.com/npc=36855
DELETE FROM `creature` WHERE `id`=36855;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (36855, 631, 15, 1, 0, 0, -634.691, 2211.39, 51.9808, 0.034907, 604800, 0, 0, 3346800, 1632400, 0, 0, 0, 0);

-- ORATORY OF THE DAMNED
UPDATE `creature` SET `MovementType`=0 WHERE `id` in (36808, 36807, 36805, 36844, 36811, 37948, 37947, 36829, 37947, 37744);
UPDATE `creature_template` SET `flags_extra`=128 WHERE  `entry`=37744;

-- Teleport (hack)
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (573340, 0, 0, 0, 0, 0, 10045, 0, 0, 0, 'Saurfang\'s trigger', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 1);
DELETE FROM `smart_scripts` WHERE `entryorguid`=573340;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (573340, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 500, 1000, 11, 70859, 0, 0, 0, 0, 0, 18, 3, 0, 0, 0, 0, 0, 0, "Teleport (hack)");
DELETE FROM `creature` WHERE `id`=573340;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (573340, 631, 15, 1, 0, 0, -458.321, 2211.27, 541.114, 0.0339088, 300, 0, 0, 41, 60, 0, 0, 0, 0);

-- http://ru.wowhead.com/npc=51663 / http://ru.wowhead.com/npc=51662 / http://ru.wowhead.com/npc=51661
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(51661, 0, 0, 0, 0, 0, 10133, 0, 0, 0, 'Tsul\'Kalu', '', '', 65535, 28, 28, 0, 189, 189, 0, 1.14286, 1, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 2, 64, 2048, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 51661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 2, 1, 0, 57990, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048),
(51662, 0, 0, 0, 0, 0, 37613, 0, 0, 0, 'Mahamba', '', '', 65535, 28, 28, 0, 189, 189, 0, 1, 1, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 2, 64, 2048, 0, 6, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 51662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 2, 1, 0, 57990, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048),
(51663, 0, 0, 0, 0, 0, 37615, 0, 0, 0, 'Pogeyan', '', '', 65535, 85, 85, 0, 3, 3, 0, 1, 1.14286, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 1, 8, 2048, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 51663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 2, 1, 0, 57990, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048);
REPLACE INTO `locales_creature` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `subname_loc1`, `subname_loc2`, `subname_loc3`, `subname_loc4`, `subname_loc5`, `subname_loc6`, `subname_loc7`, `subname_loc8`) VALUES 
(51661, '', '', '', '', '', '', '', '????\'????', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '??? ?????'),
(51662, '', '', '', '', '', '', '', '???????', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '??? ????'),
(51663, '', '', '', '', '', '', '', '??????', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '??? ????');
DELETE FROM `creature` WHERE `id` in (51663, 51662, 51661);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(51661, 0, 1, 1, 10133, 0, -11887, -185.924, 17.8688, 3.80383, 28800, 3, 0, 1464, 1512, 1, 0, 0, 0),
(51662, 0, 1, 1, 37613, 0, -11858.7, -470.909, 12.8289, 0.267904, 28800, 3, 0, 1464, 1512, 1, 0, 0, 0),
(51663, 0, 1, 1, 37615, 0, -11801.9, 255.149, 14.3333, 0.342761, 28800, 3, 0, 1464, 1512, 1, 0, 0, 0);

-- ????? / http://ru.wowhead.com/npc=14846
DELETE FROM `npc_vendor` WHERE `entry`=14846;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(14846, 0, 72140, 0, 0, 3701, 1),
(14846, 0, 73762, 0, 0, 3700, 1),
(14846, 0, 73764, 0, 0, 3700, 1),
(14846, 0, 73765, 0, 0, 3700, 1),
(14846, 0, 73766, 0, 0, 3701, 1),
(14846, 0, 73903, 0, 0, 3700, 1),
(14846, 0, 73905, 0, 0, 3700, 1),
(14846, 0, 74981, 0, 0, 3700, 1);

-- ???????? ???????? / http://ru.wowhead.com/npc=23163
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=23163;

-- ?????????? ????? / http://ru.wowhead.com/item=30746
DELETE FROM `npc_vendor` WHERE `item`=30746;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(372, 0, 30746, 0, 0, 0, 1),
(790, 0, 30746, 0, 0, 0, 1),
(1321, 0, 30746, 0, 0, 0, 1),
(3002, 0, 30746, 0, 0, 0, 1),
(3133, 0, 30746, 0, 0, 0, 1),
(3167, 0, 30746, 0, 0, 0, 1),
(3358, 0, 30746, 0, 0, 0, 1),
(3369, 0, 30746, 0, 0, 0, 1),
(4230, 0, 30746, 0, 0, 0, 1),
(4256, 0, 30746, 0, 0, 0, 1),
(4590, 0, 30746, 0, 0, 0, 1),
(4599, 0, 30746, 0, 0, 0, 1),
(5132, 0, 30746, 0, 0, 0, 1),
(5514, 0, 30746, 0, 0, 0, 1),
(8364, 0, 30746, 0, 0, 0, 1),
(11186, 0, 30746, 0, 0, 0, 1),
(16602, 0, 30746, 1, 3600, 0, 1),
(16664, 0, 30746, 0, 0, 0, 1),
(16690, 0, 30746, 0, 0, 0, 1),
(16709, 0, 30746, 0, 0, 0, 1),
(16751, 0, 30746, 0, 0, 0, 1),
(18906, 0, 30746, 1, 3600, 0, 1),
(19053, 0, 30746, 1, 3600, 0, 1),
(19197, 0, 30746, 0, 0, 0, 1),
(20981, 0, 30746, 0, 0, 0, 1),
(28728, 0, 30746, 0, 0, 0, 1),
(33640, 0, 30746, 0, 0, 0, 1),
(33682, 0, 30746, 0, 0, 0, 1),
(44005, 0, 30746, 0, 0, 0, 1),
(46358, 0, 30746, 0, 0, 0, 1),
(48090, 0, 30746, 0, 0, 0, 1),
(48858, 0, 30746, 0, 0, 0, 1),
(49702, 0, 30746, 0, 0, 0, 1),
(50460, 0, 30746, 0, 0, 0, 1),
(52643, 0, 30746, 0, 0, 0, 1),
(53421, 0, 30746, 0, 0, 0, 1),
(53409, 0, 30746, 0, 0, 0, 1);

-- ?????????? ?? / http://ru.wowhead.com/npc=42405
DELETE FROM `creature` WHERE `id`=42405;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (42405, 0, 1, 65534, 0, 0, -9844.97, 1277.53, 41.1596, 5.52406, 600, 0, 0, 42, 0, 0, 0, 0, 0);

-- ??????? ? ???? / http://ru.wowhead.com/quest=25653
REPLACE INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) values('25653','2','81','80','0','616','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','25928','0','0','25597','5','7800','16500','0','0','0','0','0','0','0','0','0','136','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1158','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','The Ancients are With Us','Return to Ysera at Nordrassil in Mount Hyjal.','Nemesis... destroyed.$B$BI feel rejuvenated.$BPowerful.$BAwakened.$B$BTell Ysera my strength is hers.$B$BThe Twilight\'s Hammer will fall.','Return to Ysera at Nordrassil.',NULL,NULL,NULL,'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,'890','878','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1');

-- ????? ???????? ???????????? ?????... (?/?)
UPDATE `quest_template` SET `RequiredRaces`=18875469 WHERE `Id`=12862;
UPDATE `quest_template` SET `RequiredRaces`=33555378 WHERE `Id`=13060;
UPDATE `creature_template` SET `VehicleId`=1598, `AIName`='SmartAI', `speed_run`=10, `speed_walk`=10 WHERE `entry` in (30487, 30477);
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (30487, 46598, 1, 0), (30477, 46598, 1, 0);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30487, 30477);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30487, 0, 0, 0, 27, 0, 100, 0, 5000, 5000, 0, 0, 53, 0, 30487, 0, 12862, 600000, 0, 1, 0, 0, 0, 0, 0, 0, 0, "D16 Propelled Delivery Device"),
(30477, 0, 0, 0, 27, 0, 100, 0, 5000, 5000, 0, 0, 53, 0, 30477, 0, 13060, 600000, 0, 1, 0, 0, 0, 0, 0, 0, 0, "D16 Propelled Delivery Device");
DELETE FROM `waypoints` WHERE `entry` in (30487, 30477);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(30477, 1, 6403.5, -1034.47, 514.895, 'D16 Propelled Delivery Device'),
(30477, 2, 6515.71, -1175.93, 691.633, 'D16 Propelled Delivery Device'),
(30477, 3, 6577.75, 1177.57, 752.238, 'D16 Propelled Delivery Device'),
(30477, 4, 6669.56, -1118.74, 836.206, 'D16 Propelled Delivery Device'),
(30477, 5, 6977.46, -1065.06, 977.284, 'D16 Propelled Delivery Device'),
(30477, 6, 7728.83, -955.302, 1147.87, 'D16 Propelled Delivery Device'),
(30477, 7, 7867.09, -737.926, 1176.12, 'D16 Propelled Delivery Device'),
(30487, 1, 6356.52, -875.001, 489.99, 'D16 Propelled Delivery Device'),
(30487, 2, 6490.39, -705.961, 762.106, 'D16 Propelled Delivery Device'),
(30487, 3, 6476.53, -545.968, 876.673, 'D16 Propelled Delivery Device'),
(30487, 4, 6594.75, -344.923, 1016.14, 'D16 Propelled Delivery Device'),
(30487, 5, 6671.71, -227.414, 945.472, 'D16 Propelled Delivery Device');

DELETE FROM `gameobject` WHERE `id` in (209894, 209895, 209896, 209897);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(209894, 967, 1, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209895, 967, 2, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209896, 967, 4, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209897, 967, 8, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1);


-- The Furlbrow are supposed to be dead (the quest objective is to investigate their deaths !!)
UPDATE creature_template SET dynamicflags='32',AIName='',unit_flags='0',npcflag='0',type_flags='0',flags_extra='0' WHERE entry='237';
UPDATE creature_template_addon SET bytes1='7',bytes2='0',emote='65' WHERE entry='237';
UPDATE creature_template SET dynamicflags='32',AIName='',unit_flags='0',npcflag='0',type_flags='0',flags_extra='0' WHERE entry='238';
UPDATE creature_template_addon SET bytes1='7',bytes2='0',emote='65' WHERE entry='238';

-- Delete duplicate spawn
DELETE FROM creature WHERE guid='305440';



-- Old Blanchy is dead (sniff sniff) and under the cart...
UPDATE creature SET position_x='-9852.06',position_y='909.287',position_z='29.911' WHERE guid='89773';
DELETE FROM creature_addon WHERE guid='89773';
INSERT INTO creature_addon VALUES (89773,0,0,7,0,65,'');

-- Spawn 2 Stormwind investigators
SET @NPC_Stomwind_investigator1='53';
SET @NPC_Stomwind_investigator2='54';

DELETE FROM creature WHERE guid=@NPC_Stomwind_investigator1;
DELETE FROM creature WHERE guid=@NPC_Stomwind_investigator2;
-- Clean up
DELETE FROM creature WHERE id='42309';

UPDATE creature_template SET minlevel='21',maxlevel='24' WHERE entry='42559';

INSERT INTO creature(guid,id,modelid,position_x,position_y,position_z,orientation) VALUES (@NPC_Stomwind_investigator1,42309,32776,-9854.08,920.595,30.2177,5.45881);

INSERT INTO creature(guid,id,modelid,position_x,position_y,position_z,orientation) VALUES (@NPC_Stomwind_investigator2,42559,32775,-9854.8,908.126,29.865,0.707144);


-- Make the first investigator kneel
DELETE FROM creature_addon WHERE guid=@NPC_Stomwind_investigator1;
INSERT INTO creature_addon(guid,bytes1) VALUES (@NPC_Stomwind_investigator1,8);


-- Activate smartAI
UPDATE creature_template SET AIName='SmartAI' WHERE ENTRY='42559';
UPDATE creature_template SET AIName='SmartAI' WHERE ENTRY='42309';
UPDATE creature_template SET AIName='SmartAI' WHERE ENTRY='42308';


-- Add creature text for npc discussion at the scene, source WoW retail

DELETE FROM creature_text WHERE entry='42559';
DELETE FROM creature_text WHERE entry='42309';
DELETE FROM creature_text WHERE entry='42308';

INSERT INTO creature_text(entry,groupid,id,text,`type`,`language`,probability,emote,duration,sound,`comment`)
VALUES
(42559,0,0,'It''s a real bloodshed, lieutenant. They were murdered.',12,0,100,1,3,0,'Stormwind investigator 1st sentence'),
(42309,0,0,'According to body temperature, I''ll say they''ve been dead for less than six hours.',12,0,100,1,3,0,'Stormwind investigator 2nd sentence'),
(42559,1,0,'What they did to Old Blanchy is truly a shame.',12,0,100,1,3,0,'Stormwind investigator 3rd sentence'),
(42308,0,0,'No kidding, Probie...',12,0,100,1,3,0,'Horatio Laine 1st sentence'),
(42308,1,0,'Looks like they really put the cart...',12,0,100,1,3,0,'Horatio Laine 2nd sentence'),
(42308,2,0,'...Before the horse.',12,0,100,1,3,0,'Horatio Laine 3rd sentence');

-- Add smartAI scripts for npc discussion at the Crime Scene, source WoW retail
DELETE FROM smart_scripts WHERE entryorguid='42559';
DELETE FROM smart_scripts WHERE entryorguid='42309';
DELETE FROM smart_scripts WHERE entryorguid='42308';

INSERT INTO smart_scripts
VALUES (42559,0,0,0,10,0,100,0,1,3,30000,40000,1,0,5000,0,0,0,0,7,0,0,0,0,0,0,0,'1st Crime Scene sentence'),
(42559,0,1,0,52,0,100,0,0,42559,0,0,1,0,5000,0,0,0,0,10,@NPC_Stomwind_investigator1,42309,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42309,0,0,0,52,0,100,0,0,42559,0,0,1,0,5000,0,0,0,0,7,0,0,0,0,0,0,0,'2nd Crime Scene sentence'),
(42309,0,1,0,52,0,100,0,0,42309,0,0,1,0,5000,0,0,0,0,10,@NPC_Stomwind_investigator2,42559,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42559,0,2,0,52,0,100,0,0,42309,0,0,1,1,5000,0,0,0,0,7,0,0,0,0,0,0,0,'3rd Crime Scene sentence'),
(42559,0,3,0,52,0,100,0,1,42559,0,0,1,0,5000,0,0,0,0,10,305725,42308,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42308,0,0,0,52,0,100,0,0,42559,0,0,1,0,5000,0,0,0,7,0,0,0,0,0,0,0,0,'4th Crime Scene sentence'),
(42559,0,4,0,52,0,100,0,0,42308,0,0,1,1,5000,0,0,0,0,10,305725,42308,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42308,0,1,0,52,0,100,0,1,42308,0,0,1,1,5000,0,0,0,0,7,0,0,0,0,0,0,0,'5th Crime Scene sentence'),
(42559,0,5,0,52,0,100,0,1,42308,0,0,1,2,5000,0,0,0,0,10,305725,42308,0,0,0,0,0,'Dummy effect to trigger TEXT_OVER'),
(42308,0,2,0,52,0,100,0,2,42308,0,0,1,2,5000,0,0,0,0,7,0,0,0,0,0,0,0,'6th Crime Scene sentence');


-- Fix the quest chain
UPDATE quest_template SET PrevQuestId='26209' WHERE Id='26213';
UPDATE quest_template SET PrevQuestId='26209' WHERE Id='26214';

-- Wake the hobos up and make them gossip
UPDATE creature_addon SET auras='' WHERE guid='306272';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='306272';
UPDATE creature_addon SET auras='' WHERE guid='305766';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='305766';
UPDATE creature_addon SET auras='' WHERE guid='305336';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='305336';
UPDATE creature_addon SET auras='' WHERE guid='305478';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='305478';
UPDATE creature_addon SET auras='' WHERE guid='306058';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='306058';
UPDATE creature_addon SET auras='' WHERE guid='304958';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='304958';
UPDATE creature_addon SET auras='' WHERE guid='304973';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='304973';
UPDATE creature_addon SET auras='' WHERE guid='304954';
UPDATE creature SET npcflag='1',dynamicflags='0' WHERE guid='304954';

-- For West Plains Drifter (42391)
-- Create the gossip

SET @NPC_TEXT_GOSSIP1='70';
DELETE FROM npc_text WHERE id=@NPC_TEXT_GOSSIP1;
INSERT INTO npc_text(ID,text0_0,prob0) VALUES (@NPC_TEXT_GOSSIP1,'You wanna talk? Pay up.',100);

SET @GOSSIP_MENU_ID1='87';	
DELETE FROM gossip_menu WHERE entry=@GOSSIP_MENU_ID1;	
INSERT INTO gossip_menu VALUES (@GOSSIP_MENU_ID1,@NPC_TEXT_GOSSIP1);

UPDATE creature_template SET gossip_menu_id=@GOSSIP_MENU_ID1 WHERE entry='42391';

DELETE FROM gossip_menu_option WHERE menu_id=@GOSSIP_MENU_ID1;
INSERT INTO gossip_menu_option
VALUES (@GOSSIP_MENU_ID1,0,0,'Did you see who killed the Furlbrows?',1,1,0,0,0,0,0),
 (@GOSSIP_MENU_ID1,1,0,'Maybe a couple copper will loosen your tongue. Now tell me, did you see who killed the Furlbrows?',1,1,0,0,0,0,2);

-- Hobo go smartAI
UPDATE creature_template SET AIName='SmartAI' WHERE entry='42391';

-- Hobos don't have money, or loot and don't give XP (nothing rewarding in killing a hobo^^)
UPDATE creature_template SET mingold='0',maxgold='0',flags_extra='64' WHERE entry='42391';

-- Create the texts
DELETE FROM creature_text WHERE entry='42391';

INSERT INTO creature_text(entry,groupid,id,text,`type`,`language`,probability,emote,duration,sound,`comment`)
VALUES
(42391,0,0,'I ain''t tellin'' you a damn thing!',12,0,100,1,3000,0,'Murder was the case 1st aggro sentence'),
(42391,0,1,'You rich punks are all the same!',12,0,100,1,3000,0,'Murder was the case 2nd aggro sentence'),
(42391,0,2,'Now you''v''e gone and done it! TIME FOR THE FIST!',12,0,100,1,3000,0,'Murder was the case 3rd aggro sentence'),
(42391,1,0,'Listen, pal. I don''t want any trouble, ok? I didn''t see who murdered ''em, but I sure heard it! Lots of yelling. Human voices... you dig? Now get out of here before I change my mind about beating you up and takin'' your shoes.',12,0,100,1,5000,0,'Murder was the case 1st clue'),
(42391,2,0,'I didn''t see who killed ''em, $Gbub:sis , but I got a whiff. Smelled rich, kinda like you. Damn shame too. Furlbrows were a fixture around here. Nice people, always willin'' to share a meal or a patch of dirt.',12,0,100,1,5000,0,'Murder was the case 2nd clue'),
(42391,3,0,'Who killed the Furlbrows? I''ll tell you who killed the Furlbrows: KING VARIAN WRYNN. THAT''S WHO! And he''s killin'' the rest of us too. Once bum at a time. The only thing I can tell you is that I saw some gnolls leavin'' the place a few hours before the law arrived.',12,0,100,1,5000,0,'Murder was the case 3rd clue'),
(42391,4,0,'Between you, me, and the tree, murlocs killed the Furlbrows. Yep, saw ''em with my own two eyes. Think they''d been casin'' the joint for days, maybe months. They left in a hurry once they got wind of "Johnny Law" and the idiot brigade over there...',12,0,100,1,6000,0,'Murder was the case 4th clue');

-- On to the script creation
DELETE FROM smart_scripts WHERE entryorguid='42391';
DELETE FROM smart_scripts WHERE entryorguid='4239101';
DELETE FROM smart_scripts WHERE entryorguid='4239102';
DELETE FROM smart_scripts WHERE entryorguid='4239103';
DELETE FROM smart_scripts WHERE entryorguid='4239104';
INSERT INTO smart_scripts
VALUES
(42391,0,0,0,62,0,100,0,@GOSSIP_MENU_ID1,0,0,0,1,0,2000,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - random aggro sentence'),
(42391,0,1,0,62,0,100,0,@GOSSIP_MENU_ID1,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - close gossip'),
(42391,0,2,0,52,0,100,0,0,42391,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - start attack'),
(42391,0,3,0,52,0,100,0,0,42391,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - npc_flag to 0'),
(42391,0,4,0,52,0,100,0,0,42391,0,0,2,20,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - change faction to aggressive'),
(42391,0,5,0,25,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Reset - change faction back to neutral'),
(42391,0,6,0,25,0,100,0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Reset - change npc_flag back to gossip'),
(42391,0,7,0,62,0,100,0,@GOSSIP_MENU_ID1,1,0,0,87,4239101,4239102,4239103,4239104,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell random clue'),
(4239101,9,0,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell 1st clue'),
(4239102,9,0,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell 2nd clue'),
(4239103,9,0,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell 3rd clue'),
(4239104,9,0,0,0,0,100,0,2000,2000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - Tell 4th clue'),
(42391,0,8,0,52,0,100,0,1,42391,0,0,33,42414,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - validate objective 1'),
(42391,0,9,0,52,0,100,0,2,42391,0,0,33,42415,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - validate objective 2'),
(42391,0,10,0,52,0,100,0,3,42391,0,0,33,42416,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - validate objective 3'),
(42391,0,11,0,52,0,100,0,4,42391,0,0,33,42417,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - validate objective 4'),
(42391,0,12,0,62,0,100,0,@GOSSIP_MENU_ID1,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip 2 - close gossip'),
(42391,0,13,0,62,0,100,0,@GOSSIP_MENU_ID1,1,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - Make the gossiper unavailable'),
(42391,0,14,0,60,0,100,0,30000,30000,30000,30000,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - Reactivate gossiper every 30s');

-- For Homeless Stormwind Citizen (42386)

-- Create gossip

SET @NPC_TEXT_GOSSIP2='71';
DELETE FROM npc_text WHERE id=@NPC_TEXT_GOSSIP2;
INSERT INTO npc_text(ID,text0_0,prob0) VALUES (@NPC_TEXT_GOSSIP2,'Whaddya want?',100);

SET @GOSSIP_MENU_ID2='88';	
DELETE FROM gossip_menu WHERE entry=@GOSSIP_MENU_ID2;	
INSERT INTO gossip_menu VALUES (@GOSSIP_MENU_ID2,@NPC_TEXT_GOSSIP2);

UPDATE creature_template SET gossip_menu_id=@GOSSIP_MENU_ID2 WHERE entry='42386';

DELETE FROM gossip_menu_option WHERE menu_id=@GOSSIP_MENU_ID2;
INSERT INTO gossip_menu_option
VALUES (@GOSSIP_MENU_ID2,0,0,'Did you see who killed the Furlbrows?',1,1,0,0,0,0,0),
 (@GOSSIP_MENU_ID2,1,0,'Maybe a couple copper will loosen your tongue. Now tell me, did you see who killed the Furlbrows?',1,1,0,0,0,0,2);

-- Hobo go smartAI
UPDATE creature_template SET AIName='SmartAI' WHERE entry='42386';

-- Hobos don't have money, or loot and don't give XP (nothing rewarding in killing a hobo^^)
UPDATE creature_template SET mingold='0',maxgold='0',flags_extra='64' WHERE entry='42386';

-- Create the texts
DELETE FROM creature_text WHERE entry='42386';

INSERT INTO creature_text(entry,groupid,id,text,`type`,`language`,probability,emote,duration,sound,`comment`)
VALUES
(42386,0,0,'I ain''t tellin'' you a damn thing!',12,0,100,1,3000,0,'Murder was the case 1st aggro sentence'),
(42386,0,1,'You rich punks are all the same!',12,0,100,1,3000,0,'Murder was the case 2nd aggro sentence'),
(42386,0,2,'Now you''v''e gone and done it! TIME FOR THE FIST!',12,0,100,1,3000,0,'Murder was the case 3rd aggro sentence'),
(42386,1,0,'You can''t buy me! DIE!',12,0,100,1,3000,0,'Murder was the case 4th aggro sentence');

-- On to the script creation
DELETE FROM smart_scripts WHERE entryorguid='42386';
INSERT INTO smart_scripts
VALUES
(42386,0,0,0,62,0,100,0,@GOSSIP_MENU_ID2,0,0,0,1,0,2000,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - random aggro sentence'),
(42386,0,1,0,62,0,100,0,@GOSSIP_MENU_ID2,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - close gossip'),
(42386,0,2,0,52,0,100,0,0,42386,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - start attack'),
(42386,0,3,0,52,0,100,0,0,42386,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - npc_flag to 0'),
(42386,0,4,0,52,0,100,0,0,42386,0,0,2,20,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - change faction to aggressive'),
(42386,0,5,0,62,0,100,0,@GOSSIP_MENU_ID2,1,0,0,1,1,2000,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip2 - random aggro sentence'),
(42386,0,6,0,62,0,100,0,@GOSSIP_MENU_ID2,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip1 - close gossip'),
(42386,0,7,0,52,0,100,0,1,42386,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murder was the case - On Gossip2 - start attack'),
(42386,0,8,0,52,0,100,0,1,42386,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip2 - npc_flag to 0'),
(42386,0,9,0,52,0,100,0,1,42386,0,0,2,20,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Gossip2 - change faction to aggressive'),
(42386,0,10,0,25,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Reset - change faction back to neutral'),
(42386,0,11,0,25,0,100,0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Murder was the case - On Reset - change npc_flag back to gossip');

-- Add condtions for the quest gossip menu to appear only when the quest is active. When not, the hobos won't talk to you
DELETE FROM conditions WHERE SourceTypeOrReferenceId='15' AND SourceGroup=@GOSSIP_MENU_ID1;
DELETE FROM conditions WHERE SourceTypeOrReferenceId='15' AND SourceGroup=@GOSSIP_MENU_ID2;

REPLACE INTO conditions
VALUES
(15,@GOSSIP_MENU_ID1,0,0,9,26209,0,0,0,0,0,0,0,0,'Show gossip 0 only with quest 26209 active'),
(15,@GOSSIP_MENU_ID1,1,0,9,26209,0,0,0,0,0,0,0,0,'Show gossip 1 only with quest 26209 active'),
(15,@GOSSIP_MENU_ID2,0,0,9,26209,0,0,0,0,0,0,0,0,'Show gossip 0 only with quest 26209 active'),
(15,@GOSSIP_MENU_ID2,1,0,9,26209,0,0,0,0,0,0,0,0,'Show gossip 1 only with quest 26209 active');

-- Miscellanious
-- Sack of Oats : quest obsolete, GO untargetable on retail
UPDATE gameobject_template SET flags='16' WHERE entry='2724';


DELETE FROM `creature` WHERE `id`=2077;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15462647, 2077, 1, 141, 188, 1, 1, 0, 1, 10329.7, 825.267, 1326.38, 2.40864, 300, 0, 0, 102, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=3597;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15462648, 3597, 1, 141, 256, 1, 1, 0, 1, 10485.6, 818.876, 1322.74, 3.55846, 300, 0, 0, 222, 0, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`entry`=2150);

DELETE FROM `gameobject` WHERE `id`=185295;
DELETE FROM `creature_text` WHERE `entry` IN (21514, 10204);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(10204, 0, 0, "Misha lets OUT a loud roar AS she rakes her claws AGAINST the gronn's altar.", 16, 0, 100, 0, 0, 0, "Misha"),
(21514, 0, 0, "Who dares defile the altar of Gorgrom the Dragon-Eater?", 14, 0, 100, 0, 0, 0, "Gorgrom the Dragon-Eater"),
(21514, 1, 0, "I will crush it and flay it and eat its meat and crack its bones one by one when I am done.", 14, 0, 100, 0, 0, 0, "Gorgrom the Dragon-Eater");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (21514, 10204);
DELETE FROM `smart_scripts` WHERE source_type = 0 AND entryorguid IN (21514, 10204);
DELETE FROM `smart_scripts` WHERE source_type = 9 AND entryorguid IN (2151400, 1020400);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(21514, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 2151400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gorgrom the Dragon-Eater - On Just summoned - Action list'),
(2151400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gorgrom the Dragon-Eater - Action list - Set unit flag'),
(2151400, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gorgrom the Dragon-Eater - Action list  - Say text'),
(2151400, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gorgrom the Dragon-Eater - Action list - Say text'),
(2151400, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3608.135986, 7183.374023, 139.581833, 2.321033, 'Gorgrom the Dragon-Eater - Action list - Move to pos'),
(2151400, 9, 4, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 11, 35470, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gorgrom the Dragon-Eater - Action list - Cast explosion'),
(2151400, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 50, 185295, 60, 0, 0, 0, 0, 8, 0, 0, 0, 3608.135986, 7183.374023, 139.581833, 2.321033, 'Gorgrom the Dragon-Eater - Action list - Summon Gorgrom corpse spell focus object'),
(2151400, 9, 6, 0, 0, 0, 100, 0, 400, 400, 0, 0, 11, 58951, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gorgrom the Dragon-Eater - Action list - cast Permanent Feign Death'),
(2151400, 9, 7, 0, 0, 0, 100, 0, 40000, 40000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gorgrom the Dragon-Eater - Action list - Despawn'),
(10204, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 1020400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Misha - On Just summoned - Action list'),
(1020400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Misha - Action list - Set unit flag'),
(1020400, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Misha - Action list  - Say text'),
(1020400, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3612.911865, 7193.020508, 139.651291, 5.472856, 'Misha - Action list - Move to pos'),
(1020400, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3612.911865, 7193.020508, 139.651291, 5.472856, 'Misha - Action list - Set Orientation'),
(1020400, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Misha - Action list  - Despawn');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (39264, 39220);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 39264, 0, 0, 29, 1, 21514, 30, 0, 1, 0, 0, '', "Sablemane's Trap Require Gorgrom the Dragon-Eater not around"),
(17, 0, 39220, 0, 0, 29, 1, 21514, 30, 0, 1, 0, 0, '', "Sablemane's Trap Require Gorgrom the Dragon-Eater not around"),
(17, 0, 39264, 0, 0, 28, 0, 10802, 0, 0, 1, 0, 0, '', "Sablemane's Trap RequireGorgrom the Dragon-Eater not Completed"),
(17, 0, 39220, 0, 0, 28, 0, 10723, 0, 0, 1, 0, 0, '', "Sablemane's Trap RequireGorgrom the Dragon-Eater not Completed");

SET @ENTRY := 27131;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,10000,15000,10000,15000,5,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grizzly Bear - Out of Combat - Play Emote 7");

SET @ENTRY := 2713100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;

DELETE FROM `vehicle_template_accessory` WHERE `entry`=27131;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(27131,27438,0,1, 'Grizzly Bear - Rainbow Trout');

-- Creature Gossip_menu_option Update from sniff
UPDATE `gossip_menu_option` SET `menu_id`=9528 WHERE `menu_id`=21250;
UPDATE `gossip_menu_option` SET `action_menu_id`=9527 WHERE `action_menu_id`=50423;
UPDATE `gossip_menu_option` SET `action_menu_id`=9521 WHERE `action_menu_id`=50424;
UPDATE `gossip_menu_option` SET `action_menu_id`=9526 WHERE `action_menu_id`=50425;
UPDATE `gossip_menu_option` SET `action_menu_id`=9525 WHERE `action_menu_id`=50426;
UPDATE `gossip_menu_option` SET `action_menu_id`=9681 WHERE `menu_id`=9680;
UPDATE `gossip_menu_option` SET `action_menu_id`=9696 WHERE `menu_id`=9695;
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9302,9303,9304,9305,9422,9461,9462,9474,9501,9532,9536,9568,9586,9594,9595,9610,9611,9612,9653,9696) AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(9302,0,0, 'Worry no more, taunka. The Horde will save and protect you and your people, but first you must swear allegiance to the Warchief by taking the blood oath of the Horde.',1,1,9305,0,0,0, ''),
(9303,0,0, 'For the Horde!\r\n\r\nArm yourself from the crates that surround us and report to Agmar''s Hammer, east of here. Your first trial as a member of the Horde is to survive the journey.\r\n\r\nLok''tar ogar!',1,1,0,0,0,0, ''),
(9304,0,0, 'Then repeat after me: "Lok''tar ogar! Victory or death - it is these words that bind me to the Horde. For they are the most sacred and fundamental of truths to any warrior of the Horde.\r\n\r\nI give my flesh and blood freely to the Warchief. I am the instrument of my Warchief''s desire. I am a weapon of my Warchief''s command.\r\n\r\nFrom this moment until the end of days I live and die - For the Horde!"',1,1,9303,0,0,0, ''),
(9305,0,0, 'Yes, taunka. Retribution is a given right of all members of the Horde.',1,1,9304,0,0,0, ''),
(9422,0,0, 'I seem to have misplaced your Shredder Control Device... might you have another?',1,1,0,0,0,0, ''),
(9461,0,0, 'Greetings High Chief. Would you do me the honor of accepting my invitation to join the Horde as an official member and leader of the Taunka?',1,1,9462,0,0,0, ''),
(9462,0,0, 'It is you who honor me, High Chief. Please read from this scroll. It is the oath of allegiance.',1,1,0,0,0,0, ''),
(9474,0,1, 'Let me browse your goods.',3,128,0,0,0,0, ''),
(9501,0,0, 'Agent Skully, I need you to use the banshee''s magic mirror on me again!',1,1,9538,0,0,0, ''),
(9532,0,0, 'Your eminence, may I have a word in private?',1,1,9536,0,0,0, ''),
(9536,0,0, 'I am ready, your grace. <kiss the ring>',1,1,9535,0,0,0, ''),
(9568,0,0, 'We need to get into the fight. Are you ready?',1,1,9569,0,0,0, ''),
(9586,0,0, 'Why have I been sent back to this particular place and time?',1,1,9594,0,0,0, ''),
(9594,0,0, 'What was this decision?',1,1,9595,0,0,0, ''),
(9595,0,0, 'So how does the Infinite Dragonflight plan to interfere?',1,1,9596,0,0,0, ''),
(9610,0,0, 'What do you think they''re up to?',1,1,9611,0,0,0, ''),
(9611,0,0, 'You want me to do what?',1,1,9612,0,0,0, ''),
(9612,0,0, 'Very well, Chromie.',1,1,9613,0,0,0, ''),
(9653,0,0, 'Yes, my Prince. We are ready.',1,1,0,0,0,0, ''),
(9696,0,0, 'For Lordaeron!',1,1,0,0,0,0, '');

UPDATE `gossip_menu` SET `entry`=9350 WHERE `entry`=21238;
UPDATE `gossip_menu` SET `entry`=9136 WHERE `entry`=21243;
UPDATE `gossip_menu` SET `entry`=9151 WHERE `entry`=21244;
UPDATE `gossip_menu` SET `entry`=9474 WHERE `entry`=21245;
UPDATE `gossip_menu` SET `entry`=9528 WHERE `entry`=21250;
UPDATE `gossip_menu` SET `entry`=9527 WHERE `entry`=50423;
UPDATE `gossip_menu` SET `entry`=9521 WHERE `entry`=50424;
UPDATE `gossip_menu` SET `entry`=9526 WHERE `entry`=50425;
UPDATE `gossip_menu` SET `entry`=9525 WHERE `entry`=50426;
-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=9302 AND `text_id`=12611;
DELETE FROM `gossip_menu` WHERE `entry`=9303 AND `text_id`=12620;
DELETE FROM `gossip_menu` WHERE `entry`=9304 AND `text_id`=12619;
DELETE FROM `gossip_menu` WHERE `entry`=9305 AND `text_id`=12618;
DELETE FROM `gossip_menu` WHERE `entry`=9461 AND `text_id`=12721;
DELETE FROM `gossip_menu` WHERE `entry`=9462 AND `text_id`=12722;
DELETE FROM `gossip_menu` WHERE `entry`=9532 AND `text_id`=12846;
DELETE FROM `gossip_menu` WHERE `entry`=9535 AND `text_id`=12849;
DELETE FROM `gossip_menu` WHERE `entry`=9536 AND `text_id`=12848;
DELETE FROM `gossip_menu` WHERE `entry`=9538 AND `text_id`=12851;
DELETE FROM `gossip_menu` WHERE `entry`=9568 AND `text_id`=12899;
DELETE FROM `gossip_menu` WHERE `entry`=9569 AND `text_id`=12900;
DELETE FROM `gossip_menu` WHERE `entry`=9586 AND `text_id`=13471;
DELETE FROM `gossip_menu` WHERE `entry`=9653 AND `text_id`=13076;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9302,12611),
(9303,12620),
(9304,12619),
(9305,12618),
(9461,12721),
(9462,12722),
(9532,12846),
(9535,12849),
(9536,12848),
(9538,12851),
(9568,12899),
(9569,12900),
(9586,13471),
(9653,13076);

-- Creature Gossip_menu_id Update from sniff
UPDATE `creature_template` SET `gossip_menu_id`=9136 WHERE `entry`=25197; -- King Mrgl-Mrgl <D.E.H.T.A.>
UPDATE `creature_template` SET `gossip_menu_id`=9151 WHERE `entry`=25326; -- Overlord Bor'gorok
UPDATE `creature_template` SET `gossip_menu_id`=9474 WHERE `entry`=25736; -- Supply Master Taz'ishi <Poison & Reagents>
UPDATE `creature_template` SET `gossip_menu_id`=9302, `npcflag`=`npcflag`|1, `AIName`='SmartAI' WHERE `entry`=26179; -- Taunka''le Refugee
UPDATE `creature_template` SET `gossip_menu_id`=9302, `npcflag`=`npcflag`|1, `AIName`='SmartAI' WHERE `entry`=26184; -- Taunka''le Refugee
UPDATE `creature_template` SET `gossip_menu_id`=9350 WHERE `entry`=26538; -- Nargo Screwbore <Durotar Zeppelin Master>
UPDATE `creature_template` SET `gossip_menu_id`=9461 WHERE `entry`=26810; -- Roanauk Icemist
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=27056; -- Sentinel Sweetspring <Stable Master>
UPDATE `creature_template` SET `gossip_menu_id`=9532 WHERE `entry`=27245; -- High Abbot Landgren
UPDATE `creature_template` SET `gossip_menu_id`=9528 WHERE `entry`=27425; -- Darrok
UPDATE `creature_template` SET `gossip_menu_id`=9610 WHERE `entry`=27915; -- Chromie
UPDATE `creature_template` SET `gossip_menu_id`=9656 WHERE `entry`=28126; -- Don Carlos

DELETE FROM `creature_text` WHERE `entry` IN (26179,26184);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26179,0,0,'Victory or death! For the Horde!',14,1,100,15,0,0,'Taunka''le Refugee'),
(26184,0,0,'Victory or death! For the Horde!',14,1,100,15,0,0,'Taunka''le Refugee');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=9568 AND `SourceEntry`=12899;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=9586 AND `SourceEntry`=13471;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9302 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9422 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9461 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9501 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9568 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9586 AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,9568,12899,0,0,9,0,12372,0,0,0,0,'','Wyrmrest Defender - Show different gossip if player has taken quest Defending Wyrmrest Temple'),
(14,9586,13471,0,0,2,0,37888,1,0,0,0,'','Chromie - Show different gossip if player has item Arcane Disruptor'),
(15,9302,0,0,0,9,0,11983,0,0,0,0,'','Taunka''le Refugee - Show gossip option only if player has taken quest Blood Oath of the Horde'),
(15,9422,0,0,0,9,0,12050,0,0,0,0,'','Xink - Show gossip option only if player has taken quest Lumber Hack'),
(15,9422,0,0,0,2,0,36734,1,0,1,0,'','Xink - Show gossip option only if player has no item Xink''s Shredder Control Device'),
(15,9422,0,0,1,9,0,12052,0,0,0,0,'','Xink - Show gossip option only if player has taken quest Harp on This!'),
(15,9422,0,0,1,2,0,36734,1,0,1,0,'','Xink - Show gossip option only if player has no item Xink''s Shredder Control Device'),
(15,9461,0,0,0,9,0,12140,0,0,0,0,'','Roanauk Icemist - Show gossip option only if player has taken quest All Hail Roanauk!'),
(15,9501,0,0,0,9,0,12274,0,0,0,0,'','Agent Skully - Show gossip option only if player has taken quest A Fall From Grace'),
(15,9501,0,0,0,1,0,48761,0,0,1,0,'','Agent Skully - Show gossip option only if player has no aura Scarlet Raven Priest Image'),
(15,9501,0,0,0,1,0,48763,0,0,1,0,'','Agent Skully - Show gossip option only if player has no aura Scarlet Raven Priest Image'),
(15,9568,0,0,0,9,0,12372,0,0,0,0,'','Wyrmrest Defender - Show gossip option only if player has taken quest Defending Wyrmrest Temple'),
(15,9586,0,0,0,2,0,37888,1,0,1,0,'','Chromie - Show gossip option only if player has no item Arcane Disruptor');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (26660,27350);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26179,26184,26660,27350) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=26179*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26179,0,0,1,62,0,100,0,9303,0,0,0,11,47029,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Spellcast Taunka Sworn In'),
(26179,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Close gossip'),
(26179,0,2,3,61,0,100,0,0,0,0,0,33,26179,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Quest credit'),
(26179,0,3,4,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Remove npcflag gossip'),
(26179,0,4,5,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188252,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26179,0,5,6,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188253,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26179,0,6,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188254,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26179,0,7,0,34,0,100,0,0,1,0,0,80,26179*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On movement inform - Run script'),
(26179,0,8,9,34,0,100,0,0,2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On movement inform - Despawn'),
(26179,0,9,0,61,0,100,0,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Add npcflag gossip'),
(26184,0,0,1,62,0,100,0,9303,0,0,0,11,47029,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Spellcast Taunka Sworn In'),
(26184,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Close gossip'),
(26184,0,2,3,61,0,100,0,0,0,0,0,33,26179,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Quest credit'),
(26184,0,3,4,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Remove npcflag gossip'),
(26184,0,4,5,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188252,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26184,0,5,6,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188253,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26184,0,6,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188254,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26184,0,7,0,34,0,100,0,0,1,0,0,80,26179*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On movement inform - Run script'),
(26184,0,8,9,34,0,100,0,0,2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On movement inform - Despawn'),
(26184,0,9,0,61,0,100,0,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Add npcflag gossip'),
(26660,0,0,1,62,0,100,0,9422,0,0,0,11,52872,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Xink - On gossip option select - Spellcast Forceitem Xink''s Shredder'),
(26660,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Xink - On gossip option select - Close gossip'),
(27350,0,0,0,62,0,100,0,9501,0,0,0,11,48762,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Agent Skully - On gossip option select - Spellcast A Fall from Grace: Scarlet Raven Priest Image - Master'),

(26179*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,20,188252,20,0,0,0,0,0, 'Taunka''le Refugee script - Turn to Recovered Horde Armaments'),
(26179*100,9,1,0,0,0,100,0,1100,1100,0,0,5,381,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Play emote'),
(26179*100,9,2,0,0,0,100,0,2500,2500,0,0,5,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Cancel emote'),
(26179*100,9,3,0,0,0,100,0,0,0,0,0,11,47024,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Spellcast Taunka Transform'),
(26179*100,9,4,0,0,0,100,0,2200,2200,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Say line'),
(26179*100,9,5,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Set run'),
(26179*100,9,6,0,0,0,100,0,4700,4700,0,0,69,2,0,0,0,0,0,8,0,0,0,3680.874,2875.829,91.52616,0, 'Taunka''le Refugee script - Move to position');


UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` =38038;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (38268,38272,38278,38279,38280,38281,38282,42619);

DELETE FROM `creature` WHERE `id`=38272;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(96803, 38272, 1, 0, 0, 1, 1, 30951, 0, -1189.37, 5415.94, 12.0427, 0.000932, 90, 0, 0, 0, 0, 0, 0, 0, 0),
(15466533, 38272, 1, 14, 4865, 1, 65535, 0, 1, -1118.79, -5455.3, 11.9818, 0.738655, 300, 0, 0, 71, 0, 0, 0, 0, 0),
(15466532, 38272, 1, 14, 4865, 1, 65535, 0, 1, -1115.83, -5465.01, 12.3657, 4.56669, 300, 0, 0, 55, 0, 0, 0, 0, 0),
(97893, 38272, 1, 0, 0, 1, 1, 30935, 0, -1123.57, -5494.6, 12.0624, 2.74856, 90, 0, 0, 0, 0, 0, 0, 0, 0),
(15466534, 38272, 1, 14, 4865, 1, 65535, 0, 1, -1113.36, -5458.16, 11.9443, 1.24916, 300, 0, 0, 55, 0, 0, 0, 0, 0),
(127693, 38272, 1, 0, 0, 1, 1, 0, 0, -1120.24, -5443.41, 12.0594, 6.0481, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(127717, 38272, 1, 0, 0, 1, 1, 0, 0, -1191.01, -5417.99, 12.0427, 0.000932183, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(15466535, 38272, 1, 14, 4865, 1, 65535, 0, 1, -1104.94, -5436.83, 11.9737, 4.16849, 300, 0, 0, 71, 0, 0, 0, 0, 0),
(15466536, 38272, 1, 14, 4865, 1, 65535, 0, 1, -1098.18, -5444.87, 12.187, 3.33361, 300, 0, 0, 71, 0, 0, 0, 0, 0),
(15466537, 38272, 1, 14, 4865, 1, 65535, 0, 1, -1188.65, -5415.76, 11.9386, 5.21857, 300, 0, 0, 55, 0, 0, 0, 0, 0),
(15466538, 38272, 1, 14, 4865, 1, 65535, 0, 1, -1179.92, -5412.23, 11.9395, 4.77168, 300, 0, 0, 71, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=38268;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(91470, 38268, 1, 0, 0, 1, 1, 30953, 0, -1189.09, -5520.44, 12.0683, 3.12162, 90, 0, 0, 71, 0, 0, 0, 0, 0),
(15466539, 38268, 1, 14, 4865, 1, 65535, 0, 1, -1169.3, -5448.59, 12.0783, 5.32695, 300, 0, 0, 55, 0, 0, 0, 33028, 0),
(97314, 38268, 1, 0, 0, 1, 1, 30953, 0, -1153.26, -5388.53, 12.0603, 1.74057, 90, 0, 0, 71, 0, 0, 0, 0, 0),
(97914, 38268, 1, 0, 0, 1, 1, 30937, 0, -1156.79, -5590.38, 12.058, -2.32243, 90, 0, 0, 55, 0, 0, 0, 0, 0),
(97931, 38268, 1, 0, 0, 1, 1, 30953, 0, -1203.05, -5402.86, 12.0528, -0.006392, 90, 0, 0, 55, 0, 0, 0, 0, 0),
(97962, 38268, 1, 0, 0, 1, 1, 30953, 0, -1167.5, -5430.21, 12.3762, 2.73025, 90, 0, 0, 55, 0, 0, 0, 0, 0),
(15466545, 38268, 1, 14, 4865, 1, 65535, 0, 1, -1165.92, -5425.52, 12.5484, 3.04694, 300, 0, 0, 71, 0, 0, 0, 33028, 0),
(15466540, 38268, 1, 14, 4865, 1, 65535, 0, 1, -1173.04, -5451.69, 12.3726, 5.60105, 300, 0, 0, 42, 0, 0, 0, 33028, 0),
(15466542, 38268, 1, 14, 4865, 1, 65535, 0, 1, -1161.39, -5444.2, 12.3347, 5.13296, 300, 0, 0, 55, 0, 0, 0, 33028, 0),
(15466543, 38268, 1, 14, 4865, 1, 65535, 0, 1, -1192.23, -5449.44, 11.9773, 3.97685, 300, 0, 0, 71, 0, 0, 0, 33028, 0),
(15466544, 38268, 1, 14, 4865, 1, 65535, 0, 1, -1169.11, -5433.44, 12.1838, 2.75792, 300, 0, 0, 42, 0, 0, 0, 33028, 0),
(15466547, 38268, 1, 14, 4865, 1, 65535, 0, 1, -1181.58, -5436.39, 11.9246, 1.3819, 300, 0, 0, 71, 0, 0, 0, 33028, 0);

-- Novice Darkspear Warrior
SET @ENTRY := 38268;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1200,1700,1800,2000,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,"Play ONESHOT_ATTACK1H emote"),
(@ENTRY,0,1,0,1,0,100,0,0,4000,2000,10000,5,440,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chance to Dodge"),
(@ENTRY,0,2,0,1,0,100,0,0,4000,2000,10000,5,54,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chance for Special");

-- Novice Darkspear Rogue
SET @ENTRY := 38272;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1200,1700,1800,2000,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,"Play ONESHOT_ATTACK1H emote"),
(@ENTRY,0,1,0,1,0,100,0,0,4000,2000,10000,5,440,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chance to Dodge");

-- Novice Darkspear Warlock
SET @ENTRY := -127697;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,3000,5000,0,0,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,'Summon Imp OOC'),
(@ENTRY,0,1,0,1,0,100,0,4000,5000,6000,7000,11,69607,0,0,0,0,0,10,98095,38038,0,0,0,0,0,'Cast Shadowbolt OOC');

-- Novice Darkspear Warlock
SET @ENTRY := -97644;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,3000,5000,0,0,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,'Summon Imp OOC'),
(@ENTRY,0,1,0,1,0,100,0,4000,5000,6000,7000,11,69607,0,0,0,0,0,10,127696,38038,0,0,0,0,0,'Cast Shadowbolt OOC');

-- Novice Darkspear Warlock
SET @ENTRY := -91545;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,3000,5000,0,0,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,'Summon Imp OOC'),
(@ENTRY,0,1,0,1,0,100,0,4000,5000,6000,7000,11,69607,0,0,0,0,0,10,127711,38038,0,0,0,0,0,'Cast Shadowbolt OOC');

SET @ENTRY := 38278;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `unit_flags` = 557316, `type_flags` = 266240 WHERE `entry` = 38278;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 2 WHERE `entry` = 38278;
-- Novice Darkspear Priest
SET @ENTRY := -98199;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,1,0,100,0,10000,10000,20000,20000,11,9734,0,0,0,0,0,10,127511,38038,0,0,0,0,0,'Cast Holy Smite OOC');



