UPDATE `gossip_menu_option` SET `option_id`=4, `npc_option_npcflag`=8192  WHERE `menu_id` =7147;

UPDATE `creature_template` SET `unit_flags` = 262464 WHERE `entry` = 43778;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 261174;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 261185;
UPDATE `creature_template` SET `dynamicflags` = 1, `skinloot` = 0 WHERE `entry` = 43778;

DELETE FROM `creature_template_addon` WHERE (`entry`=48439);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48439, 0, 0, 0, 1, 65, '');
UPDATE `creature_template` SET `unit_flags` = 537133126 WHERE `entry` = 48439;
UPDATE `creature_template` SET `unit_flags` = 570687552, `dynamicflags` = 41 WHERE `entry` = 48439;
UPDATE `creature_template` SET `modelid1` = 15880 , `modelid2` = 15880 , `unit_flags` = 33554434 WHERE `entry` = 48446;
UPDATE `creature_template` SET `mindmg` = 1, `maxdmg` = 1, `attackpower` = 1, `dmg_multiplier` = 1, `baseattacktime` = 1, `rangeattacktime` = 1, `unit_flags` = 0, `minrangedmg` = 1, `maxrangedmg` = 1, `rangedattackpower` = 1, `type` = 7 WHERE `entry` = 49521;
UPDATE `creature` SET `spawnMask` = 12 WHERE `guid` = 261496;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry` IN (20649, 20652, 20655, 4170, 4171, 11898, 11899, 47296, 47297, 206609, 206610, 206608, 196837, 207889, 152614);

UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=11898;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=11899;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=149045;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=149046;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=164871;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=175080;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176080;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176081;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176082;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176083;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176084;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176085;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176086;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176231;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176244;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176310;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=176495;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=177233;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=181056;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=181646;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=183169;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=183177;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=183202;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=183203;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=183407;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=183490;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=183788;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=184330;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20649;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20650;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20651;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20652;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20653;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20654;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20655;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20656;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20657;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=20808;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=210335;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=210336;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=210349;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=211023;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=211024;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=211050;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=211051;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=211052;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=211053;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=4170;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=4171;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=47296;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=47297;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=80022;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=80023;
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=85556;
UPDATE `creature` SET `spawnMask` = 3 WHERE `guid` = 261496;

UPDATE `creature_template` SET `scale`=5 WHERE `scale`=0.4;
UPDATE `creature_template` SET `scale`=4 WHERE `entry`=1553;

-- Scorpion SmartScript
DELETE FROM smart_scripts WHERE entryorguid = 3125 AND source_type = 0;
INSERT INTO smart_scripts (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES
(3125,0,0,0,0,0,100,0,4000,4500,32000,38000,11,79687,0,0,0,0,0,2,0,0,0,0,0,0,0,'Clattering Scorpid - In Combat - Cast \Poison\ (No Repeat)'),
(3125,0,1,0,0,0,100,0,2000,9000,15000,24000,11,73672,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Envenom'),
(3125,0,2,0,31,0,100,0,73672,0,0,0,33,39236,0,0,0,0,0,2,0,0,0,0,0,0,0,'Give Credit on Totem Aura');

-- Condition to give credit
DELETE FROM conditions WHERE Sourceentry = 3125 AND SourceTypeOrReferenceId = 22;
INSERT INTO conditions (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) 
VALUES
(22,3,3125,0,0,1,0,73673,1,0,0,0,0,'','SAI - Give kill credit when Aura');