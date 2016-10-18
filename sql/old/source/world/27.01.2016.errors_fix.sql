UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch_credit' WHERE `entry`=40301;
UPDATE `creature_template` SET `ScriptName`= 'npc_barrier' WHERE `entry`=81781;
UPDATE `creature_template` SET `ScriptName`= 'npc_ice_wave_1' WHERE `entry`=56104;
UPDATE creature_template SET VehicleId = 494, ScriptName = 'npc_king_greymanes_horse' WHERE entry = 35905;
UPDATE creature_template SET ScriptName = 'npc_krennan_aranas_c2' WHERE entry=35907;
UPDATE creature_template SET scriptname = "npc_alexstrasza" WHERE entry = 32295;
UPDATE creature_template SET scriptname = "npc_kalecgos_dw" WHERE entry = 56664;
UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch' WHERE `entry`=40312;
UPDATE `creature_template` SET `ScriptName`= 'npc_troll_volunteer' WHERE `entry` IN (40260,40264);
REPLACE INTO `spell_script_names` VALUES
(75420, 'spell_mount_check'),
(75102, 'spell_voljin_war_drums');
UPDATE `creature_template` SET `ScriptName`= 'mob_scorpid' WHERE `entry`=3125;
UPDATE `creature_template` SET `ScriptName`= 'npc_waystrider' WHERE `entry`=39337;
UPDATE `creature_template` SET `ScriptName`= 'npc_grand_tekla' WHERE `entry`=39325;
UPDATE `creature_template` SET `ScriptName`= 'npc_griswold_hanniston' WHERE `entry`=39353;
UPDATE `creature_template` SET `ScriptName`= 'npc_ghislania' WHERE `entry`=39351;
UPDATE `creature_template` SET `ScriptName`= 'npc_gaur_icehorn' WHERE `entry`=39352;
UPDATE `creature_template` SET `ScriptName`= 'npc_drowning_lizard' WHERE `entry`=39464;
UPDATE `creature_template` SET `ScriptName`= 'npc_fizzle' WHERE `entry`=3203;
UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000,`VehicleId`=300,`Spell1`=73851,`ScriptName`='npc_the_wolf' WHERE `entry`=39364;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=39364;
INSERT INTO `npc_spellclick_spells` VALUES
(39364,86319,1,0);
UPDATE `creature_template` SET `ScriptName`= 'npc_chipie_quest_giver_end_event' WHERE `entry`=34668;
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(91303, 'spell_chogall_conversion'),
(93203, 'spell_chogall_conversion'),
(93204, 'spell_chogall_conversion'),
(93205, 'spell_chogall_conversion'),
(81701, 'spell_chogall_corrupted_blood'),
(93187, 'spell_chogall_corrupted_blood'),
(93188, 'spell_chogall_corrupted_blood'),
(93189, 'spell_chogall_corrupted_blood'),
(81713, 'spell_chogall_corruption'),
(93175, 'spell_chogall_corruption'),
(93176, 'spell_chogall_corruption'),
(93177, 'spell_chogall_corruption'),
(81689, 'spell_chogall_corruption'),
(93184, 'spell_chogall_corruption'),
(93185, 'spell_chogall_corruption'),
(93186, 'spell_chogall_corruption'),
(81761, 'spell_chogall_corruption'),
(93172, 'spell_chogall_corruption'),
(93173, 'spell_chogall_corruption'),
(93174, 'spell_chogall_corruption'),
(82919, 'spell_chogall_corruption'),
(93108, 'spell_chogall_corruption'),
(93109, 'spell_chogall_corruption'),
(93110, 'spell_chogall_corruption'),
(82363, 'spell_chogall_corruption'),
(93169, 'spell_chogall_corruption'),
(93170, 'spell_chogall_corruption'),
(93171, 'spell_chogall_corruption'),
(93103, 'spell_chogall_corruption_bar'),
(81628, 'spell_chogall_summon_corrupting_adherent'),
(92393, 'spell_rupture_periodic'),
(92300, 'spell_crystal_storm'),
(81638, 'spell_crystal_barrage'),
(75846, 'spell_karsh_quicksilver_armor'),
(75854, 'spell_karsh_quicksilver_armor'),
(93567, 'spell_karsh_quicksilver_armor');
REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (725, 0, 'instance_the_stonecore', 0);
UPDATE `creature_template` SET `ScriptName` = 'mob_millhouse_manastorm' WHERE `entry` = 43391;
UPDATE `creature_template` SET `ScriptName` = 'stonecore_teleport' WHERE `entry` = 51396;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 51396;
UPDATE `instance_template` SET `script`='instance_the_stonecore' WHERE  `map`=725 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='boss_drakkari_elemental' WHERE `entry`=29573;
UPDATE `creature_template` SET `ScriptName`='npc_injured_rainspeaker_oracle' WHERE `entry`=28217;
REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (45524,"spell_dk_chains_of_ice");
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (85673,'spell_pal_word_of_glory');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (82327,'spell_paladin_holy_radiance');
DELETE FROM spell_script_names WHERE spell_id = 53;
INSERT INTO spell_script_names VALUES 
(53, "spell_rog_backstab");

