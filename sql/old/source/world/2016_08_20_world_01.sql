DELETE FROM `creature` WHERE (`id`=52858);

DELETE FROM `creature_addon` WHERE `guid` IN (80262,15462795,15462794,163848,200879,203504,27865,30954,111064,218177,162675,108762,31347,107967,89773,19720,27089);
DELETE FROM `gameobject` WHERE (`id`=184820);
DELETE FROM `gameobject` WHERE (`id`=3001672);
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (15271,15273,15294,42224,46268);

UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 47203;


DELETE FROM `vehicle_template_accessory` WHERE `entry`=29460;
	INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
	(29460, 29458, 0, 1, "Brunnhildar Drakerider", 8, 0);

DELETE FROM vehicle_template_accessory WHERE entry IN (35491,38500,28009,28451,30204,29351,29708,30174,29460,29500,29358,25968,38431,38585,38586,38431,38585,38586,28669,39860,36794
,25881,33114,33114,34776,34776,34776,35069,35069,35069,42015,28710,50473,48476,29863,27761,42008,39251,48805,48805,48805,48805,48805,48806,48806,48806,48806,48806,48721,48721,48721
,48721,48721,37598,37598,37598,37598,37676,35995,36514,47204,47204,47204,47204,47204,47204,47204,47204,46748,43561,33217,33297,33298,33299,33300,33301,33316,33317,33318,33319,33320,33321,33322,33323,33324,33408,33409,33414,33416,33418);
INSERT INTO `vehicle_template_accessory` VALUES (33217, 35328, 0, 1, 'Stormwind Steed', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33297, 35328, 0, 1, 'Stormwind Steed', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33298, 35332, 0, 1, 'Darnassian Nightsaber', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33299, 35323, 0, 1, 'Darkspear Raptor', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33300, 35325, 0, 1, 'Thunder Bluff Kodo', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33301, 35331, 0, 1, 'Gnomeregan Mechanostrider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33316, 35329, 0, 1, 'Ironforge Ram', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33317, 35331, 0, 1, 'Gnomeregan Mechanostrider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33318, 35330, 0, 1, 'Exodar Elekk', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33319, 35332, 0, 1, 'Darnassian Nightsaber', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33320, 35314, 0, 1, 'Orgrimmar Wolf', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33321, 35323, 0, 1, 'Darkspear Raptor', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33322, 35325, 0, 1, 'Thunder Bluff Kodo', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33323, 35326, 0, 1, 'Silvermoon Hawkstrider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33324, 35327, 0, 1, 'Forsaken Warhorse', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33408, 35329, 0, 1, 'Ironforge Ram', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33409, 35314, 0, 1, 'Orgrimmar Wolf', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33414, 35327, 0, 1, 'Forsaken Warhorse', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33416, 35330, 0, 1, 'Exodar Elekk', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33418, 35326, 0, 1, 'Silvermoon Hawkstrider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35491, 35451, 0, 0, 'Death Knight', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38500, 38493, 0, 0, 'Argent Crusader', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (28009, 28093, 0, 0, 'Sholazar Tickbird', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (28451, 28468, 0, 0, 'Hemet Nesingwary', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (30204, 30268, 0, 0, 'Webbed Crusader', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29351, 29558, 0, 0, 'Frost Giant Target Bunny', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29708, 29805, 0, 1, 'Captive Proto Drake Beam Bunny', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (30174, 30175, 0, 0, 'Hyldsmeet Bear Rider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29460, 29458, 0, 0, 'Brunnhildar Drakerider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29500, 29498, 0, 0, 'Brunnhildar Warmaiden', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29358, 29558, 0, 0, 'Frost Giant Target Bunny', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (25968, 25801, 0, 0, 'Nedar, Lord of Rhinos', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38431, 38309, 0, 0, 'Slimy Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38585, 38309, 0, 0, 'Slimy Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38586, 38309, 0, 0, 'Slimy Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38431, 38308, 1, 1, 'Ooze Covered Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38585, 38308, 1, 1, 'Ooze Covered Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38586, 38308, 1, 1, 'Ooze Covered Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (28669, 28717, 1, 1, 'Flying Fiend', 8, 0);
INSERT INTO `vehicle_template_accessory` VALUES (39860, 39264, 0, 0, 'Gnomeregan Mechano-Tank Pilot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (36794, 36658, 0, 0, 'Scourgelord Tyrannus', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (25881, 25802, 0, 0, 'Kaw the Mammoth Destroyer mounted on Moria', 5, 0);
INSERT INTO `vehicle_template_accessory` VALUES (33114, 33142, 1, 0, 'Overload Control Device', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33114, 33143, 2, 0, 'Leviathan Defense Turret', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (34776, 34777, 7, 0, 'Isle of Conquest Siege Engine  - main turret (ally)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (34776, 36356, 1, 0, 'Isle of Conquest Siege Engine  - flame turret 1 (ally)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (34776, 36356, 2, 0, 'Isle of Conquest Siege Engine  - flame turret 2 (ally)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35069, 36355, 7, 0, 'Isle of Conquest Siege Engine - main turret (horde)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35069, 34778, 1, 0, 'Isle of Conquest Siege Engine - flame turret 1 (horde)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35069, 34778, 2, 0, 'Isle of Conquest Siege Engine - flame turret 2 (horde)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (42015, 42017, 0, 0, 'Gnomish Bomber', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (28710, 28646, 0, 1, 'Pilot Vic', 7, 0);
INSERT INTO `vehicle_template_accessory` VALUES (50473, 50472, 0, 1, 'Earthen Ring Shaman', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48476, 48477, 0, 1, 'Earthen Ring Shaman', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29863, 28518, 0, 1, 'Persistence', 8, 0);
INSERT INTO `vehicle_template_accessory` VALUES (27761, 27535, 0, 1, 'Fordragon Battle Steed', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (42008, 42010, 0, 1, 'Dark Iron Golem', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (39251, 39245, 0, 1, 'Dark Iron Golem', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48340, 0, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48341, 1, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48341, 2, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48342, 3, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48343, 4, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48340, 0, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48341, 1, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48341, 2, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48342, 3, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48343, 4, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48340, 0, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48341, 1, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48341, 2, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48342, 3, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48343, 4, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37598, 37599, 0, 1, 'Gasbot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37598, 37599, 1, 1, 'Gasbot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37598, 37599, 2, 1, 'Gasbot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37598, 37599, 3, 1, 'Gasbot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37676, 37680, 0, 1, 'Hot Rod - Sassy Hardwrench', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35995, 36042, 0, 0, 'Strangle Vine', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (36514, 36403, 0, 1, 'Sling Rocket', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 0, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 1, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 2, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 3, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 4, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 5, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 6, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 7, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (46748, 46749, 0, 1, 'Stonard Kodo Beast', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (43561, 43560, 0, 0, 'Smilin\' Timmy Sticks', 6, 30000);
-- Horde Cannon 
UPDATE `creature_template` SET `npcflag` = '16777216', `unit_flags` = '262148', `dynamicflags` = '8', `spell1` = '84575', `VehicleId` = '244', `mingold` = '15', `maxgold` = '33', `mechanic_immune_mask` = '613097436' WHERE `entry` = 45263;
DELETE FROM npc_spellclick_spells WHERE npc_entry=45263;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(45263, 60962, 1, 0);
-- Horde Hauler 
UPDATE npc_spellclick_spells SET cast_flags=1 WHERE npc_entry=44731;
-- Horde Haulder 
DELETE FROM vehicle_template_accessory WHERE entry=44731;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(44731, 44734, 0, 0, 'Horde Engineer on Horde Hauler', 6, 30000),
(44731, 44732, 1, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44732, 3, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 4, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 5, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 6, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000);
-- Fenwick Thatros 
DELETE FROM creature_text WHERE  entry=47008;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(47008, 0, 0, 'All I wanted was a little peace and quiet!', 1, 0, 100, 0, 0, 0, 'Fenwick Thatros 1');
-- Fiona's Caravan
DELETE FROM vehicle_template_accessory WHERE entry=45423;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(45423, 45431, 0, 0, 'Gidwin Goldbraids on Caravan', 6, 30000),
(45423, 45417, 1, 0, 'Fiona on Caravan', 6, 30000),
(45423, 45729, 2, 0, 'Fiona on Caravan', 6, 30000);
DELETE FROM vehicle_template_accessory WHERE entry=45400;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(45400, 45431, 0, 0, 'Gidwin Goldbraids on Caravan', 6, 30000),
(45400, 45417, 1, 0, 'Fiona on Caravan', 6, 30000),
(45400, 45729, 2, 0, 'Fiona on Caravan', 6, 30000);
UPDATE creature_template SET vehicleId=1104 WHERE entry=45423;
DELETE FROM npc_spellclick_spells WHERE npc_entry IN   (25881,39860,38586,38585,38431,25968,28451,28009,35491,33418,33416,33414,33409,33408,33301,33300,33299,33298,33297,42015,50473,48476,29863,42008,39251,48805,48806,48721,37598,37676,35995,36514,47204,46748,43561,45400);
INSERT INTO `npc_spellclick_spells` VALUES ('45400', '86807', '1', '0');
INSERT INTO `npc_spellclick_spells` VALUES (25881, 46260, 0, 0);
INSERT INTO `npc_spellclick_spells` VALUES (25968, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (28009, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (28451, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (29863, 46598, 0, 1);
INSERT INTO `npc_spellclick_spells` VALUES (33297, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33298, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33299, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33300, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33301, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33408, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33409, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33414, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33416, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33418, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (35491, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (35995, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (36514, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (37598, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (37676, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (38431, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (38585, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (38586, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (39251, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (39860, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (42008, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (42015, 78357, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (43561, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (46748, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (47204, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48476, 88258, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48721, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48805, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48806, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (50473, 91271, 1, 0);
UPDATE creature_template SET npcflag=16777216 WHERE entry IN (28451,39251,39860,42008);
DELETE FROM creature_equip_template WHERE entry=45431;
INSERT INTO `creature_equip_template` VALUES ('45431', '1', '19104', '55428', '0');

UPDATE `npc_spellclick_spells` SET `spell_id`=46598 WHERE `npc_entry`=29460;
UPDATE `npc_spellclick_spells` SET `spell_id`=46598 WHERE `npc_entry`=45423;

REPLACE INTO `npc_spellclick_spells` VALUES (29460, 46598, 0, 1);
REPLACE INTO `npc_spellclick_spells` VALUES (45423, 46598, 0, 1);

UPDATE gameobject_template SET ScriptName = "go_ethereal_teleport_pad" WHERE entry = 184073;

-- Hack fix The Eye of the Storm (28805, 28826)
-- Waters of Farseeing SAI
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', `ScriptName`='' WHERE `entry` IN (207414, 207416);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (207414, 207416) AND `source_type`=1;
INSERT INTO `smart_scripts` 
(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(207414, 1, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 33, 50054, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waters of Farseeing - On gossip hello - Killcredit'),
(207414, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 94687, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waters of Farseeing - On link - Remove Waters of Farseeing'),
(207416, 1, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 33, 50054, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waters of Farseeing - On gossip hello - Killcredit'),
(207416, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 94687, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waters of Farseeing - On link - Remove Waters of Farseeing');


-- Fixed Quest The Maelstrom (27203)
-- Spawn Portals to the Maelstrom
DELETE FROM `gameobject` WHERE `id`=205268;
INSERT INTO `gameobject` 
(`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `state`) VALUES 
(@, 205268, 1, 1, 1, 2048.06, -4377.16, 98.9305, 0, 300, 1), -- Orgrimmar
(@, 205268, 0, 1, 1, -8209.03, 428.774, 118.164, 2.84488, 300, 1); -- Stormwind City

DELETE FROM `spell_target_position` WHERE `id`=84464;
INSERT INTO `spell_target_position` 
(`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84464, 0, 730, 851.307, 1067.76, -10.0183, 4.50656); -- Teleport to the Maelstrom

DELETE FROM `conditions` WHERE `SourceEntry`=84464 AND `SourceTypeOrReferenceId`=17;
INSERT INTO `conditions` 
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 84464, 0, 0, 28, 0, 27203, 0, 0, 0, 0, '', 'Show gossip if complete quest 27203 taken');
-- Trall
UPDATE `creature` SET `modelid`=0 WHERE `id`=45042; -- Remove model id

-- Hack fix Deepholm, Realm of Earth (27123)
-- Wyvern SAI
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=43713;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=43713;
INSERT INTO `smart_scripts` VALUES
(43713, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 28, 46598, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On just summoned - Remove Ride Vehicle Hardcoded'),
(43713, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 84700, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On link - Cast Teleport to Temple of Earth'),
(43713, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On link - Force despawn');

DELETE FROM `spell_target_position` WHERE `id`=84700;
INSERT INTO `spell_target_position` 
(`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84700, 0, 646, 1076.78, 537.665, -44.5984, 3.38237); -- Teleport to Temple of Earth

DELETE FROM `conditions` WHERE `SourceGroup`=45005 AND `SourceTypeOrReferenceId`=18;
INSERT INTO `conditions` 
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 45005, 81780, 0, 0, 28, 0, 27123, 0, 0, 0, 0, '', 'Show gossip if complete quest 27123 taken');

-- Hack fix Deepholm, Realm of Earth (27123)
-- Wyvern SAI
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=43713;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=43713;
INSERT INTO `smart_scripts` VALUES
(43713, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 28, 46598, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On just summoned - Remove Ride Vehicle Hardcoded'),
(43713, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 84700, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On link - Cast Teleport to Temple of Earth'),
(43713, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On link - Force despawn');

DELETE FROM `spell_target_position` WHERE `id`=84700;
INSERT INTO `spell_target_position` 
(`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84700, 0, 646, 1076.78, 537.665, -44.5984, 3.38237); -- Teleport to Temple of Earth

DELETE FROM `conditions` WHERE `SourceGroup`=45005 AND `SourceTypeOrReferenceId`=18;
INSERT INTO `conditions` 
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 45005, 81780, 0, 0, 28, 0, 27123, 0, 0, 0, 0, '', 'Show gossip if complete quest 27123 taken');


-- Fixed Quest The Maelstrom (Alliance)
UPDATE `quest_template` SET `NextQuestId`=27203 WHERE `Id` IN (27722, 27727);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `Id`=27203;

-- Portal to the Maelstrom
UPDATE `gameobject_template` SET `AIName`='', `ScriptName`='', `data0`=84464 WHERE `entry`=205268;

-- Correct position
DELETE FROM `spell_target_position` WHERE `id`=84464;
INSERT INTO `spell_target_position` 
(`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84464, 0, 730, 851.307, 1067.76, -10.0183, 4.50656); -- Portal to the Maelstrom

-- Wyvern
UPDATE `creature_template` SET `AIName`='', `ScriptName`='', `npcflag`=16777216, `IconName`='vehichleCursor' WHERE `entry`=45005;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=45005;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(45005, 81780, 1, 0); -- Force Cast Summon Wyvern


UPDATE `creature_template` SET `ScriptName`= 'npc_seaforium_depth_charge' WHERE `entry`=25401;
UPDATE `creature_template` SET `ScriptName`='npc_fezzix_geartwist' WHERE `entry`=25849;
UPDATE `creature_template` SET `ScriptName` = 'npc_defiant_troll' WHERE `entry` = 34830;
UPDATE `creature_template` SET `ScriptName`= 'mob_water_elemental' WHERE `entry`=25040;
UPDATE `creature_template` SET `ScriptName`='mob_freed_soul' WHERE `entry`=11136;
UPDATE creature_template SET ScriptName='npc_infused_crystal' WHERE entry=16364;
UPDATE `creature_template` SET `ScriptName`='boss_drakkari_elemental' WHERE `entry`=29573;