DELETE FROM `creature_loot_template` WHERE (`entry`=52155);
INSERT INTO `creature_loot_template` VALUES 
(52155, 69600, 10, 100, 1, 1, 1),
(52155, 69601, 10, 100, 1, 1, 1),
(52155, 69602, 30, 100, 1, 1, 1),
(52155, 69603, 25, 100, 1, 1, 1),
(52155, 69604, 25, 100, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE (`entry`=52151);
INSERT INTO `creature_loot_template` VALUES 
(52151, 69609, 10, 100, 1, 1, 1),
(52151, 69608, 10, 100, 1, 1, 1),
(52151, 69606, 15, 100, 1, 1, 1),
(52151, 69605, 15, 100, 1, 1, 1),
(52151, 69607, 25, 100, 1, 1, 1),
(52151, 68823, 25, 100, 1, 1, 1);

UPDATE `creature_template` SET `lootid` = 47203 WHERE `entry` = 47203;
UPDATE `creature_template` SET `lootid` = 51661, `skinloot` = 0 WHERE `entry` = 51661;
UPDATE `creature_template` SET `lootid` = 51662, `skinloot` = 0 WHERE `entry` = 51662;
UPDATE `creature_template` SET `lootid` = 51663, `skinloot` = 0 WHERE `entry` = 51663;

DELETE FROM `event_scripts` WHERE (`id`=90000);
DELETE FROM `event_scripts` WHERE (`id`=90001);

DELETE FROM `spell_script_names` WHERE (`spell_id`=53);
INSERT INTO spell_script_names VALUE (53,'spell_rogue_backstab');

DELETE FROM `gameobject_loot_template` WHERE `entry`IN (13891,20691,27237,35330,195042,39488,186450,201706,204284,203247,195492,209895,207124);

UPDATE `creature_template` SET `ScriptName`= 'npc_barrier' WHERE `entry`=33248;
UPDATE `creature_template` SET `ScriptName`='npc_sassy_handwrench' WHERE `entry`='37680';

UPDATE `creature_template` SET `ScriptName`= "npc_shadowflame_flashfire" WHERE `entry` =54254;
UPDATE `creature_template` SET `ScriptName`= "npc_valeera_tele" WHERE `entry` =32378;
UPDATE `quest_template` SET `RequiredSourceItemCount1` = 0 WHERE `Id` = 13745;

UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55862;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 57890;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55308;
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` = 553120;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55312;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55417;
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` = 553081;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55418;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55866;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55265;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55416;
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` = 553080;
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` = 553082;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55864;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55865;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 55867;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 57875;
UPDATE `creature_template` SET `difficulty_entry_1` = 0, `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 57877;

UPDATE `creature` SET `spawnMask` = 1 WHERE `guid` = 268735;




















