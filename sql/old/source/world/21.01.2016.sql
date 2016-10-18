UPDATE `quest_template` SET `Method` = 2, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 14243;
UPDATE `quest_template` SET `Method` = 2, `RequiredItemId1` = 0, `RequiredItemCount1` = 0 WHERE `Id` = 25202;
DELETE FROM `creature` WHERE `id`=1741;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(355585, 1741, 0, 85, 154, 1, 1, 0, 1, 1881.95, 1584.07, 90.1162, 0.423904, 300, 0, 0, 2, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=1736;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(31534, 1736, 0, 0, 0, 1, 1, 1590, 0, 1882.95, 1590.8, 89.9906, 5.81195, 90, 0, 0, 265080, 0, 0, 0, 0, 0);
DELETE FROM `creature_equip_template` WHERE (`entry`=1505);
DELETE FROM `npc_vendor` WHERE `item` IN (2512,2515,3030,3464,9399,11285,19316,18042,12654,28053,24417,28056,30611,31949,33803,34581,31737,30319,41165,41586,52021,2516,8067,4960,2519,8068,5568,3033,8069,3465,10512,11284,10513,19317,15997,11630,13377,28060,23772,28061,30612,32883,32882,23773,34582,31735,41164,41584,52020);
DELETE FROM `creature_loot_template` WHERE `Item` IN (2512,2515,3030,3464,9399,11285,19316,18042,12654,28053,24417,28056,30611,31949,33803,34581,31737,30319,41165,41586,52021,2516,8067,4960,2519,8068,5568,3033,8069,3465,10512,11284,10513,19317,15997,11630,13377,28060,23772,28061,30612,32883,32882,23773,34582,31735,41164,41584,52020);
DELETE FROM `gameobject_loot_template` WHERE `Item` IN (2512,2515,3030,3464,9399,11285,19316,18042,12654,28053,24417,28056,30611,31949,33803,34581,31737,30319,41165,41586,52021,2516,8067,4960,2519,8068,5568,3033,8069,3465,10512,11284,10513,19317,15997,11630,13377,28060,23772,28061,30612,32883,32882,23773,34582,31735,41164,41584,52020);
