UPDATE `creature` SET `MovementType` = 1 WHERE `id`=46012;
DELETE FROM `creature_equip_template` WHERE (`entry`=582);
DELETE FROM `creature_equip_template` WHERE (`entry`=33446);
UPDATE `creature` SET `equipment_id` = 0 WHERE `id`=582;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id`=33446;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` IN (33446,2771,12816,11821,48704,3411,36056,37989,33266,33446,33266,38967,38306,10181,33446);
UPDATE `spell_group` SET `spell_id` = 51699 WHERE `id`=1039;
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` IN (528840,532971,532972,532979,100001,531430,531431,532980,529810,532975,532978,530930,521760,532977,532976,532974,532973) ;

DELETE FROM `creature_template_addon` WHERE (`entry`=42558);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (42558, 0, 0, 8, 0, 0, '54503 68442');

DELETE FROM `creature_template_addon` WHERE (`entry`=42046);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (42046, 0, 0, 0, 0, 0, '78357');

DELETE FROM `creature_template_addon` WHERE (`entry`=20748);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (20748, 0, 0, 0, 0, 0, 18950 );

DELETE FROM `creature_template_addon` WHERE (`entry`=582);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (582, 0, 0, 0, 1, 0, 81238 );
DELETE FROM `creature_template_addon` WHERE (`entry`=238);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (238, 0, 0, 0, 0, 65, 81238 );


DELETE FROM `creature_template_addon` WHERE (`entry`=47790);

DELETE FROM `creature_template_addon` WHERE (`entry`=42560);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (42560, 0, 0, 7, 0, 0, '54503  81238 ');

UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `id`=52834;
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `id`IN (53422,50419);
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `id`=36103;

UPDATE `quest_template` SET `RequiredSourceItemCount1` = 1, `RequiredSourceItemCount2` = 0 WHERE `Id` = 13745;

DELETE FROM `creature_template_addon` WHERE (`entry`=42560);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (42560, 0, 0, 7, 0, 0, '54503');
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 15462851;
UPDATE `creature` SET `spawnMask` = 0 WHERE `id` = 38038;























