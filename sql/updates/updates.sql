UPDATE `creature` SET `equipment_id` = 2 WHERE `equipment_id` != 0;
UPDATE `creature` SET `equipment_id` = 1 WHERE `equipment_id` = 0;

-- From game_event_model_equip
UPDATE `creature` SET `equipment_id` = 1 WHERE `guid` IN (12088, 12093, 12095, 79670, 79675, 79676, 79690, 79792, 79807, 79814);
UPDATE `game_event_model_equip` SET `equipment_id` = 2 WHERE `guid` IN (12088, 12093, 12095, 79670, 79675, 79676, 79690, 79792, 79807, 79814);
DELETE FROM `creature_equip_template` WHERE `entry` IN (1976, 23585, 424) AND `id`=2;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(1976, 2, 2715, 143, 0),
(23585, 2, 2715, 143, 0),
(424, 2, 2715, 143, 0);
-- Conversion from SAI
UPDATE `smart_scripts` SET `action_param1` = 1 WHERE `entryorguid` = 2523901 AND `source_type` = 9 AND `id` = 3;
UPDATE `smart_scripts` SET `action_param1` = 0 WHERE `entryorguid` = 2523900 AND `source_type` = 9 AND `id` = 2;
UPDATE `smart_scripts` SET `action_param1` = 2 WHERE `entryorguid` = 32720   AND `source_type` = 0 AND `id` = 0;
DELETE FROM `creature_equip_template` WHERE `entry` = 25239 AND `id`=1;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(25239, 1, 6829, 0, 0);
DELETE FROM `trinity_string` WHERE `entry` = 5036;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES 
(5036, 'EquipmentId: %u (Original: %u).');
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
DELETE FROM `spell_area` WHERE `spell`=68132 AND `area`=4741;
INSERT INTO `spell_area` (`spell`, `area`, `autocast`) VALUES
(68132, 4741, 1);
-- Issue 8590: Damage Boss ICC
-- Lord Marrowgar
UPDATE `creature_template` SET `dmg_multiplier`=55 WHERE `entry`=36612;
UPDATE `creature_template` SET `dmg_multiplier`=85 WHERE `entry`=37957;
UPDATE `creature_template` SET `dmg_multiplier`=75 WHERE `entry`=37958;
UPDATE `creature_template` SET `dmg_multiplier`=110 WHERE `entry`=37959;
-- Lady Deathwhisper
UPDATE `creature_template` SET `dmg_multiplier`=70 WHERE `entry`=36855;
UPDATE `creature_template` SET `dmg_multiplier`=100 WHERE `entry`=38106;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38296;
UPDATE `creature_template` SET `dmg_multiplier`=140 WHERE `entry`=38297;
-- Deathbringer Saurfang
UPDATE `creature_template` SET `dmg_multiplier`=60 WHERE `entry`=37813;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38402;
UPDATE `creature_template` SET `dmg_multiplier`=85 WHERE `entry`=38582;
UPDATE `creature_template` SET `dmg_multiplier`=120 WHERE `entry`=38583;
-- Festergut
UPDATE `creature_template` SET `dmg_multiplier`=75 WHERE `entry`=36626;
UPDATE `creature_template` SET `dmg_multiplier`=115 WHERE `entry`=37504;
UPDATE `creature_template` SET `dmg_multiplier`=100 WHERE `entry`=37505;
UPDATE `creature_template` SET `dmg_multiplier`=150 WHERE `entry`=37506;
-- Rotface
UPDATE `creature_template` SET `dmg_multiplier`=70 WHERE `entry`=36627;
UPDATE `creature_template` SET `dmg_multiplier`=100 WHERE `entry`=38390;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38549;
UPDATE `creature_template` SET `dmg_multiplier`=140 WHERE `entry`=38550;
-- Professor Putricide
UPDATE `creature_template` SET `dmg_multiplier`=60 WHERE `entry`=36678;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38431;
UPDATE `creature_template` SET `dmg_multiplier`=80 WHERE `entry`=38585;
UPDATE `creature_template` SET `dmg_multiplier`=120 WHERE `entry`=38586;
-- Blood Prince Council except Keleseth who is a caster
UPDATE `creature_template` SET `dmg_multiplier`=65 WHERE `entry` IN (37970,37973);
UPDATE `creature_template` SET `dmg_multiplier`=95 WHERE `entry` IN (38401,38400);
UPDATE `creature_template` SET `dmg_multiplier`=85 WHERE `entry` IN (38784,38771);
UPDATE `creature_template` SET `dmg_multiplier`=130 WHERE `entry` IN (38785,38772);
-- Blood Queen Lana'thel
UPDATE `creature_template` SET `dmg_multiplier`=60 WHERE `entry`=37955;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38434;
UPDATE `creature_template` SET `dmg_multiplier`=80 WHERE `entry`=38435;
UPDATE `creature_template` SET `dmg_multiplier`=120 WHERE `entry`=38436;
-- Sindragosa (and damage for Sindragosa 10 who hits only 1)
UPDATE `creature_template` SET `dmg_multiplier`=60, mindmg=509, maxdmg=683, attackpower=805 WHERE `entry`=36853;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38265;
UPDATE `creature_template` SET `dmg_multiplier`=80 WHERE `entry`=38266;
UPDATE `creature_template` SET `dmg_multiplier`=120 WHERE `entry`=38267;
-- Flags 128+2: creature is trigger-NPC (invisible to players only) + creature does not aggro (ignore faction/reputation hostility)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra`|2|128) WHERE `entry` IN (32195,32196,32197,32199);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=23 AND `SourceGroup`=12944 AND `SourceEntry` IN (20761,17051,17022,17018,17023,19444);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=23 AND `SourceGroup`=12944 AND `SourceEntry` IN (19219,17017,17025,19330,19448,17059,17060,17049,19206);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=23 AND `SourceGroup`=12944 AND `SourceEntry` IN (19220,19332,19333,19331,19449,19209,19208,19207,17053,17052);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=23 AND `SourceGroup`=12944 AND `SourceEntry` IN (19211,19210,19212,20040);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
-- Conditon rep Friendly
(23,12944,20761,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,17051,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,17022,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,17018,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,17023,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,19444,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
-- Conditon rep Honored
(23,12944,19219,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17017,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17025,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,19330,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,19448,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17059,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17060,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17049,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,19206,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
-- Conditon rep Revered
(23,12944,19220,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19332,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19333,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19331,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19449,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19209,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19208,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19207,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,17053,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,17052,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
-- Conditon rep Exalted 
(23,12944,19211,0,0,5,0,59,128,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Exalted with Thorium Brotherhood'),
(23,12944,19210,0,0,5,0,59,128,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Exalted with Thorium Brotherhood'),
(23,12944,19212,0,0,5,0,59,128,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Exalted with Thorium Brotherhood'),
(23,12944,20040,0,0,5,0,59,128,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Exalted with Thorium Brotherhood');
-- Fix quest: Gather the Orbs http://www.wowhead.com/quest=10859
-- ID indexes
-- Almost all is based on Untaught script, just corrected some stuff with sniff
SET @OrbCollectingTotem := 22333;
SET @LightOrb           := 20635;
SET @Script :=   @LightOrb * 100;
SET @BanishedState :=      32566;
SET @ArcaneExplosion :=    35426; -- such spells need delay to execute properly, that is why I made actionlist
-- Update templates
UPDATE `creature_template` SET `unit_flags`=unit_flags|0x02000000 WHERE `entry`=@LightOrb; -- sniff
-- Add SAI support for Light Orbs and Totem
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@LightOrb,@OrbCollectingTotem);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@LightOrb,@OrbCollectingTotem) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Script AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@OrbCollectingTotem,0,0,1,54,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@LightOrb,20,0,0,0,0,0, 'Orb collecting totem - On spawned - Set Data 0 1'),
(@OrbCollectingTotem,0,1,2,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Orb collecting totem - Linked with previous event - Store invoker'),
(@OrbCollectingTotem,0,2,0,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,@LightOrb,20,0,0,0,0,0, 'Orb collecting totem - Linked with previous event - Send stored target list 1'),
(@LightOrb,0,0,0,25,0,100,1,0,0,0,0,11,@BanishedState,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spawn/reset - Cast Purple Banish State'),
(@LightOrb,0,1,0,38,0,100,0,0,1,30000,30000,69,1,0,0,0,0,0,19,@OrbCollectingTotem,20,0,0,0,0,0, 'Light Orb - On Data Set 0 1 - Move to totem'),
(@LightOrb,0,2,3,34,0,100,1,8,1,0,0,11,@ArcaneExplosion,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - On point 1 reached - Cast arcane explosion'),
(@LightOrb,0,3,4,61,0,100,0,0,0,0,0,33,21929,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Light Orb - Linkedw with previous event - Call kill credit'),
(@LightOrb,0,4,0,61,0,100,0,0,0,0,0,80,@Script,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Linkedw with previous event - Start action list to display arcase explosion'),
(@Script,9,0,0,0,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Action 0 - Set unseen'),
(@Script,9,1,0,0,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Action 1 - Despawn in 100 ms');
-- Remove deprecated required spell cast that was blocking the credit, on top of that it had some nosense spell that has nothing to do with quest?!
UPDATE `quest_template` SET `requiredspellcast1`=0 WHERE `id`=10859;
ALTER TABLE `creature` CHANGE `equipment_id` `equipment_id` tinyint(3) signed NOT NULL DEFAULT '0';
ALTER TABLE `creature_equip_template` CHANGE `id` `id` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `game_event_model_equip` CHANGE `equipment_id` `equipment_id` tinyint(3) unsigned NOT NULL DEFAULT '0';

UPDATE `creature` SET `equipment_id`=0 WHERE `id` NOT IN (SELECT `entry` FROM `creature_equip_template`);

-- content
DELETE FROM `creature_equip_template` WHERE `entry` IN (25317, 2110, 26797, 25239) AND `id`=1;
DELETE FROM `creature_equip_template` WHERE `entry` IN (32720) AND `id`=2;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(25317, 1, 2178, 143, 0),
(2110, 1, 24324, 24324, 24319),
(26797, 1, 19970, 0, 0),
(25239, 1, 6829, 0, 0),
(32720, 2, 31308, 0, 0);

UPDATE `creature` SET `equipment_id`=0 WHERE `guid` IN (200908,200918,200968,200971,200980,200998,201004,201035,201050,201052,201068,201094,201103,201112,201113,201135,201149,201150,201192,201203,201206,201363,201438,201449,201486,201685,201710,201722,201740,201752,201756,201773,201782,201788,201814,201864,201908,201916,202023,202043,202146,202164,39317,39318,39319,39320,39321,39322,39323,39324,39325,39326,39327,39328,39329,39330,39331,39332,39333,40170,40171,40227,40563,40564,41319,41322,41323,41324,41325,41326,41327,41328,41669,41726,42616,42641,42668,42669,42680,42686,44193,44194,46975,47413,47414,47415,47416,47417,47418,47419,47420,47421,47422,47423,47424,47425,47426,47427,47428,47429,47430,47431,47445,47632,48383,49987,51458,51751,51982,51983,52926,52927,52928,52929,53166,53651,53844,53845,53846,53847,53848,53849,53850,53851,53951,57315,68749,68750,68751,68752,68753,76521,79676,79725,79758,79759,79760,79761,79762,79763,79764,117784,117785,117788,117789,117790,117796,117797,117798,117799,117800,117801,117802,112352,112353,112354,112355,112356,112357,112358,112359,112360,112361,112362,112363,112364,112365,112366,112367,112368,112371,112372);

-- 25317
UPDATE `creature` SET `equipment_id`=1 WHERE `guid` IN (117794);

-- 2110
UPDATE `creature` SET `equipment_id`=1 WHERE `guid` IN (102345,102347,102348,125999,126000,126001,126002,126003,126004,126005,126006,126007,126008,126009,126010,126011,126012,126013,126014,126015,126016,126095,126096,126097,126098,126099,126100,126101,126724,126725,126726,126727,126729,126730,126731,127489,127490,127491,127492,131859,131860,131861,131862,131863,13354,13355,13356,13357,16230,16231,16232,16233,16234,16235,16236,18316,18392,28779,28781,28782,31778,31779,31965,31973,32010,32011,4212,4214,4215,4227,42676,42683,42708,42714,42726,4274,42793,4286,4310,4313,4352,4358,4408,45397,45398,45399,45403,46795,46796,46799,46810,46860,46861,47175,47182,47184,47980,47981,47988,48220,48263,48265,48909,4939,5031,5191,52670,53043,53116,53119,53181,6007,6049,6050,6051,6056,6057,6058,6076,86393,86394,87158,87161,87163,87164,87165,87168,87225,87234,87236,87252);

-- 26797
UPDATE `creature` SET `equipment_id`=1 WHERE `guid` IN (112351, 112369, 112370);

UPDATE `smart_scripts` SET `action_param1` = 1 WHERE `entryorguid` = 2523900 AND `source_type` = 9 AND `id` = 2;
UPDATE `smart_scripts` SET `action_param1` = 0 WHERE `entryorguid` = 2523901 AND `source_type` = 9 AND `id` = 3;
UPDATE `smart_scripts` SET `action_param1` = 2 WHERE `entryorguid` = 32720   AND `source_type` = 0 AND `id` = 0;
DELETE FROM `gameobject` WHERE `guid`=61090;
DELETE FROM `areatrigger_teleport` WHERE `id`=5148;
INSERT INTO `areatrigger_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `name`) VALUES
(5148, 1, -8756.6, -4457.02, -200.481, 1.39626, 'CoT Stratholme - Exit Target');
DROP TABLE IF EXISTS `creature_summon_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_summon_groups` (
  `summonerId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `summonerType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `summonType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `summonTime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DELETE FROM `areatrigger_scripts` WHERE `entry`=5173;
INSERT INTO `areatrigger_scripts`(`entry`,`ScriptName`) VALUE
(5173,'at_frostgrips_hollow');
DELETE FROM `smart_scripts` WHERE `entryorguid`=29861 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(29861,0,54,80,2986100,2,1,'Stormforged Eradictor - Just summoned - Call timed actionlist 2986100');

DELETE FROM `smart_scripts` WHERE `entryorguid`=2986100 AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`target_type`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUE
(2986100,9,0,10000,10000,12,29729,4,10000,8,6972.13,14.24,805.79,3.349,'Stormforged Eradictor - Timed actionlist - Summon Frostborn Axemaster');
DELETE FROM `waypoint_data` WHERE `id`=2986200;
INSERT INTO `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(2986200,0,6963.95,45.65,818.71),
(2986200,1,6965.09,39.67,820.15),
(2986200,2,6963.56,21.14,805.79);

DELETE FROM `waypoint_data` WHERE `id`=2986100;
INSERT INTO `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(2986100,0,6983.18,7.150,806.33),
(2986100,1,6975.37,16.73,804.98),
(2986100,2,6967.15,13.27,806.56);
UPDATE `creature_template` SET `faction_A`=1954,`faction_H`=1954,`AIName`='SmartAI' WHERE `entry`=29861;
UPDATE `creature_template` SET `faction_A`=1954,`faction_H`=1954 WHERE `entry`=29862;
DELETE FROM `command` WHERE `name` = 'reload creature_summon_groups';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload creature_summon_groups',3,'Syntax: .reload creature_summon_groups
Reload creature_summon_groups table.');
DELETE FROM `smart_scripts` WHERE `entryorguid`=29861 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_type`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(29861,0,0,54,0,0,0,0,80,2986100,2,1,'Stormforged Eradictor - Just summoned - Call timed actionlist 2986100'),
(29861,0,1,0,3000,7000,14000,18000,11,56352,0,2,'Stormforged Eradictor - Cast Storm Punch'),
(29861,0,2,0,9000,12000,13000,18000,11,15588,0,0,'Stormforged Eradictor - Cast Thunderclap');
UPDATE `areatrigger_teleport` SET `target_position_x`=728.055,`target_position_y`= 1329.03,`target_position_z`=275,`target_orientation`=5.51524 WHERE `id`=5290; -- The Eye of Eternity (entrance)
DELETE FROM `command` WHERE `name` = 'reload rbac';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload rbac',3,'Syntax: .reload rbac\nReload rbac system.');
DELETE FROM `creature_summon_groups` WHERE `summonerId`=52151 AND `groupId`=0;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES
(52151, 0, 0, 52156, -12330.3, -1878.41, 127.32, 3.89208, 8, 0),
(52151, 0, 0, 52156, -12351.94, -1861.51,  127.4807, 4.677482, 8, 0),
(52151, 0, 0, 52156, -12326.71, -1904.328, 127.4111, 2.75762, 8, 0),
(52151, 0, 0, 52156, -12347.41, -1917.535, 127.3196, 1.553343, 8, 0),
(52151, 0, 0, 52156, -12378.57, -1861.222, 127.5416, 5.340707, 8, 0),
(52151, 0, 0, 52156, -12397.79, -1887.731, 127.5453, 0.03490658, 8, 0),
(52151, 0, 0, 52156, -12372.36, -1918.844, 127.343,  1.151917, 8, 0),
(52151, 0, 0, 52156, -12391.23, -1905.273, 127.3196, 0.6108652, 8, 0);
-- Add spell script names
DELETE FROM `spell_script_names` WHERE `spell_id` IN (56046,56047,61693,61694,57459,56438,61210,56397,58842,59084,59099,56070,56072,60936,60939,61028,61023);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(56046, 'spell_malygos_portal_beam'),
(56047, 'spell_malygos_random_portal'),
(61693, 'spell_malygos_arcane_storm'), -- Phase I /10/
(61694, 'spell_malygos_arcane_storm'), -- Phase I /25/
(57459, 'spell_malygos_arcane_storm'), -- Phase III
(56438, 'spell_arcane_overload'),
(61210, 'spell_nexus_lord_align_disk_aggro'),
(56397, 'spell_scion_of_eternity_arcane_barrage'),
(58842, 'spell_malygos_destroy_platform_channel'),
(59084, 'spell_alexstrasza_bunny_destroy_platform_boom_visual'),
(59099, 'spell_alexstrasza_bunny_destroy_platform_event'),
(56070, 'spell_wyrmrest_skytalon_summon_red_dragon_buddy'),
(56072, 'spell_wyrmrest_skytalon_ride_red_dragon_buddy_trigger'),
(60936, 'spell_malygos_surge_of_power_25'),
(60939, 'spell_malygos_surge_of_power_warning_selector_25'),
(61028, 'spell_alexstrasza_gift_beam'),
(61023, 'spell_alexstrasza_gift_beam_visual');

-- Add spell difficulties
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (61693,56272,57058);
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`) VALUES
(61693,61693,61694,0,0), -- Arcane Storm - Phase I
(56272,56272,60072,0,0), -- Arcane Breath
(57058,57058,60073,0,0); -- Arcane Shock (Nexus Lord)

-- Insert missing creature template addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (28859,30234,30248,32295,30592,31748,31749);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28859,0,0,0x1000000|0x2000000,0x1,0, ''), -- Malygos
(30234,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk (Nexus Lord), add aura "Flight"
(30248,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk (Scion of Eternity), add aura "Flight"
(31748,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk Difficulty (Nexus Lord), add aura "Flight"
(31749,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk Difficulty (Scion of Eternity), add aura "Flight"
(32295,0,0,0x1000000|0x2000000,0x1,0, ''), -- Alexstrasza
(30592,0,0,0x1000000|0x2000000,0x1,0, '57428'); -- Static Field bunny

-- Add, restructure and update missing texts and sounds
DELETE FROM `creature_text` WHERE `entry` IN (28859,32295);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28859,0,0, 'Lesser beings, intruding here! A shame that your excess courage does not compensate for your stupidity!',14,0,100,0,10000,14512,'Malygos - Intro'),
(28859,0,1, 'None but the blue dragonflight are welcome here. Perhaps this is the work of Alexstrasza? Well, then, she has sent you to your deaths!',14,0,100,0,11000,14513,'Malygos - Intro'),
(28859,0,2, 'What could you hope to accomplish? To storm brazenly into my domain... to employ magic... against ME?',14,0,100,0,13000,14514,'Malygos - Intro'),
(28859,0,3, 'I am without limits here. The rules of your cherished reality do not apply. In this realm, I am in control!',14,0,100,0,10000,14515,'Malygos - Intro'),
(28859,0,4, 'I give you one chance. Pledge fealty to me, and perhaps I will not slaughter you for your insolence.',14,0,100,0,7000,14516,'Malygos - Intro'),
(28859,1,0, 'My patience has reached its limit, I will be rid of you!',14,0,100,0,4000,14517,'Malygos - Start phase 1'),
(28859,2,0, 'You will not succeed while I draw breath!',14,0,100,0,3000,14518,'Malygos - Begin to cast Deep Breath'),
(28859,3,0, 'Your stupidity has finally caught up to you!',14,0,100,0,3250,14519,'Malygos - Killed Player (Phase 1)'),
(28859,3,1, 'More artifacts to confiscate...',14,0,100,0,2800,14520,'Malygos - Killed Player (Phase 1)'),
(28859,3,2, 'How very naive.',14,0,100,0,4800,14521,'Malygos - Killed Player (Phase 1)'),
(28859,4,0, 'I had hoped to end your lives quickly, but you have proven more... resilient than I anticipated. Nonetheless, your efforts are in vain. It is you reckless, careless mortals who are to blame for this war. I do what I must, and if it means your extinction.... then SO BE IT!!',14,0,100,0,22900,14522,'Malygos - End Phase One'),
(28859,5,0, 'Few have experienced the pain I will now inflict upon you!',14,0,100,0,5500,14523,'Malygos - Start phase 2'), -- Unused by Blizzard for some reason
(28859,6,0, 'I will teach you IGNORANT children just how little you know of magic...',14,0,100,0,7000,14524,'Malygos - Anti-Magic Shell'),
(28859,7,0, 'Watch helplessly as your hopes are swept away...',14,0,100,0,4000,14525,'Malygos - Magic Blast'),
(28859,8,0, 'Your energy will be put to good use!',14,0,100,0,2000,14526,'Malygos - Killed Player (Phase 2)'),
(28859,8,1, 'I am the spell-weaver! My power is infinite!',14,0,100,0,5200,14527,'Malygos - Killed Player (Phase 2)'),
(28859,8,2, 'Your spirit will linger here forever!',14,0,100,0,3800,14528,'Malygos - Killed Player (Phase 2)'),
(28859,9,0, 'ENOUGH! If you intend to reclaim Azeroth''s magic, then you shall have it...',14,0,100,0,7000,14529,'Malygos - End Phase 2'),
(28859,10,0, 'Now your benefactors make their appearance... But they are too late. The powers contained here are sufficient to destroy the world ten times over! What do you think they will do to you?',14,0,100,0,13000,14530,'Intro Phase 3'),
(28859,11,0, 'SUBMIT!',14,0,100,0,1000,14531,'Malygos - Start phase 3'), -- Unused by Blizzard for some reason
(28859,12,0, 'Malygos takes a deep breath.',41,0,100,0,10000,0,'Malygos - Surge of Power warning (Phase 2)'),
(28859,13,0, 'The powers at work here exceed anything you could possibly imagine!',14,0,100,0,5000,14532,'Malygos - Surge of Power'),
(28859,14,0, 'I AM UNSTOPPABLE!',14,0,100,0,2000,14533,'Malygos - Buffed by a spark'),
(28859,15,0, 'Alexstrasza! Another of your brood falls!',14,0,100,0,3600,14534,'Malygos - Killed Player (Phase 3)'),
(28859,15,1, 'Little more then gnats!',14,0,100,0,2650,14535,'Malygos - Killed Player (Phase 3)'),
(28859,15,2, 'Your red allies will share your fate...',14,0,100,0,3000,14536,'Malygos - Killed Player (Phase 3)'),
(28859,16,0, 'Still standing? Not for long...',14,0,100,0,3600,14537,'Malygos - Spell Casting 1(Phase 3)'),
(28859,16,1, 'Your cause is lost!',14,0,100,0,2000,14538,'Malygos - Spell Casting 2 (Phase 3)'),
(28859,16,2, 'Your fragile mind will be shattered!',14,0,100,0,4000,14539,'Malygos - Spell Casting 3 (Phase 3)'),
(28859,17,0, 'Unthinkable! The mortals will destroy... everything! My sister, what have you...',14,0,100,0,8500,14540,'Malygos - Death'),
(28859,18,0, '%s fixes his eyes on you!',42,0,100,0,3000,0,'Malygos - Surge of Power warning (Phase 3)'),
(28859,19,0, '%s goes into a berserker rage!',41,0,100,0,10000,0,'Malygos - Hit berserk timer (Any phase)'),
(32295,0,0, 'I did what I had to, brother. You gave me no alternative.',14,0,100,0,4000,14406,'Alexstrasza - Yell text 1'),
(32295,1,0, 'And so ends the Nexus War.',14,0,100,0,4000,14407,'Alexstrasza - Yell text 2'),
(32295,2,0, 'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos''s recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world''s mightiest has fallen.',14,0,100,0,24000,14408,'Alexstrasza - Yell text 3'),
(32295,3,0, 'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life... goes on.',14,0,100,0,22000,14409,'Alexstrasza - Yell text 4');
-- Update wrong sound and add duration for Power Sparks warning
UPDATE `creature_text` SET `duration`=10000,`sound`=0 WHERE `entry`=30084 AND `groupid`=0 AND`id`=0;

-- Add conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (56047,58846,61028,56429,56505,59099,61714,61715,57432,57429,61210,56548,56431,56438);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,56047,0,0,31,0,3,30118,0,0,0,0,'', 'Random Portal can implicitly hit only Portal (Malygos)'),
(13,1,56047,0,0,29,0,28859,30,0,1,0,0,'', 'Random Portal can implicitly hit only target that is not in 30 yards near Malygos'),
(13,1,58846,0,0,32,0,0x0010,0,0,0,0,0,'', 'Summon Red Dragon Buddy force cast can implicitly hit only players'),
(13,1,61028,0,0,31,0,3,32448,0,0,0,0,'', 'Alexstrasza''s Gift Beam can hit only Alexstrasza''s Gift'),
(13,1,56429,0,0,31,0,3,31253,0,0,0,0,'', 'Summon Arcane Bomb can hit only Alexstrasza the Life-Binder (bunny)'),
(13,1,56505,0,0,31,0,3,30334,0,0,0,0,'', 'Surge of Power (phase II) can hit only Surge of Power'),
(13,1,56548,0,0,31,0,3,30234,0,1,0,0,'', 'Surge of Power triggered damage spell (phase II) can''t hit melee Hover Disk'),
(13,3,56431,0,0,31,0,3,30234,0,1,0,0,'', 'Arcane Overload damage and knockback spell can''t hit melee Hover Disk'),
(13,1,56438,0,0,1,0,1,56438,0,1,0,0,'', 'Arcane Overload damage reduce aura can''t apply to target that already is affected by such'),
(13,6,59099,0,0,32,0,0x0010,0,0,0,0,0,'', 'Destroy Platform Event effect 1 and 2 can hit only players'),
(13,7,61714,0,0,31,0,3,30245,0,0,0,0,'', 'Berserk (spell 2) can hit Nexus Lord'),
(13,7,61714,0,1,31,0,3,30249,0,0,0,0,'', 'Berserk (spell 2) can hit Scion of Eternity'),
(13,7,61715,0,0,31,0,3,30592,0,0,0,0,'', 'Berserk (spell 3) can hit Static Field bunny'),
(13,1,57432,0,0,31,0,3,30161,0,0,0,0,'', 'Arcane Pulse can hit only drakes'),
(13,3,57429,0,0,31,0,3,30161,0,0,0,0,'', 'Static Field can hit only drakes'),
(13,1,61210,0,0,33,1,0,4,0,0,0,0,'', 'Align Disk Aggro can only hit the vehicle of the passenger caster');

-- Add missing equipment
DELETE FROM `creature_equip_template` WHERE `entry` IN (30245,31750,30249,31751);
INSERT INTO `creature_equip_template` (`entry`,`id`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(30245,1,30714,0,0), -- Nexus Lord
(31750,1,30714,0,0), -- Nexus Lord (Difficulty)
(30249,1,29107,0,0), -- Scion of Eternity
(31751,1,29107,0,0); -- Scion of Eternity (Difficulty)

-- Update accessories of hover disks to die with the vehicle and have lower despawn time. They should fall from hover disks,
-- and despawn after 5 sec, but for some reason they keep staying standing while dead. This needs to be fixed coreside.
UPDATE `vehicle_template_accessory` SET `minion`=1,`summontype`=6,`summontimer`=1000 WHERE `entry`=30234 AND `seat_id`=0;
UPDATE `vehicle_template_accessory` SET `minion`=1,`summontype`=6,`summontimer`=1000 WHERE `entry`=30248 AND `seat_id`=0;

-- Add flag GO not selectable for both and extra condition for Heart of Magic
UPDATE `gameobject_template` SET `flags`=16 WHERE `entry`=193967; -- Alexstrasza Gift
UPDATE `gameobject_template` SET `flags`=20 WHERE `entry`=194159; -- Heart of Magic

-- Add some gameobject data update
UPDATE `gameobject` SET `animprogress`=255,`spawntimesecs`=300 WHERE `guid` IN (151791,193960); -- that spawn time has no influence, but having different values doesn't look correct

-- Delete static GO spawns of Alexstrasza's Gift Boxes, they are dynamic (10/25)
DELETE FROM `gameobject` WHERE `guid` IN (151792,151793);

-- Add map difficulty checks for achievement "Denyin the Scion"
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7573,7574) AND `type`=12;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`) VALUES
(7573,12,0), -- 10 mode
(7574,12,1); -- 25 mode

-- Delete Nexus Lords SAI script, because of incapacity to handle the combat spell mechanic of Arcane Shock correctly
-- Delete Scions of Eternity SAI script, because of incapacity to handle non reactive AI when being attacked in a way it won't bug other encounter mechanics.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (30245,30249) AND `source_type`=0;

-- Add SAI support for Alexstrasza since is only short timed event after boss mechanic ends
SET @NPC_ALEXSTRASZA  := 32295;
SET @ACTIONLIST       := @NPC_ALEXSTRASZA * 100;
SET @SPELL_GIFT_BEAM  := 61028;

UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@NPC_ALEXSTRASZA;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_ALEXSTRASZA AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ACTIONLIST AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_ALEXSTRASZA,0,0,0,54,0,100,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,788.07,1276.09,246.9,0,'Alexstrasza - On just summoned - Move to pos'),
(@NPC_ALEXSTRASZA,0,1,0,34,0,100,0,8,1,0,0,80,@ACTIONLIST,2,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - On point 1 reached - Start actionlist'),
(@ACTIONLIST,9,0,0,0,0,100,0,0,0,0,0,11,@SPELL_GIFT_BEAM,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 0 - Cast Gift Beam'),
(@ACTIONLIST,9,1,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 1 - Yell 0'),
(@ACTIONLIST,9,2,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 2 - Yell 1'),
(@ACTIONLIST,9,3,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 3 - Yell 2'),
(@ACTIONLIST,9,4,0,0,0,100,0,24000,24000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 4 - Yell 3');

-- Add areatrigger script for the improvised platform that is killing/rooting falling players
DELETE FROM `areatrigger_scripts` WHERE `entry`=5342;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5342, 'at_eye_of_eternity_improvised_floor');

-- /////////////// Various misc in creature, creature template and creature addon ///////////////
-- Update some guids spawn positions
UPDATE `creature` SET `position_x`=754.362,`position_y`=1301.61,`position_z`=266.171,`orientation`=4.24115 WHERE `guid`=132302; -- Alexstrasza the Life-Binder (Bunny)
UPDATE `creature` SET `position_x`=747.61,`position_y`=1393.43,`position_z`=295.9722,`orientation`=3.03832 WHERE `guid`=132313; -- Malygos

-- Update some creature guids to be have static MovementType and spawn dist to 0 accordingly
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid` IN
(132313, -- Malygos
132314, -- Alexstrasza''s Gift Bunny
132302); -- Alexstrasza the Life-Binder (Bunny)

-- Update template to InhabitType "Air" for various creatures
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (28859,31734,30245,31750,30249,31751,32295,32448);

-- Clear scripts names for Alexstrasza the Life-Binder (Bunny)
UPDATE `creature_template` SET `AIName`='',`ScriptName`='' WHERE `entry`=31253;

--  Update Portal (Malygos) initial flags before the encounter starts
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x00000100|0x02000000,`flags_extra`=128 WHERE `entry`=30118; -- Immunity to Players + Not selectable

-- Update flags extra to trigger & civilian for Static Field and add script name
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_static_field',`flags_extra`=130 WHERE `entry`=30592;

-- Update flags extra to extra trigger & extra civilian for Alexstrasza Bunny
UPDATE `creature_template` SET `flags_extra`=130, `ScriptName`='' WHERE `entry`=31253;

-- Remove uneeded creature_addon data
DELETE FROM `creature_addon` WHERE `guid` IN
(30592, -- The spawn for Static Field is dynamique, so not fixed guid.
132313); -- Malygos is boss so is unique and needs only the template addon.

-- Update templates for both types of hover disks
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`VehicleId`=223,`InhabitType`=4 WHERE `entry` IN (30248,31749); -- Hover disk for Scions
UPDATE `creature_template` SET `ScriptName`='npc_caster_hover_disk' WHERE `entry`=30248;
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`InhabitType`=4 WHERE `entry` IN (30234,31748); -- Hover disk for Nexus Lords
UPDATE `creature_template` SET `ScriptName`='npc_melee_hover_disk' WHERE `entry`=30234;
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_nexus_lord' WHERE `entry`=30245; -- Nexus Lord
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_scion_of_eternity' WHERE `entry`=30249; -- Scion of Eternity

-- Fix model display for Vortex Triggers (in creature handling).
-- Remove extra trigger flag because for some reason it was bugging model displaying as always visible,
-- since it has the invisible one for triggers first and other as second, this is the only nonhacky way (don't try to change it unless core side != c++ hack in instance script)
UPDATE `creature_template` SET `flags_extra`=flags_extra &~ 0x00000080 WHERE `entry`=30090;
UPDATE `creature` SET `modelid`=11686 WHERE `guid` BETWEEN 132304 AND 132308;
-- Add missing generic spell for opening chests for most of Blood Elf's classes
-- (was preventing them to loot Eye of Eternity Alexstrasza's Gift Box, Heart of Magic and maybe more.)
SET @ELM_BUNNY        :=23837;
SET @SHADOW_CULTIST   :=30835;
SET @VARDMADRA        :=30836;
SET @LK_EYE           :=192861;
SET @CREDIT           :=57884;
SET @SUMMON_CULTIST   :=57885;
SET @GOSSIP_CAST      :=57888;
SET @LK_EYE_CAST      :=57889;
SET @SUMMON_VARDMADRA :=57891;

DELETE FROM `creature_text` WHERE `entry` IN (@ELM_BUNNY,@VARDMADRA,@SHADOW_CULTIST);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ELM_BUNNY, 0, 0, 'Scrying upon many insignificant situations within Icecrown, you stumble upon something interesting...', 42, 0, 100, 0, 0, 0, 'Eye of Lich King Ambient'),
(@SHADOW_CULTIST, 0, 0, 'My lady.', 12, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 1, 0, 'There is word from Jotunheim. The sleep-watchers there believe that they have found someone of significance.', 12, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 2, 0, 'The cultist practically sputters.', 16, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 3, 0, 'Look like, my lady? A vrykul, I suppose. They did not actually show him to me. Ever since The Shadow Vault....', 12, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 4, 0, 'A name? Oh, yes, the name! I believe it was Iskalder.', 12, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 5, 0, 'Right away, my lady.', 12, 0, 100, 2, 0, 0, 'Shadow Cultist'),
(@VARDMADRA, 0, 0, 'Report.', 12, 0, 100, 1, 0, 0, 'Vardmadra'),
(@VARDMADRA, 1, 0, 'Describe this vrykul. What does he look like?', 12, 0, 100, 1, 0, 0, 'Vardmadra'),
(@VARDMADRA, 2, 0, 'I am not interested in excuses. Perhaps they gave you a name?', 12, 0, 100, 1, 0, 0, 'Vardmadra'),
(@VARDMADRA, 3, 0, 'Iskalder?! You fool! Have you no idea who that is? He''s only the greatest vrykul warrior who ever lived!', 12, 0, 100, 1, 0, 0, 'Vardmadra'),
(@VARDMADRA, 4, 0, 'Return to Jotunheim and tell them to keep him asleep until I arrive. I will judge this vrykul with my own eyes.', 12, 0, 100, 1, 0, 0, 'Vardmadra');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=57889;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(57889,57891,0,'On spellcast Using the Eye of the Lich King cast Through the Eye: Summon Image of Vardmadra'),
(57889,57885,0,'On spellcast Using the Eye of the Lich King cast Through the Eye: Summon Image of a Shadow Cultist');

DELETE FROM `spell_scripts` WHERE `id`=57884;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(57884,1,0,14,57889,0,0,0,0,0,0);

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@LK_EYE;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@LK_EYE;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@LK_EYE, 1, 0, 1, 62, 0, 100, 0, 10005, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Eye of the Lich King - On gossip select - Close gossip'),
(@LK_EYE, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, @GOSSIP_CAST, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Eye of the Lich King - On gossip select - Invoker Spellcast Through the Eye: Eye of the Lich King Gossip Force Cast'),
(@LK_EYE, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, @ELM_BUNNY, 10, 0, 0, 0, 0, 0, 'Eye of the Lich King - On gossip select - Set data 0 1 Elm General Purpose Bunny');

UPDATE `creature_template` SET `AIName`='SmartAI',`minlevel`=80,`maxlevel`=80,`exp`=2,`faction_A`=1610,`faction_H`=1610,`unit_flags`=33544, `HoverHeight`=6 WHERE `entry`=@VARDMADRA;
UPDATE `creature_template` SET `AIName`='SmartAI',`minlevel`=80,`maxlevel`=80,`exp`=2,`faction_A`=1610,`faction_H`=1610,`unit_flags`=33544 WHERE `entry`=@SHADOW_CULTIST;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-121192,@VARDMADRA,@SHADOW_CULTIST);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@SHADOW_CULTIST*100;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-121192, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'Elm General Purpose Bunny - On data set 0 1 - Say line'),
(@SHADOW_CULTIST, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 6828.99, 3814.678, 621.0696, 0, 'Shadow Cultist - Just summoned - Move to position'),
(@SHADOW_CULTIST, 0, 1, 2, 34, 0, 100, 0, 0, 1, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist - On movement inform - Turn to Image of Vardmadra'),
(@SHADOW_CULTIST, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, @SHADOW_CULTIST*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist - On movement inform - Run script'),
(@VARDMADRA, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, @SHADOW_CULTIST, 30, 0, 0, 0, 0, 0, 'Image of Vardmadra - Just summoned - Turn to Shadow Cultist'),
(@VARDMADRA, 0, 1, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 1 - Say line'),
(@VARDMADRA, 0, 2, 0, 38, 0, 100, 0, 0, 2, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 2 - Say line'),
(@VARDMADRA, 0, 3, 0, 38, 0, 100, 0, 0, 3, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 3 - Say line'),
(@VARDMADRA, 0, 4, 0, 38, 0, 100, 0, 0, 4, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 4 - Say line'),
(@VARDMADRA, 0, 5, 0, 38, 0, 100, 0, 0, 5, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 5 - Say line'),
(@VARDMADRA, 0, 6, 7, 38, 0, 100, 0, 0, 6, 0, 0, 11, 57884, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 6 - Spellcast Through the Eye: Kill Credit to Master'),
(@VARDMADRA, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 6 - Despawn after 1 second'),

(@SHADOW_CULTIST*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set unit_field_bytes1 (kneel)'),
(@SHADOW_CULTIST*100, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 2, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 1 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9, 3, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 45, 0, 2, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 2 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9, 5, 0, 0, 0, 100, 0, 500, 500, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 6, 0, 0, 0, 100, 0, 3500, 3500, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 7, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 45, 0, 3, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 3 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9, 8, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 9, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 45, 0, 4, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 4 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9,10, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 45, 0, 5, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 5 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9,11, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 91, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Remove unit_field_bytes1 (kneel)'),
(@SHADOW_CULTIST*100, 9,12, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9,13, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 6816.328, 3801.11, 621.153, 0, 'Shadow Cultist script - Move to position'),
(@SHADOW_CULTIST*100, 9,14, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 45, 0, 6, 0, 0, 0, 0, 19, @VARDMADRA, 30, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 6 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9,15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Despawn');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@SUMMON_VARDMADRA,@SUMMON_CULTIST);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10005;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SUMMON_VARDMADRA,0,0,30,0,@LK_EYE,10,0,1,0,0,'','Spell Through the Eye: Summon Image of Vardmadra will be casted only if target is not within 10y of Eye of the Lichking'),
(13,1,@SUMMON_VARDMADRA,0,0,31,0,3,@ELM_BUNNY,0,0,0,0,'','Spell Through the Eye: Summon Image of Vardmadra targets Elm General Purpose Bunny'),
(13,1,@SUMMON_CULTIST,0,0,31,0,3,@ELM_BUNNY,0,0,0,0,'','Spell Through the Eye: Summon Image of a Shadow Cultist targets Elm General Purpose Bunny'),
(15,10005,0,0,0,9,0,13121,0,0,0,0,0,'','Show gossip option only if player has taken quest Through the Eye'),
(15,10005,0,0,0,1,0,@LK_EYE_CAST,0,0,1,0,0,'','Hide gossip option when aura Using the Eye of the Lich King is present');
SET @RAZUUN            := 21502; -- Image of Warbringer Razuun
SET @JOVAAN            := 21633; -- Deathbringer Jovaan
SET @TRIGGER           := 4548;  -- Smart Trigger
SET @DEVICE            := 184833;-- Legion Communication Device
SET @GO_INFERNAL       := 184834;-- Gobject that needs to be despawned during the script
SET @GO_INFERNAL2      := 184835;-- Gobject that needs to be despawned during the script

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@RAZUUN,@JOVAAN);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@JOVAAN,@RAZUUN) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@JOVAAN*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@RAZUUN,0,0,0,38,0,100,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On data 0 1 set - Say line'),
(@RAZUUN,0,1,0,38,0,100,0,0,2,0,0,1,1,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On data 0 2 set - Say line'),
(@RAZUUN,0,2,0,52,0,100,0,1,@RAZUUN,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On text over - Play emote'),
(@RAZUUN,0,3,0,38,0,100,0,0,3,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On data 0 3 set - Say line'),
(@RAZUUN,0,4,0,38,0,100,0,0,4,0,0,1,3,1500,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On data 0 4 set - Say line'),
(@RAZUUN,0,5,0,52,0,100,0,3,@RAZUUN,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On text over - Play emote'),
(@JOVAAN,0,0,1,11,0,100,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - Just summoned - Spellcast Etheral Teleport'),
(@JOVAAN,0,1,0,61,0,100,0,0,0,0,0,53,0,@JOVAAN,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - Just summoned - Start WP movement'),
(@JOVAAN,0,2,3,40,0,100,0,4,@JOVAAN,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - On WP 4 reached - Pause 45 seconds'),
(@JOVAAN,0,3,0,61,0,100,0,0,0,0,0,80,@JOVAAN*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - On WP 4 reached - Run Script'),

(@JOVAAN*100,9,0,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,14,25736,@DEVICE,0,0,0,0,0,'Deathbringer Jovaan script - Turn to Legion Communication Device'),
(@JOVAAN*100,9,1,0,0,0,100,0,2500,2500,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Play emote'),
(@JOVAAN*100,9,2,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Say line'),
(@JOVAAN*100,9,3,0,0,0,100,0,100,100,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Set unit_field_bytes1 (kneel)'),
(@JOVAAN*100,9,4,0,0,0,100,0,100,100,0,0,12,@RAZUUN,1,37500,0,0,0,8,0,0,0,-3300.087,2927.053,173.3354,2.199115,'Deathbringer Jovaan script - Summon Image of Warbringer Razuun'),
(@JOVAAN*100,9,5,0,0,0,100,0,800,800,0,0,45,0,1,0,0,0,0,19,@RAZUUN,10,0,0,0,0,0,'Deathbringer Jovaan script - Set data 0 1 Image of Warbringer Razuun'),
(@JOVAAN*100,9,6,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Say line'),
(@JOVAAN*100,9,7,0,0,0,100,0,5000,5000,0,0,45,0,2,0,0,0,0,19,@RAZUUN,10,0,0,0,0,0,'Deathbringer Jovaan script - Set data 0 2 Image of Warbringer Razuun'),
(@JOVAAN*100,9,8,0,0,0,100,0,7000,7000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Remove unit_field_bytes1 (kneel)'),
(@JOVAAN*100,9,9,0,0,0,100,0,1000,1000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Say line'),
(@JOVAAN*100,9,10,0,0,0,100,0,6000,6000,0,0,45,0,3,0,0,0,0,19,@RAZUUN,10,0,0,0,0,0,'Deathbringer Jovaan script - Set data 0 3 Image of Warbringer Razuun'),
(@JOVAAN*100,9,11,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Say line'),
(@JOVAAN*100,9,12,0,0,0,100,0,4000,4000,0,0,45,0,4,0,0,0,0,19,@RAZUUN,10,0,0,0,0,0,'Deathbringer Jovaan script - Set data 0 4 Image of Warbringer Razuun'),
(@JOVAAN*100,9,13,0,0,0,100,0,3500,3500,0,0,33,@RAZUUN,0,0,0,0,0,21,20,0,0,0,0,0,0,'Deathbringer Jovaan script - Give Quest Credit'),
(@JOVAAN*100,9,14,0,0,0,100,0,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Play emote');

DELETE FROM `creature_text` WHERE `entry` IN (@RAZUUN,@JOVAAN);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@RAZUUN,0,0,'Doom Lord Kazzak will be pleased. You are to increase the pace of your attacks. Destroy the orcish and dwarven strongholds with all haste.',12,0,100,1,0,0,'Razuun'),
(@RAZUUN,1,0,'Don''t worry about that. I''ve increased production at the Deathforge. You''ll have all the infernals you need to carry out your orders. Don''t fail, Jovaan.',12,0,100,1,0,0,'Razuun'),
(@RAZUUN,2,0,'Yes?',12,0,100,6,0,0,'Razuun'),
(@RAZUUN,3,0,'Crate? I didn''t send you a crate, Jovaan. Don''t you have more important things to worry about? Go see to them!',12,0,100,274,0,0,'Razuun'),
(@JOVAAN,0,0,'Everything is in readiness, warbringer.',12,0,100,0,0,0,'Jovaan'),
(@JOVAAN,1,0,'Warbringer, that will require the use of all the hold''s infernals. It may leave us vulnerable to a counterattack.',12,0,100,0,0,0,'Jovaan'),
(@JOVAAN,2,0,'It shall be as you say, warbringer. One last question, if I may...',12,0,100,6,0,0,'Jovaan'),
(@JOVAAN,3,0,'What''s in the crate?',12,0,100,6,0,0,'Jovaan');

DELETE FROM `waypoints` WHERE `entry`=@JOVAAN;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@JOVAAN, 1, -3310.995, 2951.892, 171.2171, 'Deathbrinder Jovaan'),
(@JOVAAN, 2, -3307.998, 2942.022, 171.1127, 'Deathbrinder Jovaan'),
(@JOVAAN, 3, -3306.255, 2935.729, 171.0294, 'Deathbrinder Jovaan'),
(@JOVAAN, 4, -3304.257, 2930.78, 170.9866, 'Deathbrinder Jovaan'),
(@JOVAAN, 5, -3307.609, 2936.385, 170.9919, 'Deathbrinder Jovaan'),
(@JOVAAN, 6, -3309.415, 2942.621, 171.119, 'Deathbrinder Jovaan');

DELETE FROM `areatrigger_scripts` WHERE `entry`=@TRIGGER;
INSERT INTO `areatrigger_scripts` VALUES (@TRIGGER,'SmartTrigger');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@TRIGGER AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@TRIGGER,2,0,1,46,0,100,0,@TRIGGER,0,0,0,45,0,0,0,0,0,0,14,25736,@DEVICE,0,0,0,0,0,'Smart Trigger - On Trigger - Set Data to GO'),
(@TRIGGER,2,1,2,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,14,25737,@GO_INFERNAL,0,0,0,0,0,'Smart Trigger - On Link - Set Data GO'),
(@TRIGGER,2,2,0,61,0,100,0,0,0,0,0,45,0,2,0,0,0,0,14,25738,@GO_INFERNAL2,0,0,0,0,0,'Smart Trigger - On Link - Set Data GO');

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (@DEVICE,@GO_INFERNAL,@GO_INFERNAL2);
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid` IN (@DEVICE,@GO_INFERNAL,@GO_INFERNAL2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@DEVICE,1,0,0,38,0,100,0,0,0,0,0,12,@JOVAAN,1,57000,0,0,0,8,0,0,0,-3310.995, 2951.892, 171.2171, 5.5355,'Legion Communicator - On Data Set - Summon Jovaan'),
(@GO_INFERNAL,1,0,0,38,0,100,0,0,1,0,0,99,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infernal  - On Data Set- Change State'),
(@GO_INFERNAL,1,1,0,70,0,100,0,2,0,0,0,70,50,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infernal - On Data Set- Despawn GO'),
(@GO_INFERNAL2,1,0,0,38,0,100,0,0,2,0,0,99,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infernal 2 - On Data Set- Change State'),
(@GO_INFERNAL2,1,1,0,70,0,100,0,2,0,0,0,70,50,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infernal 2 - On Data Set - Despawn GO');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (@TRIGGER,@DEVICE);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22,1,@TRIGGER,2,0,1,0,37097,0,0,0,0,'','SAI areatrigger 4548 triggers only if player has aura Crate Disguise'),
(22,1,@TRIGGER,2,0,29,0,@JOVAAN,50,0,1,0,'','SAI areatrigger 4548 triggers only if there is no Deathbringer Jovaan present'),
(22,1,@DEVICE,2,0,1,0,37097,0,0,0,0,'','SAI Legion Communication Device triggers only if player has aura Crate Disguise');
-- Add conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56438;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,56438,0,0,1,0,56438,0,0,1,0,0,'', 'Arcane Overload damage reduce aura can''t apply to target that already is affected by such');
-- Delete wrongly inserted spell linked spell of Scion of Eternity - "Arcane Barrage".
-- It should be handled in the original caster spell with spellscript effect.
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=56397 AND `spell_effect`=63934 AND`type`=1;

-- Update flags in creature for Malygos since differ from these in creature_template
UPDATE `creature` SET `unit_flags`=320,`dynamicflags`=8 WHERE `id`=28859;
-- Issue 9311
-- Add Missing Sunreaver Guardian Mage inside Sunreaver Tavern (Thx Aokromes) 
SET @CGUID := 40267; -- Set by TDB Team
DELETE FROM `creature` WHERE `guid`=@CGUID;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(@CGUID,29255,571,1,1,5900.299,505.75,641.6531,4.171337,120,0,0);

-- Issue 9322: 
-- fix SAI to make the quest Mission: The Abyssal Shelf (10162) Horde completable (thx Kirkhammett) 
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=19273;
DELETE FROM `smart_scripts` WHERE `entryorguid`=19273;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19273,0,0,0,19, 0,100,0,10162,0,0,0,15,10162,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Commander To''arch - On Quest Accept - Call Areaexplored');
-- Issue 9250
-- A Worthy Weapon (thx Durotar)
UPDATE `creature_template` SET `InhabitType`=4, `hoverheight`=1065353216, `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=33273;
-- Set visual effect: sitting
DELETE FROM `creature_template_addon` WHERE `entry`=33273;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`,`emote`) VALUES (33273,1,1,0);
-- Winter Hyacinth (item 45000) Send Script Event (20990) by right-click
DELETE FROM `event_scripts` WHERE `id`=20990;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
(20990, 0, 10, 33273, 42000, 4602.977, -1600.141, 156.7834, 0.7504916);
-- TEMP Drak'Mar Offering Ring
SET @ObjectGuid := 6068; -- set by TDB staff
DELETE FROM `gameobject` WHERE `id`=300009;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@ObjectGuid+0,300009,571,1,1, 4606.72, -1606.91, 156.659, 1.62734,0.0,0.0, 0.726811, 0.686837,300,0,1),
(@ObjectGuid+1,300009,571,1,1, 4596.78, -1606.69, 156.659, 1.5488,0.0,0.0, 0.699286, 0.714842,300,0,1),
(@ObjectGuid+2,300009,571,1,1, 4597.1, -1594.08, 156.658, 1.53702,0.0,0.0, 0.695063, 0.718949,300,0,1),
(@ObjectGuid+3,300009,571,1,1, 4608.33, -1592.98, 156.658, 0.162569,0.0,0.0, 0.0811951, 0.996698,300,0,1),
(@ObjectGuid+4,300009,571,1,1, 4602.78, -1600.05, 156.658, 4.08564,0.0,0.0, 0.890651, -0.454688,300,0,1);
-- creature_text
DELETE FROM `creature_text` WHERE `entry`=33273 AND `groupid` BETWEEN 0 AND 3;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(33273,0,0, 'Are those winter hyacinths? For me?',12,0,100,6,0,0, 'Maiden of Drak''Mar'),
(33273,1,0, 'It''s been so long since a traveler has come here bearing flowers.',12,0,100,1,0,0, 'Maiden of Drak''Mar'),
(33273,2,0, 'The lake has been too lonely these past years. The travelers stopped coming and evil came to these waters.',12,0,100,1,0,0, 'Maiden of Drak''Mar'),
(33273,3,0, 'Your gift is a rare kindness, traveler. Please take this blade with my gratitude. Long ago, another traveler left it here, but I have little use for it.',12,0,100,1,0,0, 'Maiden of Drak''Mar');
-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=33273 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33273*100 AND `source_type`=9 AND `id` BETWEEN 0 AND 6;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33273,0,0,0,54,0,100,0,0,0,0,0,80,33273*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On spawn - Run script'),
(33273*100,9,0,0,0,0,100,0,0,0,0,0,50,194239,42000,0,0,0,0,8,0,0,0,4602.977,-1600.141,156.7834,0, 'Maiden of DrakMar - On script - Summon GO DrakMar Lily Pad'),
(33273*100,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On script - Say 0'),
(33273*100,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On script - Say 1'),
(33273*100,9,3,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On script - Say 2'),
(33273*100,9,4,0,0,0,100,0,7000,7000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On script - Say 3'),
(33273*100,9,5,0,0,0,100,0,0,0,0,0,50,194238,20000,0,0,0,0,8,0,0,0,4603.351,-1599.288,156.8822,2.234018, 'Maiden of DrakMar - On script - Summon GO Blade of DrakMar');
SET @GUID := 40470;
SET @PATH := @GUID*10;
DELETE FROM `creature` where `id`=18686;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES 
(@GUID,18686,530,1,1,0,0,-2847.327,3195.10722,7.4167,.0910940,300,0,0,9144,13525,2,0,0,0);
-- Pathing Data
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`) VALUES 
(@PATH,1,-2843.86,3205.97,5.45323,0,0,0,0,100),
(@PATH,2,-2829.24,3218.81,9.59048,0,0,0,0,100),
(@PATH,3,-2814.12,3235.72,10.1736,0,0,0,0,100),
(@PATH,4,-2792.54,3259.91,5.91885,0,0,0,0,100),
(@PATH,5,-2774.46,3280.17,2.8828,0,0,0,0,100),
(@PATH,6,-2751.21,3306.24,0.199384,0,0,0,0,100),
(@PATH,7,-2728.55,3318.21,-0.833018,0,0,0,0,100),
(@PATH,8,-2719.59,3331.35,-1.04936,0,0,0,0,100),
(@PATH,9,-2708.94,3349.74,-0.819842,0,0,0,0,100),
(@PATH,10,-2694.72,3374.29,-0.156626,0,0,0,0,100),
(@PATH,11,-2685.08,3390.93,0.328583,0,0,0,0,100),
(@PATH,12,-2675.69,3407.16,0.474826,0,0,0,0,100),
(@PATH,13,-2669.68,3416.29,0.743526,0,0,0,0,100),
(@PATH,14,-2660.96,3425.20,0.805554,0,0,0,0,100),
(@PATH,15,-2654.25,3430.82,0.77502,0,0,0,0,100),
(@PATH,16,-2645.46,3437.83,1.28666,0,0,0,0,100),
(@PATH,17,-2639.59,3442.50,3.25542,0,0,0,0,100),
(@PATH,18,-2630.71,3449.41,1.86245,0,0,0,0,100),
(@PATH,19,-2621.54,3456.21,0.653284,0,0,0,0,100),
(@PATH,20,-2617.41,3460.51,0.593326,0,0,0,0,100),
(@PATH,21,-2611.50,3471.52,0.520041,0,0,0,0,100),
(@PATH,22,-2610.04,3475.69,0.53993,0,0,0,0,100),
(@PATH,23,-2606.90,3480.85,0.492544,0,0,0,0,100),
(@PATH,24,-2590.41,3502.84,0.225892,0,0,0,0,100),
(@PATH,25,-2582.03,3512.00,0.101641,0,0,0,0,100),
(@PATH,26,-2566.36,3522.06,0.189451,0,0,0,0,100),
(@PATH,27,-2534.38,3523.07,1.3404,0,0,0,0,100),
(@PATH,28,-2523.33,3527.83,1.66667,0,0,0,0,100),
(@PATH,29,-2516.31,3533.95,1.65006,0,0,0,0,100),
(@PATH,30,-2507.47,3544.67,1.56155,0,0,0,0,100),
(@PATH,31,-2491.83,3549.68,1.43199,0,0,0,0,100),
(@PATH,32,-2471.56,3551.98,1.23732,0,0,0,0,100),
(@PATH,33,-2463.14,3555.66,1.03546,0,0,0,0,100),
(@PATH,34,-2456.30,3555.25,0.942503,0,0,0,0,100),
(@PATH,35,-2452.53,3537.02,0.402467,0,0,0,0,100),
(@PATH,36,-2446.32,3528.59,-0.236494,0,0,0,0,100),
(@PATH,37,-2462.93,3549.41,1.08819,0,0,0,0,100),
(@PATH,38,-2460.92,3557.50,1.00403,0,0,0,0,100),
(@PATH,39,-2425.49,3596.20,0.274173,0,0,0,0,100),
(@PATH,40,-2405.20,3613.88,0.217946,0,0,0,0,100),
(@PATH,41,-2391.31,3632.83,0.792431,0,0,0,0,100),
(@PATH,42,-2383.97,3658.54,0.99065,0,0,0,0,100),
(@PATH,43,-2351.54,3700.72,0.420721,0,0,0,0,100),
(@PATH,44,-2314.59,3729.83,0.0297019,0,0,0,0,100),
(@PATH,45,-2296.57,3749.89,0.363868,0,0,0,0,100),
(@PATH,46,-2285.44,3767.70,0.291327,0,0,0,0,100),
(@PATH,47,-2279.30,3787.95,0.314858,0,0,0,0,100),
(@PATH,48,-2276.30,3799.32,0.521091,0,0,0,0,100),
(@PATH,49,-2254.61,3831.13,2.70024,0,0,0,0,100),
(@PATH,50,-2251.75,3848.92,5.15061,0,0,0,0,100),
(@PATH,51,-2249.52,3869.55,2.39354,0,0,0,0,100),
(@PATH,52,-2244.66,3893.46,1.58335,0,0,0,0,100),
(@PATH,53,-2239.88,3904.19,1.10899,0,0,0,0,100),
(@PATH,54,-2224.28,3927.45,0.706091,0,0,0,0,100),
(@PATH,55,-2187.45,3958.22,0.921813,0,0,0,0,100),
(@PATH,56,-2175.09,3978.98,0.929392,0,0,0,0,100),
(@PATH,57,-2171.14,4011.04,0.450247,0,0,0,0,100),
(@PATH,58,-2175.93,4027.88,0.519539,0,0,0,0,100),
(@PATH,59,-2187.96,4064.43,1.42810,0,0,0,0,100),
(@PATH,60,-2166.44,4102.49,4.27243,0,0,0,0,100), -- Had guid as action_id
(@PATH,61,-1700.15,3993.57,55.6859,0,0,0,0,100),
(@PATH,62,-1710.59,4034.97,60.6101,0,0,0,0,100),
(@PATH,63,-1719.95,4059.83,62.7452,0,0,0,0,100),
(@PATH,64,-1718.67,4104.32,64.3796,0,0,0,0,100),
(@PATH,65,-1743.77,4151.60,62.3929,0,0,0,0,100),
(@PATH,66,-1754.61,4173.29,58.3691,0,0,0,0,100),
(@PATH,67,-1788.41,4206.51,44.1839,0,0,0,0,100),
(@PATH,68,-1818.93,4214.12,33.1137,0,0,0,0,100),
(@PATH,69,-1841.51,4228.10,22.0741,0,0,0,0,100),
(@PATH,70,-1871.54,4263.50,8.22153,0,0,0,0,100),
(@PATH,71,-1891.00,4295.91,3.23019,0,0,0,0,100),
(@PATH,72,-1911.96,4351.49,1.66825,0,0,0,0,100),
(@PATH,73,-1910.12,4389.42,1.77078,0,0,0,0,100),
(@PATH,74,-1907.67,4417.31,2.99456,0,0,0,0,100),
(@PATH,75,-1917.63,4452.07,6.27493,0,0,0,0,100),
(@PATH,76,-1929.40,4473.47,8.90937,0,0,0,0,100),
(@PATH,77,-1942.74,4489.67,11.1029,0,0,0,0,100),
(@PATH,78,-1958.47,4508.45,12.7432,0,0,0,0,100),
(@PATH,79,-1975.36,4519.94,13.1616,0,0,0,0,100),
(@PATH,80,-1982.19,4524.49,13.0993,0,0,0,0,100),
(@PATH,81,-1983.38,4507.03,12.7591,0,0,0,0,100),
(@PATH,82,-1984.02,4496.55,11.9535,0,0,0,0,100),
(@PATH,83,-1984.87,4482.57,11.1499,0,0,0,0,100),
(@PATH,84,-1978.92,4509.87,12.6695,0,0,0,0,100),
(@PATH,85,-1978.12,4527.35,13.36,0,0,0,0,100),
(@PATH,86,-1967.33,4546.79,12.8741,0,0,0,0,100),
(@PATH,87,-1953.04,4566.47,10.1123,0,0,0,0,100),
(@PATH,88,-1946.50,4582.91,7.44598,0,0,0,0,100),
(@PATH,89,-1948.30,4599.58,4.61956,0,0,0,0,100),
(@PATH,90,-1955.08,4637.48,-0.0588505,0,0,0,0,100),
(@PATH,91,-1943.63,4685.04,-2.18987,0,0,0,0,100),
(@PATH,92,-1941.99,4705.25,-2.67768,0,0,0,0,100),
(@PATH,93,-1945.22,4727.47,-3.22917,0,0,0,0,100),
(@PATH,94,-1951.89,4748.79,-2.9388,0,0,0,0,100),
(@PATH,95,-1957.77,4773.70,-1.42409,0,0,0,0,100),
(@PATH,96,-1957.36,4798.11,-0.0807409,0,0,0,0,100),
(@PATH,97,-1944.66,4829.17,0.67,0,0,0,0,100),
(@PATH,98,-1929.68,4851.09,1.64973,0,0,0,0,100),
(@PATH,99,-1918.23,4883.89,2.11937,0,0,0,0,100),
(@PATH,100,-1901.18,4906.49,-1.12705,0,0,0,0,100),
(@PATH,101,-1881.87,4926.69,-9.60835,0,0,0,0,100),
(@PATH,102,-1870.05,4946.21,-17.0149,0,0,0,0,100),
(@PATH,103,-1866.49,4960.25,-20.2899,0,0,0,0,100),
(@PATH,104,-1860.94,5033.3,-26.0991,0,0,0,0,100),
(@PATH,105,-1869.80,4962.46,-20.3781,0,0,0,0,100),
(@PATH,106,-1884.86,4924.67,-8.30171,0,0,0,0,100),
(@PATH,107,-1904.83,4905.16,-0.202733,0,0,0,0,100),
(@PATH,108,-1922.67,4912.5,6.06643,0,0,0,0,100),
(@PATH,109,-1937.46,4934.99,14.8054,0,0,0,0,100),
(@PATH,110,-1953.22,4961.69,24.7149,0,0,0,0,100),
(@PATH,111,-1958.07,4992.99,30.1767,0,0,0,0,100),
(@PATH,112,-1958.74,5013.42,32.4293,0,0,0,0,100),
(@PATH,113,-1947.03,5042.52,25.2899,0,0,0,0,100),
(@PATH,114,-1942.58,5058.03,19.5292,0,0,0,0,100),
(@PATH,115,-1963.32,5083.08,11.1075,0,0,0,0,100),
(@PATH,116,-1984.50,5100.08,7.82778,0,0,0,0,100),
(@PATH,117,-2004.59,5114.07,8.26657,0,0,0,0,100),
(@PATH,118,-2029.48,5123.26,8.48839,0,0,0,0,100),
(@PATH,119,-2055.94,5125.38,7.48301,0,0,0,0,100),
(@PATH,120,-2089.33,5115.44,3.14184,0,0,0,0,100),
(@PATH,121,-2112.53,5107.32,-2.40737,0,0,0,0,100),
(@PATH,122,-2137.40,5108.51,-11.5709,0,0,0,0,100),
(@PATH,123,-2155.69,5115.97,-18.1534,0,0,0,0,100),
(@PATH,124,-2170.60,5125.13,-21.2824,0,0,0,0,100),
(@PATH,125,-2182.81,5131.87,-21.667,0,0,0,0,100),
(@PATH,126,-2198.88,5138.77,-21.2323,0,0,0,0,100),
(@PATH,127,-2219.62,5144.57,-19.6848,0,0,0,0,100),
(@PATH,128,-2238.57,5146.29,-17.4706,0,0,0,0,100),
(@PATH,129,-2266.45,5144.26,-13.0598,0,0,0,0,100),
(@PATH,130,-2290.86,5142.23,-9.17377,0,0,0,0,100),
(@PATH,131,-2308.35,5142.09,-7.11532,0,0,0,0,100),
(@PATH,132,-2333.72,5149.44,-5.0165,0,0,0,0,100),
(@PATH,133,-2365.45,5157.88,-2.8501,0,0,0,0,100),
(@PATH,134,-2390.26,5158.22,-1.19618,0,0,0,0,100),
(@PATH,135,-2417.84,5153.35,0.775549,0,0,0,0,100),
(@PATH,136,-2442.28,5142.04,3.53141,0,0,0,0,100),
(@PATH,137,-2469.81,5120.56,6.76948,0,0,0,0,100),
(@PATH,138,-2498.06,5115.06,7.87731,0,0,0,0,100),
(@PATH,139,-2532.85,5118.89,7.54034,0,0,0,0,100),
(@PATH,140,-2555.60,5120.59,7.69492,0,0,0,0,100), -- GUID+1 as action_id
(@PATH,141,-2843.86,3205.97,5.45323,0,0,0,0,100);
-- Assign Path
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES 
(@GUID,@PATH);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `Id`=8345;
UPDATE `quest_template` SET `NextQuestId`=0 WHERE `Id`=8330;
-- The Admiral Revealed (12852) - http://www.wowhead.com/quest=12852
-- http://www.youtube.com/watch?v=I9doc1BVmA8
SET @WHIRLWIND       := 49807; -- Admiral's Whirlwind, AoE, used in phase 1
SET @STRIKE          := 57846; -- Admiral's Heroic Strike, cast on tank, used in phase 1
SET @CLEAVE          := 15284; -- Admiral's Cleave, cast in cone, used in phase 1
SET @TOUCH           := 60501; -- Selfcast on Mal'Ganis, heals him, used in phase 2
SET @SLEEP           := 53045; -- Mal'Ganis Sleep,Cast on random group member, used in phase 2
SET @BLAST           := 60500; -- Mal'Ganis Mind Blast, Cast on random group member, used in phase 2
SET @CARRION         := 60502; -- Mal'Ganis Carrion Swarm, Cast in cone, used in phase 2
SET @SHIELD          := 50161; -- Cast when Admiral on 50 %
SET @ITEMSPELL       := 31699; -- Spell to disable shield
SET @ADMIRAL         := 29621; -- Grand Admiral Westwind
SET @MALGANIS        := 29620; -- Dreadlord Mal'Ganis
SET @PORTAL          := 27731; -- Portal visual
SET @LEGION_TELEPORT := 35502; -- Mal'Ganis Legion Portal visual
SET @CREDIT_BUNNY    := 29627; -- Cute little flaming bunny
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (@CREDIT_BUNNY);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CREDIT_BUNNY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`, `target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@CREDIT_BUNNY, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, @PORTAL, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Credit Bunny - Just Summoned - Cast Portal');
-- SAI for Grand Admiral Westwind
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (@ADMIRAL,@MALGANIS,@ADMIRAL*100);
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (@ADMIRAL,@ADMIRAL*100) AND `source_type` IN (0,9);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MALGANIS AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`, `target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ADMIRAL, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 42, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On aggro - Set invicibility at 1 HP'),
(@ADMIRAL, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Say line 0'),
(@ADMIRAL, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Set phase 1'),
(@ADMIRAL, 0, 3, 4, 2, 0, 100, 1, 0, 50, 0, 0, 11, @SHIELD, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - At 50% HP - Cast Protection Sphere'),
(@ADMIRAL, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - Link - Say line 1'),
(@ADMIRAL, 0, 5, 6, 8, 0, 100, 0, @ITEMSPELL, 0, 0, 0, 28, @SHIELD, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On spell hit - Remove aura'),
(@ADMIRAL, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - Link - Say line 2'),
(@ADMIRAL, 0, 7, 8, 2, 0, 100, 1, 0, 30, 0, 0, 3, @MALGANIS, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - At 30% HP - Morph to Dreadlord Mal''Ganis'),
(@ADMIRAL, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Set phase 2'),
(@ADMIRAL, 0, 9,10, 61, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - Link - Say line 3'),
(@ADMIRAL, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Grand Admiral Westwind - Link - Sheath'),
(@ADMIRAL, 0, 11, 0, 2, 0, 100, 1, 0, 15, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - At 15% HP - Say line 4'),
(@ADMIRAL, 0, 12, 0, 1, 0, 100, 0, 0, 0, 0, 0, 3, @ADMIRAL, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On evade - Restore model'),
(@ADMIRAL, 0, 13, 14, 2, 0, 100, 1, 1, 1, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On 1 hp - Set unit_flags'),
(@ADMIRAL, 0, 14, 15, 61, 0, 100, 1, 0, 0, 0, 0, 12, @CREDIT_BUNNY, 1, 19000, 0, 0, 0, 8, 0, 0, 0, 7494.893066, 4871.533203, -12.655286, 1.376, 'Grand Admiral Westwind - On Link - Summon Npc'),
(@ADMIRAL, 0, 15, 16, 61, 0, 100, 1, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Stop Combat/Attack Attack State'),
(@ADMIRAL, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, @ADMIRAL*100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Start timed script'),
(@ADMIRAL*100, 9, 0, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 22, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On script - Set phase 3'),
(@ADMIRAL*100, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 7494.788, 4872.567, -12.72154, 0, 'Grand Admiral Westwind - On Script - Move to Pos'),
(@ADMIRAL*100, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Script - Say line 6'),
(@ADMIRAL*100, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, @LEGION_TELEPORT, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Script - Cast spell on self'),
(@ADMIRAL*100, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 33, @CREDIT_BUNNY, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Script - Give quest credit'),
(@ADMIRAL*100, 9, 5, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 41, 3500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Script - Despawn'),
(@ADMIRAL, 0, 17, 0, 11, 0, 100, 0, 0, 0, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Respawn - Unset unit_flags'),
(@ADMIRAL, 0, 18, 0, 0, 1, 100, 0, 15000, 16000, 16000, 16000, 11, @WHIRLWIND, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 1 - Cast Whirlwind'),
(@ADMIRAL, 0, 19, 0, 0, 1, 100, 0, 6000, 7000, 6000, 7000, 11, @STRIKE, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 1 - Cast Heroic Strike'),
(@ADMIRAL, 0, 20, 0, 0, 2, 100, 0, 15000, 16000, 15000, 16000, 11, @SLEEP, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 2 - Cast Sleep'),
(@ADMIRAL, 0, 21, 0, 0, 2, 100, 0, 6000, 7000, 6000, 7000, 11, @TOUCH, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 2- Cast Vampiric Touch'),
(@ADMIRAL, 0, 22, 0, 0, 1, 100, 0, 13000, 13500, 13000, 13500, 11, @CLEAVE, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 1 - Cast Cleave'),
(@ADMIRAL, 0, 23, 0, 0, 2, 100, 0, 8000, 9000, 8000, 9000, 11, @CARRION, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 2 - Cast Carrion Swarm'),
(@ADMIRAL, 0, 24, 0, 0, 2, 100, 0, 18000, 19000, 18000, 19000, 11, @BLAST, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 2 - Cast Mind Blast'),
(@ADMIRAL, 0, 25, 0, 25, 0, 100, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Reset - Allow Attack State');
/*
Sound ID's
14429 Final speech - When he uses portal
14428 2% HP - When he becomes immune
14427 15 % - When he rages
14426 30% HP - When he morphs
14207 Sphere removed - When Item spell is used on him
14205 Sphere cast - When he casts sphere on self
14201 Beginning of combat - When he aggros
*/
-- Sniffed text with sounds
DELETE FROM `creature_text` WHERE `entry` IN (@ADMIRAL,@MALGANIS);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ADMIRAL,0,0, 'How did you find me? Did Landgren tell?',12,0,100,0,0,14201, 'Grand Admiral Westwind'),
(@ADMIRAL,1,0, 'You thought I would just let you kill me?',12,0,100,0,0,14205, 'Grand Admiral Westwind'),
(@ADMIRAL,2,0, 'WHAT?! No matter. Even without my sphere, I will crush you! Behold my true identity and despair!',14,0,100,0,0,14207, 'Grand Admiral Westwind'),
(@ADMIRAL,3,0, 'Gah! I spent too much time in that weak little shell.',14,0,100,0,0,14426, 'Grand Admiral Westwind'),
(@ADMIRAL,4,0, 'Kirel narak! I am Mal''Ganis. I AM ETERNAL!',14,0,100,0,0,14427, 'Grand Admiral Westwind'),
(@ADMIRAL,5,0, 'ENOUGH! I waste my time here. I must gather my strength on the homeworld.',14,0,100,0,0,14428, 'Grand Admiral Westwind'),
(@ADMIRAL,6,0, 'You''ll never defeat the Lich King without my forces. I''ll have my revenge... on him AND you!',14,0,100,0,0,14429, 'Grand Admiral Westwind');
-- ----------------------------
-- Table structure for `player_factionchange_quests`
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_quests`;
CREATE TABLE `player_factionchange_quests` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`),
  UNIQUE INDEX `alliance_uniq` (`alliance_id`),
  UNIQUE INDEX `horde_uniq` (`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DELETE FROM `player_factionchange_quests` WHERE `alliance_id` IN (9524, 8114, 7168, 7169, 7170, 7171, 7172, 8115, 8311, 8960, 8860, 8997, 9520, 9522, 9587, 9869, 9933, 9938, 9940, 9982, 9994, 9996, 10005, 10014, 10033, 10035, 10038, 10040, 10042, 10048, 10051, 10053, 10054, 10055, 10056, 10057, 10076, 10078, 10080, 10083, 10084, 10115, 10116, 10140, 10141, 10122, 10142, 10126, 10145, 10128, 10146, 10130, 10131, 10147, 10148, 10137, 10138, 10139, 10163, 10394, 10397, 10395, 10443, 10444, 10476, 10562, 10563, 10564, 10572, 10582, 10583, 10585, 10586, 10589, 10606, 10612, 10621, 10626, 10662, 10680, 10744, 10772, 10773, 10754, 10762, 10763, 10764, 10759, 10774, 10766, 10775, 10776, 10863, 10869, 10962, 11002, 11117, 11122, 11123, 11150, 11185, 11242, 11302, 11346, 11348, 11349, 11355, 11358, 11359, 11321, 11131, 12135, 11400, 11486, 11502, 11657, 11713, 11704, 11731, 11882, 11921, 11924, 11986, 11993, 12022, 12105, 12129, 12130, 12131, 12133, 12138, 12142, 12143, 12146, 12153, 12161, 12183, 12184, 12185, 12219, 12220, 12222, 12223, 12246, 12247, 12249, 12248, 12250, 12255, 12278, 12464, 12323, 12416, 12417, 12418, 12460, 12479, 12491, 12854, 12858, 12860, 12862, 12870, 12872, 12885, 13186, 13222, 13188, 13226, 13395, 13387, 13388, 13389, 13390, 13391, 13392, 13284, 13393, 13394, 13332, 13334, 13309, 13337, 13338, 13339, 13335, 13336, 13341, 13396, 13397, 13398, 13399, 13400, 13401, 13402, 13403, 13380, 13381, 13382, 13383, 13408, 13410, 13415, 13418, 13480, 13484, 13633, 13625, 13671, 13672, 13679, 13686, 13828, 13835, 13837, 14022, 14023, 14024, 14028, 14030, 14033, 14035, 14048, 14051, 14053, 14054, 14055, 14096, 14111, 20438, 20439, 24498, 24499, 24500, 24510, 24535, 24656, 24657, 24683, 24710, 24711, 24655, 24804, 24848, 25055, 25180, 25253, 25282, 25290, 25414);
INSERT INTO `player_factionchange_quests` (`alliance_id`, `horde_id`) VALUES
(9524, 9525),
(8114, 8121),
(7168, 7163),
(7169, 7164),
(7170, 7165),
(7171, 7166),
(7172, 7167),
(8115, 8122),
(8311, 8312),
(8960, 9032),
(8860, 8861),
(8997, 8998),
(9520, 9535),
(9522, 9536),
(9587, 9588),
(9869, 9870),
(9933, 9934),
(9938, 9937),
(9940, 9939),
(9982, 9983),
(9994, 9995),
(9996, 9997),
(10005, 10006),
(10014, 10015),
(10033, 10034),
(10035, 10036),
(10038, 10039),
(10040, 10041),
(10042, 10043),
(10048, 10049),
(10051, 10052),
(10053, 10059),
(10054, 10060),
(10055, 10086),
(10056, 10158),
(10057, 10062),
(10076, 10074),
(10078, 10087),
(10080, 10089),
(10083, 10090),
(10084, 10092),
(10115, 10118),
(10116, 10117),
(10140, 10120),
(10141, 10121),
(10122, 10150),
(10142, 10123),
(10126, 10151),
(10145, 10127),
(10128, 10153),
(10146, 10129),
(10130, 10152),
(10131, 10154),
(10147, 10133),
(10148, 10135),
(10137, 10155),
(10138, 10156),
(10139, 10157),
(10163, 10162),
(10394, 10390),
(10397, 10392),
(10395, 10393),
(10443, 10442),
(10444, 10448),
(10476, 10479),
(10562, 10595),
(10563, 10596),
(10564, 10598),
(10572, 10597),
(10582, 10600),
(10583, 10601),
(10585, 10602),
(10586, 10603),
(10589, 10604),
(10606, 10611),
(10612, 10613),
(10621, 10623),
(10626, 10627),
(10662, 10663),
(10680, 10681),
(10744, 10745),
(10772, 10750),
(10773, 10751),
(10754, 10755),
(10762, 10756),
(10763, 10757),
(10764, 10758),
(10759, 10761),
(10774, 10765),
(10766, 10767),
(10775, 10768),
(10776, 10769),
(10863, 10862),
(10869, 10868),
(10962, 10963),
(11002, 11003),
(11117, 11431),
(11122, 11412),
(11123, 11124),
(11150, 11205),
(11185, 11186),
(11242, 11403),
(11302, 11312),
(11346, 11350),
(11348, 11352),
(11349, 11351),
(11355, 11365),
(11358, 11366),
(11359, 11367),
(11321, 11413),
(11131, 11219),
(12135, 12139),
(11400, 11419),
(11486, 11487),
(11502, 11503),
(11657, 11923),
(11713, 11684),
(11704, 11702),
(11731, 11922),
(11882, 11915),
(11921, 11926),
(11924, 11925),
(11986, 12026),
(11993, 12058),
(12022, 12191),
(12105, 12423),
(12129, 12165),
(12130, 12196),
(12131, 12197),
(12133, 12155),
(12138, 12198),
(12142, 12144),
(12143, 12145),
(12146, 12147),
(12153, 12199),
(12161, 12425),
(12183, 12201),
(12184, 12202),
(12185, 12203),
(12219, 12207),
(12220, 12213),
(12222, 12256),
(12223, 12257),
(12246, 12229),
(12247, 12231),
(12249, 12236),
(12248, 12241),
(12250, 12242),
(12255, 12259),
(12278, 12306),
(12464, 12285),
(12323, 12324),
(12416, 12448),
(12417, 12449),
(12418, 12450),
(12460, 12461),
(12479, 12480),
(12491, 12492),
(12854, 12895),
(12858, 12926),
(12860, 12927),
(12862, 13060),
(12870, 12882),
(12872, 12928),
(12885, 12929),
(13186, 13185),
(13222, 13223),
(13188, 13189),
(13226, 13227),
(13395, 13236),
(13387, 13259),
(13388, 13262),
(13389, 13263),
(13390, 13271),
(13391, 13275),
(13392, 13282),
(13284, 13301),
(13393, 13304),
(13394, 13305),
(13332, 13306),
(13334, 13307),
(13309, 13310),
(13337, 13312),
(13338, 13316),
(13339, 13328),
(13335, 13329),
(13336, 13330),
(13341, 13340),
(13396, 13348),
(13397, 13349),
(13398, 13359),
(13399, 13360),
(13400, 13361),
(13401, 13362),
(13402, 13363),
(13403, 13364),
(13380, 13373),
(13381, 13374),
(13382, 13376),
(13383, 13379),
(13408, 13409),
(13410, 13411),
(13415, 13416),
(13418, 13419),
(13480, 13479),
(13484, 13483),
(13633, 13634),
(13625, 13677),
(13671, 13676),
(13672, 13678),
(13679, 13680),
(13686, 13687),
(13828, 13829),
(13835, 13838),
(13837, 13839),
(14022, 14036),
(14023, 14037),
(14024, 14040),
(14028, 14041),
(14030, 14044),
(14033, 14043),
(14035, 14047),
(14048, 14061),
(14051, 14062),
(14053, 14059),
(14054, 14060),
(14055, 14058),
(14096, 14142),
(14111, 14100),
(20438, 24556),
(20439, 24451),
(24498, 24507),
(24499, 24511),
(24500, 24802),
(24510, 24506),
(24535, 24563),
(24656, 24541),
(24657, 24576),
(24683, 24682),
(24710, 24712),
(24711, 24713),
(24655, 24536),
(24804, 24805),
(24848, 24850),
(25055, 25092),
(25180, 25181),
(25253, 25228),
(25282, 25254),
(25290, 25288),
(25414, 25293);
-- Delete condition that can cause some damage reduction "spikes" leading to leaking damage,
-- or in simple language some delay can cause not applying.
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56438;
-- Delete condition that is already covered by spell attribute
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=58846;
SET @CGUID := 86429;
SET @OGUID := 24440;

UPDATE `gameobject` SET `spawntimesecs`=120, `animprogress`=255 WHERE `id`=188464;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+21;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+00, 188464, 571, 1, 1, 4781.308, -4865.809, 26.53011, 0.8377575, 0, 0, 0.4067364, 0.9135455, 120, 255, 1),
(@OGUID+01, 188464, 571, 1, 1, 4753.355, -4830.314, 26.04058, 5.532695, 0, 0, -0.3665009, 0.9304177, 120, 255, 1),
(@OGUID+02, 188464, 571, 1, 1, 4758.613, -4824.151, 25.96103, 5.550147, 0, 0, -0.3583679, 0.9335805, 120, 255, 1),
(@OGUID+03, 188464, 571, 1, 1, 4764.173, -4818.161, 25.88273, 5.550147, 0, 0, -0.3583679, 0.9335805, 120, 255, 1),
(@OGUID+04, 188464, 571, 1, 1, 4785.614, -4793.256, 26.12138, 5.550147, 0, 0, -0.3583679, 0.9335805, 120, 255, 1),
(@OGUID+05, 188464, 571, 1, 1, 4848.127, -4827.709, 25.96146, 2.408554, 0, 0, 0.9335804, 0.358368, 120, 255, 1),
(@OGUID+06, 188464, 571, 1, 1, 4790.917, -4787.033, 26.19655, 5.550147, 0, 0, -0.3583679, 0.9335805, 120, 255, 1),
(@OGUID+07, 188464, 571, 1, 1, 4796.205, -4780.994, 26.19833, 5.567601, 0, 0, -0.3502073, 0.9366722, 120, 255, 1),
(@OGUID+08, 188464, 571, 1, 1, 4829.167, -4799.646, 25.96292, 3.961899, 0, 0, -0.9170599, 0.3987495, 120, 255, 1),
(@OGUID+09, 188464, 571, 1, 1, 4775.307, -4860.43, 26.52502, 0.8377575, 0, 0,  0.4067364, 0.9135455, 120, 255, 1),
(@OGUID+10, 188499, 571, 1, 1, 4783.06, -4870.042, 26.63436, 5.567601, 0, 0, -0.3502073, 0.9366722, 300, 255, 1),
(@OGUID+11, 188499, 571, 1, 1, 4776.997, -4864.7, 26.76528, 5.67232, 0, 0, -0.3007059, 0.9537169, 300, 255, 1),
(@OGUID+12, 188499, 571, 1, 1, 4804.492, -4880.459, 25.95016, 0.9250238, 0, 0, 0.4461975, 0.8949345, 300, 255, 1),
(@OGUID+13, 188499, 571, 1, 1, 4754.443, -4825.909, 26.1786, 4.01426, 0, 0, -0.9063072, 0.4226195, 300, 255, 1),
(@OGUID+14, 188499, 571, 1, 1, 4797.431, -4776.76, 26.2836, 3.979355, 0, 0, -0.9135447, 0.4067384, 300, 255, 1),
(@OGUID+15, 188499, 571, 1, 1, 4792.048, -4782.723, 26.41635, 4.049168, 0, 0, -0.8987932, 0.4383728, 300, 255, 1),
(@OGUID+16, 188499, 571, 1, 1, 4806.47, -4775.945, 26.30708, 2.373644, 0, 0,  0.9271832, 0.3746083, 300, 255, 1),
(@OGUID+17, 188499, 571, 1, 1, 4809.335, -4874.765, 26.06562, 0.8377575, 0, 0, 0.4067364, 0.9135455, 300, 255, 1),
(@OGUID+18, 188499, 571, 1, 1, 4819.935, -4862.525, 26.05573, 0.8203033, 0, 0,  0.3987484, 0.9170604, 300, 255, 1),
(@OGUID+19, 188499, 571, 1, 1, 4786.889, -4788.973, 26.3336, 4.049168, 0, 0, -0.8987932, 0.4383728, 300, 255, 1),
(@OGUID+20, 188499, 571, 1, 1, 4852.343, -4826.055, 26.06636, 0.8552105, 0, 0, 0.4146929, 0.9099615, 300, 255, 1),
(@OGUID+21, 188499, 571, 1, 1, 4845.617, -4811.589, 26.17898, 2.391098, 0, 0, 0.9304171, 0.3665025, 300, 255, 1);

DELETE FROM `creature` WHERE `id` IN (26811,26812);
DELETE FROM `creature` WHERE `guid` IN (113208,113209);
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+00 AND @CGUID+14;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+00, 26811, 571, 1, 1, 4733.245, -4857.637, 26.4931, 2.617994, 300, 5, 1),
(@CGUID+01, 26812, 571, 1, 1, 4796.549, -4846.317, 25.50747, 4.249843, 300, 5, 1),
(@CGUID+02, 26811, 571, 1, 1, 4766.232, -4820.333, 25.69218, 2.329675, 300, 5, 1),
(@CGUID+03, 26811, 571, 1, 1, 4823.353, -4839.751, 25.7641, 1.145746, 300, 5, 1),
(@CGUID+04, 26812, 571, 1, 1, 4797.967, -4783.413, 25.99624, 4.269053, 300, 5, 1),
(@CGUID+05, 26812, 571, 1, 1, 4759.746, -4835.385, 25.90628, 3.535823, 300, 5, 1),
(@CGUID+06, 26812, 571, 1, 1, 4782.295, -4858.29, 26.10907, 4.433136, 300, 5, 1),
(@CGUID+07, 26811, 571, 1, 1, 4795.084, -4869.773, 25.85341, 3.63068, 300, 5, 1),
(@CGUID+08, 26812, 571, 1, 1, 4758.876, -4857.517, 25.89942, 3.830702, 300, 5, 1),
(@CGUID+09, 26811, 571, 1, 1, 4809.717, -4858.999, 25.77467, 4.760717, 300, 5, 1),
(@CGUID+10, 26811, 571, 1, 1, 4801.294, -4802.357, 25.66738, 5.655887, 300, 5, 1),
(@CGUID+11, 26812, 571, 1, 1, 4831.968, -4810.053, 25.6752, 4.12599, 300, 5, 1),
(@CGUID+12, 26811, 571, 1, 1, 4845.415, -4821.253, 25.65237, 4.234284, 300, 5, 1),
(@CGUID+13, 26806, 571, 1, 1, 4668.349, -4849.098, 35.56351, 3.106686, 300, 0, 0),
(@CGUID+14, 26806, 571, 1, 1, 4669.264, -4869.123, 35.5635, 3.263766, 300, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (26591,26811,26812);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=188464;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26591,26811,26812) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=188464 AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=26812*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26591,0,0,0,38,0,100,0,0,1,0,0,11,47798,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Pacer Bunny - Drak Theron Exterior - On data set 0 1 - Spellcast Summon Mummy Remnants'),
(26811,0,0,1,8,0,100,0,47778,0,0,0,11,47795,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Spellcast Cold Cleanse'),
(26811,0,1,2,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Set event phase 1'),
(26811,0,2,3,61,0,100,0,0,0,0,0,18,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Set unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC, NOT_SELECTABLE'),
(26811,0,3,4,61,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Set run'),
(26811,0,4,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Stop combat movement'),
(26811,0,5,6,23,1,100,1,47795,0,0,0,69,1,0,0,0,0,0,20,188464,40,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellfade Cold Cleanse - Move to position Ancient Troll Mummy'),
(26811,0,6,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellfade Cold Cleanse - Say line'),
(26811,0,7,0,34,0,100,0,0,1,0,0,80,26812*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On movement inform - Run script'),
(26811,0,8,0,11,0,100,0,0,0,0,0,91,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spawn - Remove unit_field_bytes1 (sleep)'),
(26812,0,0,1,8,0,100,0,47778,0,0,0,11,47795,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Spellcast Cold Cleanse'),
(26812,0,1,2,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Set event phase 1'),
(26812,0,2,3,61,0,100,0,0,0,0,0,18,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Set unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC, NOT_SELECTABLE'),
(26812,0,3,4,61,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Set run'),
(26812,0,4,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Stop combat movement'),
(26812,0,5,6,23,1,100,1,47795,0,0,0,69,1,0,0,0,0,0,20,188464,40,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellfade Cold Cleanse - Move to position Ancient Troll Mummy'),
(26812,0,6,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellfade Cold Cleanse - Say line'),
(26812,0,7,0,34,0,100,0,0,1,0,0,80,26812*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On movement inform - Run script'),
(26812,0,8,0,11,0,100,0,0,0,0,0,91,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spawn - Remove unit_field_bytes1 (sleep)'),

(188464,1,0,0,38,0,100,0,0,1,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Troll Mummy - On data set 0 1 - Change state (deactivated)'),
(188464,1,1,0,70,0,100,0,2,0,0,0,70,120,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Troll Mummy - On state changed - Despawn'),

(26812*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,26591,5,0,0,0,0,0, 'Ancient Drakkari script - Turn to Pacer Bunny - Drak Theron Exterior'),
(26812*100,9,1,0,0,0,100,0,50,50,0,0,90,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari script - Set unit_field_bytes1 (sleep)'),
(26812*100,9,2,0,0,0,100,0,2000,2000,0,0,19,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari script - Remove unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC, NOT_SELECTABLE'),
(26812*100,9,3,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,26591,5,0,0,0,0,0, 'Ancient Drakkari script - Set data 0 1 Pacer Bunny - Drak Theron Exterior'),
(26812*100,9,4,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,20,188464,5,0,0,0,0,0, 'Ancient Drakkari script - Set data 0 1 Ancient Troll Mummy'),
(26812*100,9,5,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari script - Despawn');

DELETE FROM `creature_text` WHERE `entry` IN (26811,26812);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26811,0,0,'I could sleep forever, mon....',12,0,100,0,0,0,'Ancient Drakkari Warmonger'),
(26811,0,1,'Finally, I can be restin''...',12,0,100,0,0,0,'Ancient Drakkari Warmonger'),
(26811,0,2,'Free at last, mon.',12,0,100,0,0,0,'Ancient Drakkari Warmonger'),
(26811,0,3,'Where''s mah mummy?',12,0,100,0,0,0,'Ancient Drakkari Warmonger'),
(26812,0,0,'I could sleep forever, mon....',12,0,100,0,0,0,'Ancient Drakkari Soothsayer'),
(26812,0,1,'Finally, I can be restin''...',12,0,100,0,0,0,'Ancient Drakkari Soothsayer'),
(26812,0,2,'Free at last, mon.',12,0,100,0,0,0,'Ancient Drakkari Soothsayer'),
(26812,0,3,'Where''s mah mummy?',12,0,100,0,0,0,'Ancient Drakkari Soothsayer');
-- Fix quests Borrowed Technology, The Solution Solution /Daily/, Volatility, Volatility /Daily/
-- thanks to genjush for corrections on wrong quest ids
SET @Skytalon := 31583; -- Frostbrood Skytalon
SET @Decoy := 31578; -- Armored Decoy
SET @QuestCredit := 59329; -- Fake Soldier Kill Credit
SET @Stun := 59292; -- Freeze animation to look like Decoy
SET @Explosion := 59335; -- The spell that should kill Skytalon and Decoy
SET @Summon := 59303; -- Summon Skyatalon
SET @Immolation := 54690; -- Skytalon burning animation spell
SET @Grab := 59318;
SET @Bunny := 31630;
SET @PingBunny := 59375; -- Skytalon cast on accessory bunny to tell it to explode after 6 seconds
SET @Script := @Bunny * 100; -- Explosion bunny timed action list

-- Set inhabit type only 4 to Explosion Bunny that is a vehicle accessory of the Skytalon, otherwise it falls and add "Smart_AI"
UPDATE `creature_template` SET `InhabitType`=4,`AIName`='SmartAI',`flags_extra`=flags_extra|128 WHERE `entry`=@Bunny;
UPDATE `creature_template` SET `unit_flags`=unit_flags|0x00000100|0x00008000,`faction_A`=974,`faction_H`=974,`vehicleId`=279,`InhabitType`=4,`AIName`='',`ScriptName`='npc_frostbrood_skytalon',`HoverHeight`=5 WHERE `entry`=@Skytalon;
UPDATE `creature_template` SET `unit_flags`=unit_flags|0x00000100|0x00008000,`faction_A`=190,`faction_H`=190,`AIName`='SmartAI' WHERE `entry`=@Decoy;

-- Add missing equipment
DELETE FROM `creature_equip_template` WHERE `entry`=@Decoy;
INSERT INTO `creature_equip_template` (`entry`,`id`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(@Decoy,1,21573,0,0); -- Armored Decoy -> Monster - Sword, 1H Alliance PvP

-- Add creature_addon data
DELETE FROM `creature_template_addon` WHERE `entry`=@Skytalon;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(@Skytalon,0,0,50331648,1,0, '60534');

-- Insert spell_script names
DELETE FROM `spell_script_names` WHERE `spell_id` IN (@Grab,@Summon);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(@Grab, 'spell_q13291_q13292_q13239_q13261_frostbrood_skytalon_grab_decoy'),
(@Summon, 'spell_q13291_q13292_q13239_q13261_armored_decoy_summon_skytalon');

-- Quests relations
UPDATE `quest_template` SET `PrevQuestId`=13290,`NextQuestId`=13383 WHERE `id`=13291; -- Borrowed Technology
UPDATE `quest_template` SET `PrevQuestId`=13291,`NextQuestId`=0 WHERE `id`=13292; -- The Solution Solution /Daily/
UPDATE `quest_template` SET `PrevQuestId`=13238,`NextQuestId`=13379 WHERE `id`=13239; -- Volatility
UPDATE `quest_template` SET `PrevQuestId`=13329,`NextQuestId`=0 WHERE `id`=13261; -- Volatiliy /Daily/

-- Add SAI support for Explosion bunny and Decoy
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@Bunny,@Decoy);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Bunny,0,0,0,8,0,100,0,@PingBunny,0,0,0,80,@Script,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Explosion Bunny - On hit by ping bunny - Start timed action list'),
(@Script,9,0,0,0,0,100,0,6000,6000,0,0,11,@Explosion,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Explosion Bunny - Action 0 - Cast explosion on self'),
(@Decoy,0,0,1,54,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Armored Decoy - On just summoned - Store invoker /since target summoner fails/'),
(@Decoy,0,1,2,61,0,100,0,0,0,0,0,11,@Stun,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Armored Decoy - Linked - Cast Freeze animation on self'),
(@Decoy,0,2,0,61,0,100,0,0,0,0,0,11,@Summon,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Armored Decoy - Linked - Cast summon Skytalon behind'),
(@Decoy,0,3,0,8,0,100,0,@Explosion,0,0,0,11,@QuestCredit,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Armored Decoy - On hit by explosion - Cast kill credit to stored target');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@Explosion,@PingBunny);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@Explosion,0,0,31,0,3,@Decoy,0,0,0,0,'', 'Explosion Bunny can hit Armored Decoy'),
(13,1,@Explosion,0,1,31,0,3,@Skytalon,0,0,0,0,'', 'Explosion Bunny can hit Skytalon'),
(13,1,@PingBunny,0,0,31,0,3,@Bunny,0,0,0,0,'', 'Ping Bunny can hit only Explosion Bunny');
DELETE FROM `pool_creature` WHERE `pool_entry`=1077;
DELETE FROM `pool_template` WHERE `entry`=1077;
-- Update some gameobject data that is correct in WDB, but parsed wrong for some reason
UPDATE `gameobject_template` SET `faction`=35,`data17`=1,`data18`=0 WHERE `entry`=193908;
DELETE FROM `command` WHERE `name` IN
("deserter instance add",
"deserter instance remove",
"deserter bg add",
"deserter bg remove");

INSERT INTO `command` (`name`, `security`, `help`) VALUES
("deserter instance add", 3, "Syntax: .deserter instance add $time \n\n Adds the instance deserter debuff to your target with $time duration."),
("deserter instance remove", 3, "Syntax: .deserter instance remove \n\n Removes the instance deserter debuff from your target."),
("deserter bg add", 3, "Syntax: .deserter bg add $time \n\n Adds the bg deserter debuff to your target with $time duration."),
("deserter bg remove", 3, "Syntax: .deserter bg remove \n\n Removes the bg deserter debuff from your target.");
UPDATE `trinity_string` SET `content_default`='Map: %u (%s) Zone: %u (%s) Area: %u (%s) Phase: %u
X: %f Y: %f Z: %f Orientation: %f
grid[%u,%u]cell[%u,%u] InstanceID: %u
 ZoneX: %f ZoneY: %f
GroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u MMap: %u)' WHERE `entry`=101;
UPDATE `trinity_string` SET `content_default`='Unit Flags: %u.
Unit Flags 2: %u.
Dynamic Flags: %u.
Faction Template: %u.' WHERE `entry`=542;
SET @ADARRAH := 24405;
SET @WARMONGER := 26811;
SET @SOOTHSAYER := 26812;
SET @HARRISON := 26814;
SET @TECAHUNA := 26865;
SET @MUMMY_BUNNY := 26867;

DELETE FROM `creature_equip_template` WHERE `entry`=@HARRISON;

UPDATE `gameobject` SET `state`=1 WHERE `id`=188465;
UPDATE `gameobject` SET `state`=0 WHERE `id`=188480;

UPDATE `creature` SET `equipment_id`=0 WHERE `id`=@HARRISON;
DELETE FROM `creature` WHERE `guid`=86444;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(86444, @ADARRAH, 571, 1, 1, 4912.768, -4797.917, 32.68771, 3.595378, 300, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@WARMONGER,@SOOTHSAYER,@MUMMY_BUNNY);
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES
(@WARMONGER,'17327'),
(@SOOTHSAYER,'17327'),
(@MUMMY_BUNNY,'48150');

UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=@ADARRAH;
UPDATE `creature_template` SET `dmg_multiplier`=5 WHERE `entry`=@HARRISON;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `unit_flags`=768, `dmg_multiplier`=6, `AIName`='SmartAI' WHERE `entry`=@TECAHUNA;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE `entry`=26871;
UPDATE `creature_template` SET `unit_flags`=33554688, `flags_extra`=128 WHERE `entry`=@MUMMY_BUNNY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@ADARRAH,@HARRISON,@MUMMY_BUNNY);
UPDATE `gameobject_template` SET `flags`=2 WHERE `entry` IN (188472,188487);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ADARRAH,@HARRISON,@TECAHUNA,@MUMMY_BUNNY) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@WARMONGER AND `source_type`=0 AND `id`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SOOTHSAYER AND `source_type`=0 AND `id` BETWEEN 9 AND 18;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ADARRAH*100,@HARRISON*100,@HARRISON*100+1,@HARRISON*100+2,@HARRISON*100+3,@HARRISON*100+4,@TECAHUNA*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ADARRAH,0,0,0,38,0,100,0,0,1,0,0,80,@ADARRAH*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah - On data set 0 1 - Run script'),
(@ADARRAH,0,1,0,40,0,100,0,6,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah - On WP reached - Despawn'),

(@WARMONGER,0,9,0,0,0,100,0,5000,7000,8000,12000,11,50370,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On update IC - Spellcast Sunder Armor'),
(@SOOTHSAYER,0,9,10,4,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On aggro - Set event phase 2'),
(@SOOTHSAYER,0,10,0,61,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On aggro - Stop combat movement'),
(@SOOTHSAYER,0,11,0,0,2,100,0,0,0,3400,4800,11,9734,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On update IC (phase 2) - Spellcast Holy Smite'),
(@SOOTHSAYER,0,12,13,9,2,100,0,35,80,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On target range 35y and more - Set event phase 3'),
(@SOOTHSAYER,0,13,0,61,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On target range 40y and more - Start combat movement'),
(@SOOTHSAYER,0,14,10,9,0,100,0,5,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On target range below 15y - Set event phase 2'),
(@SOOTHSAYER,0,15,13,9,0,100,0,0,5,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On target range below 15y - Set event phase 2'),
(@SOOTHSAYER,0,16,13,3,0,100,0,0,7,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On mana below 7% - Set event phase 4'),
(@SOOTHSAYER,0,17,13,3,8,100,0,15,100,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On mana over 15% (phase 4) - Set event phase 2'),
(@SOOTHSAYER,0,18,0,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On evade - Set event phase 0'),

(@HARRISON,0,0,1,11,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On spawn - Reset faction'),
(@HARRISON,0,1,2,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On spawn - Set invincibility 1HP'),
(@HARRISON,0,2,0,61,0,100,0,0,0,0,0,71,0,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On spawn - Remove equip'),
(@HARRISON,0,3,4,19,0,100,0,12082,0,0,0,80,@HARRISON*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On quest accept - Run script 0'),
(@HARRISON,0,4,0,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,16,0,0,0,0,0,0,0, 'Harrison Jones - On quest accept - Store target list'),
(@HARRISON,0,5,6,40,0,100,0,7,@HARRISON,0,0,54,8500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 7 reached - Pause WP movement 8.5 seconds'),
(@HARRISON,0,6,0,61,0,100,0,0,0,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 7 reached - Say line'),
(@HARRISON,0,7,0,52,0,100,0,1,@HARRISON,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On text over - Say line'),
(@HARRISON,0,8,9,40,0,100,0,9,@HARRISON,0,0,54,12000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 9 reached - Pause WP movement 12 seconds'),
(@HARRISON,0,9,0,61,0,100,0,0,0,0,0,80,@HARRISON*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 9 reached - Run script 1'),
(@HARRISON,0,10,11,40,0,100,0,11,@HARRISON,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 11 reached - Pause WP movement 18 seconds'),
(@HARRISON,0,11,0,61,0,100,0,0,0,0,0,80,@HARRISON*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 11 reached - Run script 2'),
(@HARRISON,0,12,13,40,0,100,0,13,@HARRISON,0,0,54,4600,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 13 reached - Pause WP movement 4.5 seconds'),
(@HARRISON,0,13,0,61,0,100,0,0,0,0,0,1,4,4600,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 13 reached - Say line'),
(@HARRISON,0,14,0,52,0,100,0,4,@HARRISON,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On text over - Say line'),
(@HARRISON,0,15,0,40,0,100,0,16,@HARRISON,0,0,9,0,0,0,0,0,0,20,188480,50,0,0,0,0,0, 'Harrison Jones - On WP 16 reached - Activate Grizzly Hills - FireDoor01'),
(@HARRISON,0,16,17,40,0,100,0,17,@HARRISON,0,0,54,500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 17 reached - Say line'),
(@HARRISON,0,17,0,61,0,100,0,0,0,0,0,12,@TECAHUNA,2,300000,0,0,0,8,0,0,0,4906.587,-4818.92,32.63929,2.530727, 'Harrison Jones - On WP 17 reached - Summon Tecahuna'),
(@HARRISON,0,18,0,40,0,100,0,18,@HARRISON,0,0,80,@HARRISON*100+3,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 18 reached - Run script'),
(@HARRISON,0,19,20,2,0,100,1,0,0.0014,0,0,32,0,0,0,0,0,0,20,188480,50,0,0,0,0,0, 'Harrison Jones - On health below 0.0014% - Activate Grizzly Hills - FireDoor01'),
(@HARRISON,0,20,21,61,0,100,0,0,0,0,0,6,12082,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Harrison Jones - On health below 0.0014% - Fail quest'),
(@HARRISON,0,21,0,61,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On health below 0.0014% - Die'),
(@HARRISON,0,22,23,56,0,100,0,17,@HARRISON,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 17 resumed - Say line'),
(@HARRISON,0,23,0,61,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 17 resumed - Set run'),
(@HARRISON,0,24,0,38,0,100,0,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On data set 0 1 - Set event phase 1'),
(@HARRISON,0,25,0,7,1,100,0,0,0,0,0,80,@HARRISON*100+4,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On homeposition (phase 1) - Run script'),
(@HARRISON,0,26,27,40,0,100,0,21,@HARRISON*10,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 21 reached - Pause WP movement 6 seconds'),
(@HARRISON,0,27,0,61,0,100,0,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 21 reached - Say line'),
(@HARRISON,0,28,29,56,0,100,0,21,@HARRISON*10,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 21 resumed - Set run'),
(@HARRISON,0,29,0,61,0,100,0,0,0,0,0,15,12082,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Harrison Jones - On WP 21 resumed - Quest credit'),
(@HARRISON,0,30,0,40,0,100,0,25,@HARRISON*10,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 25 reached - Despawn'),
(@HARRISON,0,31,0,4,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On aggro - Set reaction hostile'),

(@TECAHUNA,0,0,1,54,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Just summoned - Set invincibility 1HP'),
(@TECAHUNA,0,1,2,61,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Just summoned - Root'),
(@TECAHUNA,0,2,3,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Just summoned - Set event phase 1'),
(@TECAHUNA,0,3,0,61,0,100,0,0,0,0,0,80,@TECAHUNA*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Just summoned - Run script'),
(@TECAHUNA,0,4,5,0,0,100,0,20000,25000,20000,30000,11,47601,0,0,0,0,0,19,@MUMMY_BUNNY,60,0,0,0,0,0, 'Tecahuna - On update IC - Spellcast Cosmetic - Tecahuna Spirit Beam'),
(@TECAHUNA,0,5,0,61,0,100,0,0,0,0,0,11,47601,0,0,0,0,0,19,@MUMMY_BUNNY,60,0,0,0,0,0, 'Tecahuna - On update IC - Spellcast Cosmetic - Tecahuna Spirit Beam'),
(@TECAHUNA,0,6,7,2,0,100,1,0,0.002,0,0,9,0,0,0,0,0,0,20,188480,50,0,0,0,0,0, 'Tecahuna - On health below 0.002% - Activate Grizzly Hills - FireDoor01'),
(@TECAHUNA,0,7,8,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@HARRISON,50,0,0,0,0,0, 'Tecahuna - On health below 0.002% - Set data 0 1 Harrison Jones'),
(@TECAHUNA,0,8,9,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,11,@MUMMY_BUNNY,50,0,0,0,0,0, 'Tecahuna - On health below 0.002% - Set data 0 1 Mummy Effect Bunny'),
(@TECAHUNA,0,9,0,61,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On health below 0.002% - Die'),
(@TECAHUNA,0,10,0,7,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On evade - Set event phase 1'),
(@TECAHUNA,0,11,0,0,3,100,0,0,0,8000,9000,11,47629,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Tecahuna - On update IC (phase 1+2) - Spellcast Tecahuna Venom Spit'),
(@TECAHUNA,0,12,14,9,1,100,0,40,80,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On target range more than 40y (phase 1) - Unroot'),
(@TECAHUNA,0,13,14,9,0,100,0,0,5,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On target range below 5y - Unroot'),
(@TECAHUNA,0,14,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Linked - Set event phase 2'),
(@TECAHUNA,0,15,16,3,0,100,0,0,7,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On mana below 7% (phase 1) - Unroot'),
(@TECAHUNA,0,16,0,61,0,100,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Linked - Set event phase 3'),
(@TECAHUNA,0,17,19,9,0,100,0,5,15,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On target range below 15y - Root'),
(@TECAHUNA,0,18,19,3,4,100,0,15,100,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On mana 15% (phase 3) - Unroot'),
(@TECAHUNA,0,19,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Linked - Set event phase 1'),

(@MUMMY_BUNNY,0,0,0,8,0,100,0,47601,0,0,0,11,47602,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mummy Effect Bunny - On spellhit Cosmetic - Tecahuna Spirit Beam - Spellcast Summon Ancient Drakkari King'),
(@MUMMY_BUNNY,0,1,0,38,0,100,0,0,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mummy Effect Bunny - On spellhit Cosmetic - On data set 0 1 - Despawn'),

(@ADARRAH*100,9,0,0,0,0,100,0,2000,2000,0,0,5,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah script - Play emote'),
(@ADARRAH*100,9,1,0,0,0,100,0,1900,1900,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah script - Say line'),
(@ADARRAH*100,9,2,0,0,0,100,0,1000,1000,0,0,53,1,@ADARRAH,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah script - Start WP movement'),

(@HARRISON*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Say line'),
(@HARRISON*100,9,1,0,0,0,100,0,500,500,0,0,9,0,0,0,0,0,0,20,188465,5,0,0,0,0,0, 'Harrison Jones script 0 - Activate Harrison''s Cage'),
(@HARRISON*100,9,2,0,0,0,100,0,0,0,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Set faction'),
(@HARRISON*100,9,3,0,0,0,100,0,0,0,0,0,71,0,2,0,2081,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Equip'),
(@HARRISON*100,9,4,0,0,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Remove npcflag gossip'),
(@HARRISON*100,9,5,0,0,0,100,0,2500,2500,0,0,53,0,@HARRISON,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Start WP movement'),
(@HARRISON*100,9,6,0,0,0,100,0,7000,7000,0,0,9,0,0,0,0,0,0,20,188465,50,0,0,0,0,0, 'Harrison Jones script 0 - Activate Harrison''s Cage'),

(@HARRISON*100+1,9,0,0,0,0,100,0,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 1 - Play emote'),
(@HARRISON*100+1,9,1,0,0,0,100,0,2500,2500,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 1 - Stop emote'),
(@HARRISON*100+1,9,2,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 1 - Say line'),
(@HARRISON*100+1,9,3,0,0,0,100,0,0,0,0,0,9,0,0,0,0,0,0,20,188487,5,0,0,0,0,0, 'Harrison Jones script 1 - Activate Adarra''s Cage'),
(@HARRISON*100+1,9,4,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@ADARRAH,5,0,0,0,0,0, 'Harrison Jones script 1 - Set data 0 1 Adarra''s Cage'),
(@HARRISON*100+1,9,5,0,0,0,100,0,10000,10000,0,0,9,0,0,0,0,0,0,20,188487,5,0,0,0,0,0, 'Harrison Jones script 1 - Activate Adarra''s Cage'),

(@HARRISON*100+2,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6.143559, 'Harrison Jones script 2 - Set orientation'),
(@HARRISON*100+2,9,1,0,0,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Set unit_field_bytes1 (kneel)'),
(@HARRISON*100+2,9,2,0,0,0,100,0,2400,2400,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.677482, 'Harrison Jones script 2 - Set orientation'),
(@HARRISON*100+2,9,3,0,0,0,100,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Remove unit_field_bytes1 (kneel)'),
(@HARRISON*100+2,9,4,0,0,0,100,0,0,0,0,0,71,0,1,32246,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Equip'),
(@HARRISON*100+2,9,5,0,0,0,100,0,2500,2500,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play emote'),
(@HARRISON*100+2,9,6,0,0,0,100,0,0,0,0,0,4,12827,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play sound'),
(@HARRISON*100+2,9,7,0,0,0,100,0,0,0,0,0,11,47533,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Spellcast Camera Shake'),
(@HARRISON*100+2,9,8,0,0,0,100,0,2500,2500,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play emote'),
(@HARRISON*100+2,9,9,0,0,0,100,0,0,0,0,0,4,12827,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play sound'),
(@HARRISON*100+2,9,10,0,0,0,100,0,0,0,0,0,11,47533,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Spellcast Camera Shake'),
(@HARRISON*100+2,9,11,0,0,0,100,0,2500,2500,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play emote'),
(@HARRISON*100+2,9,12,0,0,0,100,0,0,0,0,0,4,12827,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play sound'),
(@HARRISON*100+2,9,13,0,0,0,100,0,0,0,0,0,11,47533,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Spellcast Camera Shake'),
(@HARRISON*100+2,9,14,0,0,0,100,0,2000,2000,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4902.228,-4827.556,32.61251,2.443461, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,15,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4876.608,-4805.581,32.58254,6.178465, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,16,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4877.39,-4815.752,32.58345,0.1570796, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,17,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4883.104,-4823.975,32.58836,0.8726646, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,18,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4892.313,-4828.58,32.59582,1.570796, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,19,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4908.681,-4794.352,32.67061,3.979351, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,20,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4899.539,-4789.862,32.59812,4.764749, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,21,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4889.959,-4790.646,32.59848,5.201081, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,22,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4914.76,-4813.242,32.58661,3.01942, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,23,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4914.13,-4802.799,32.66964,3.420845, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),

(@HARRISON*100+3,9,0,0,0,0,100,0,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 3 - Say line'),
(@HARRISON*100+3,9,1,0,0,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 3 - Set homeposition'),
(@HARRISON*100+3,9,2,0,0,0,100,0,7200,7200,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 3 - Say line'),
(@HARRISON*100+3,9,3,0,0,0,100,0,6000,6000,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 3 - Start attack'),

(@HARRISON*100+4,9,0,0,0,0,100,0,1000,1000,0,0,53,1,@HARRISON*10,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 4 - Start WP movement'),
(@HARRISON*100+4,9,1,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 4 - Set event phase 0'),

(@TECAHUNA*100,9,0,0,0,0,100,0,15300,15300,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna script - Remove unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC'),
(@TECAHUNA*100,9,1,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,19,@HARRISON,30,0,0,0,0,0, 'Tecahuna script - Start attack');

DELETE FROM `creature_text` WHERE `entry` IN (@ADARRAH,@HARRISON);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ADARRAH,0,0,'Thank you!',12,0,100,17,0,0,'Adarrah'),
(@HARRISON,0,0,'Alright, kid. Stay behind me and you''ll be fine.',12,0,100,60,0,0,'Harrison Jones'),
(@HARRISON,1,0,'Their ceremonial chamber, where I was to be sacrificed...',12,0,100,396,0,0,'Harrison Jones'),
(@HARRISON,2,0,'Time to put an end to all this!',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,3,0,'You''re free to go, miss.',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,4,0,'Odd. That usually does it.',12,0,100,396,0,0,'Harrison Jones'),
(@HARRISON,5,0,'Just as well, I''ve had enough of this place.',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,6,0,'What''s this?',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,7,0,'Aww, not a snake!',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,8,0,'Listen, kid. I can handle this thing. You just watch my back!',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,9,0,'See ya ''round, kid!',12,0,100,0,0,0,'Harrison Jones');

DELETE FROM `waypoints` WHERE `entry` IN (@ADARRAH,@HARRISON,@HARRISON*10);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ADARRAH, 1,4902.543, -4798.52, 31.8586,'Adarrah'),
(@ADARRAH, 2,4893.144, -4795.715, 32.28691,'Adarrah'),
(@ADARRAH, 3,4887.894, -4793.465, 32.53691,'Adarrah'),
(@ADARRAH, 4,4878.785, -4793.664, 32.5359,'Adarrah'),
(@ADARRAH, 5,4863.294, -4785.226, 32.60138,'Adarrah'),
(@ADARRAH, 6,4839.031, -4774.794, 32.58206,'Adarrah'),

(@HARRISON, 1,4904.213, -4758.285, 27.27473,'Harrison Jones'),
(@HARRISON, 2,4896.463, -4755.535, 27.27473,'Harrison Jones'),
(@HARRISON, 3,4893.663, -4754.357, 27.23306,'Harrison Jones'),
(@HARRISON, 4,4886.543, -4762.921, 27.57825,'Harrison Jones'),
(@HARRISON, 5,4880.44, -4770.725, 30.70074,'Harrison Jones'),
(@HARRISON, 6,4876.696, -4790.863, 32.32729,'Harrison Jones'),
(@HARRISON, 7,4878.253, -4793.774, 32.53423,'Harrison Jones'),
(@HARRISON, 8,4882.602, -4795.872, 32.30199,'Harrison Jones'),
(@HARRISON, 9,4909.493, -4798.01, 32.54974,'Harrison Jones'),
(@HARRISON,10,4907.815, -4804.193, 31.78963,'Harrison Jones'),
(@HARRISON,11,4914.756, -4823.07, 32.66446,'Harrison Jones'),
(@HARRISON,12,4913.032, -4822.288, 32.63041,'Harrison Jones'),
(@HARRISON,13,4909.308, -4821.506, 32.59636,'Harrison Jones'),
(@HARRISON,14,4893.949, -4813.76, 31.7795,'Harrison Jones'),
(@HARRISON,15,4887.193, -4808.022, 32.0295,'Harrison Jones'),
(@HARRISON,16,4886.381, -4806.938, 32.29276,'Harrison Jones'),
(@HARRISON,17,4883.646, -4798.885, 32.57867,'Harrison Jones'),
(@HARRISON,18,4899.398, -4806.076, 32.02951,'Harrison Jones'),

(@HARRISON*10, 1,4893.088, -4802.876, 32.0295,'Harrison Jones'),
(@HARRISON*10, 2,4881.008, -4795.617, 32.50804,'Harrison Jones'),
(@HARRISON*10, 3,4857.754, -4778.792, 32.6265,'Harrison Jones'),
(@HARRISON*10, 4,4837.625, -4774.61, 32.5914,'Harrison Jones'),
(@HARRISON*10, 5,4817.824, -4790.486, 25.46436,'Harrison Jones'),
(@HARRISON*10, 6,4826.314, -4827.564, 25.48946,'Harrison Jones'),
(@HARRISON*10, 7,4826.336, -4841.321, 25.48413,'Harrison Jones'),
(@HARRISON*10, 8,4809.195, -4851.308, 25.52775,'Harrison Jones'),
(@HARRISON*10, 9,4781.125, -4849.693, 25.44121,'Harrison Jones'),
(@HARRISON*10,10,4761.496, -4853.984, 25.00991,'Harrison Jones'),
(@HARRISON*10,11,4719.89, -4857.747, 26.13666,'Harrison Jones'),
(@HARRISON*10,12,4693.853, -4858.84, 32.49986,'Harrison Jones'),
(@HARRISON*10,13,4680.416, -4861.247, 35.56741,'Harrison Jones'),
(@HARRISON*10,14,4673.966, -4864.334, 35.56741,'Harrison Jones'),
(@HARRISON*10,15,4662.382, -4882.535, 35.58759,'Harrison Jones'),
(@HARRISON*10,16,4658.195, -4895.924, 36.19548,'Harrison Jones'),
(@HARRISON*10,17,4656.812, -4915.515, 43.78271,'Harrison Jones'),
(@HARRISON*10,18,4659.832, -4928.781, 47.82988,'Harrison Jones'),
(@HARRISON*10,19,4664.121, -4942.443, 48.00279,'Harrison Jones'),
(@HARRISON*10,20,4666.967, -4951.508, 48.10587,'Harrison Jones'),
(@HARRISON*10,21,4675.692, -4970.227, 47.64427,'Harrison Jones'),
(@HARRISON*10,22,4681.637, -4973.975, 46.74993,'Harrison Jones'),
(@HARRISON*10,23,4707.978, -4997.285, 40.70398,'Harrison Jones'),
(@HARRISON*10,24,4712.889, -5002.176, 39.12014,'Harrison Jones'),
(@HARRISON*10,25,4739.859, -5031.481, 31.18226,'Harrison Jones');
SET @SWIFTSPEAR := 30395;
SET @GOSSIP :=9906;

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@GOSSIP,0,0,'I am sorry to disturb your rest, chieftain, but your brother''s spirit may be in danger. Would you tell me what you remember of him?',1,1,0,0,0,0,'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP,0,0,0,9,0,13037,0,0,0,0,'','Show gossip option only if player has quest Memories of Stormhoof');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@SWIFTSPEAR;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SWIFTSPEAR AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SWIFTSPEAR*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SWIFTSPEAR,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,56760,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chieftain Swiftspear - On gossip select - Spellcast Trigger Swiftspear Signal'),
(@SWIFTSPEAR,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chieftain Swiftspear - On gossip select - Close gossip'),
(@SWIFTSPEAR,0,2,0,61,0,100,0,0,0,0,0,80,@SWIFTSPEAR*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear - On gossip select - Run script'),

(@SWIFTSPEAR*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,1,0,0,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Remove npcflag gossip'),
(@SWIFTSPEAR*100,9,2,0,0,0,100,0,6800,6800,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,3,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,4,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,5,0,0,0,100,0,6100,6100,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,6,0,0,0,100,0,7200,7200,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,7,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,8,0,0,0,100,0,3600,3600,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Play emote'),
(@SWIFTSPEAR*100,9,9,0,0,0,100,0,2700,2700,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Add npcflag gossip'),
(@SWIFTSPEAR*100,9,10,0,0,0,100,0,0,0,0,0,33,30381,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Quest credit');

DELETE FROM `creature_text` WHERE `entry`=@SWIFTSPEAR;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@SWIFTSPEAR,0,0,'My brother, Stormhoof, was a far greater warrior than I. While I trained to be the chieftain of our clan, he prepared for a larger quest.',12,0,100,1,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,1,0,'How could he be in danger? All he wanted was to give us power over the elements that made life harsh for us here.',12,0,100,1,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,2,0,'He sought an artifact... a horn, I think. He left the village on a long journey in search of it.',12,0,100,6,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,3,0,'I know that a terrible enemy pursued him after he won the horn, but I... I don''t recall... what happened... next.',12,0,100,5,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,4,0,'It is as though my memories are shrouded in mist. I cannot even recall what became of my brother. Is this how you mean that he is in danger?',12,0,100,274,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,5,0,'The disturbances in the tomb, they must be involved. Look around you, $N. Do you see them?',12,0,100,25,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,6,0,'Yes, they are at fault, but I am powerless to stop them. Will you warn the people of Tunka''lo, stranger, that their past and their ancestors are in danger?',12,0,100,1,0,0,'Chieftain Swiftspear');
SET @BAT := 23959;
SET @BUNNY := 24230;

UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`=`flags_extra`|128 WHERE `entry`=@BUNNY;
UPDATE `creature_template` SET `inhabitType`=4, `AIName`='SmartAI' WHERE `entry`=@BAT;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@BAT,@BUNNY) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@BAT,0,0,0,38,0,100,0,0,1,0,0,69,1,0,0,0,0,0,19,@BUNNY,50,0,0,0,0,0,'Darkclaw Bat - On data set 0 1 - Move to position'),
(@BAT,0,1,0,34,0,100,0,0,1,0,0,45,0,1,0,0,0,0,19,@BUNNY,5,0,0,0,0,0,'Darkclaw Bat - On movement inform - Spellcast Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master'),
(@BUNNY,0,0,1,54,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Firecracker Bunny - Just summoned - Root'),
(@BUNNY,0,1,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@BAT,50,0,0,0,0,0,'Firecracker Bunny - Just summoned - Set data 0 1 Darkclaw Bat'),
(@BUNNY,0,2,0,38,0,100,0,0,1,0,0,11,62068,0,0,0,0,0,1,0,0,0,0,0,0,0,'Firecracker Bunny - On spellhit Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master - Crosscast owner Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master'),
(@BUNNY,0,3,0,8,0,100,0,62068,0,0,0,86,43307,0,23,0,0,0,0,0,0,0,0,0,0,0,'Firecracker Bunny - On spellhit Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master - Crosscast owner Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=43307;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,43307,0,0,31,0,3,@BUNNY,0,0,0,'','Spell Scare the Guano Out of Them!: Summon Darkclaw Guano targets Firecracker Bunny');
-- playercreateinfo_spell
TRUNCATE TABLE `playercreateinfo_spell`;

INSERT INTO `playercreateinfo_spell` (`racemask`, `classmask`, `Spell`, `Note`) VALUES
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 78, "Heroic Strike"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 81, "Dodge"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Shaman
(0x6FF, 0x43, 107, "Block"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Hunter, Death Knight
(0x6FF, 0x25, 196, "One-Handed Axes"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Priest, Shaman, Druid
(0x6FF, 0x453, 198, "One-Handed Maces"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Death Knight
(0x6FF, 0x27, 201, "One-Handed Swords"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 203, "Unarmed"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 204, "Defense"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 522, "SPELLDEFENSE (DND)"),
-- Races:   Human, Dwarf, Night elf, Gnome, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x44D, 0x5FF, 668, "Language Common"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 1843, "Disarm"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 2382, "Generic"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 2457, "Battle Stance"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 2479, "Honorless Target"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 3050, "Detect"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 3365, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 5301, "Defensive State (DND)"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 6233, "Closing"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 6246, "Closing"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 6247, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 6477, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 6478, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 6603, "Attack"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 7266, "Duel"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 7267, "Grovel"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 7355, "Stuck"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 8386, "Attacking"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Death Knight
(0x6FF, 0x23, 8737, "Mail"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Death Knight, Shaman, Druid
(0x6FF, 0x46F, 9077, "Leather"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 9078, "Cloth"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Shaman
(0x6FF, 0x43, 9116, "Shield"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 9125, "Generic"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BB, 20597, "Sword Specialization"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BB, 20598, "The Human Spirit"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BB, 20599, "Diplomacy"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BB, 20864, "Mace Specialization"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 21651, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 21652, "Closing"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 22027, "Remove Insignia"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 22810, "Opening - No Text"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 32215, "Victorious State"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 45927, "Summon Friend"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BB, 58985, "Perception"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BB, 59752, "Every Man for Himself"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5FF, 61437, "Opening"),
-- Races:   Human, Dwarf, Tauren, Dranei
-- Classes: Warrior, Paladin
(0x425, 0x3, 199, "Two-Handed Maces"),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 635, "Holy Light"),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 21084, "Seal of Righteousness"),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27762, "Libram"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Warrior, Hunter, Rogue, Warlock, Druid
(0x2DF, 0x50D, 1180, "Daggers"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 1752, "Sinister Strike"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 2098, "Eviscerate"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Warrior, Rogue
(0x2DF, 0x9, 2567, "Thrown"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Warrior, Rogue
(0x2DF, 0x9, 2764, "Throw"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 16092, "Defensive State (DND)"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 21184, "Rogue Passive (DND)"),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 585, "Smite"),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 2050, "Lesser Heal"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Priest, Mage, Warlock
(0x6DF, 0x190, 5009, "Wands"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Priest, Mage, Warlock
(0x6DF, 0x190, 5019, "Shoot"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Hunter, Death Knight
(0x6FF, 0x25, 197, "Two-Handed Axes"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 200, "Polearms"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Death Knight
(0x6FF, 0x23, 202, "Two-Handed Swords"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Rogue, Death Knight
(0x6FF, 0x28, 674, "Dual Wield"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 750, "Plate Mail"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 3127, "Parry"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 3275, "Linen Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 3276, "Heavy Linen Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 3277, "Wool Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 3278, "Heavy Wool Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 7928, "Silk Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 7929, "Heavy Silk Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 7934, "Anti-Venom"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 10840, "Mageweave Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 10841, "Heavy Mageweave Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 10846, "First Aid"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 18629, "Runecloth Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 18630, "Heavy Runecloth Bandage"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 33391, "Journeyman Riding"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 45462, "Plague Strike"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 45477, "Icy Touch"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 45902, "Blood Strike"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 45903, "Offensive State (DND)"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 47541, "Death Coil"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 48266, "Blood Presence"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 49410, "Forceful Deflection"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 49576, "Death Grip"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 52665, "Sigil"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 59879, "Blood Plague"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 59921, "Frost Fever"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Death Knight
(0x6FF, 0x20, 61455, "Runic Focus"),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 133, "Fireball"),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 168, "Frost Armor"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5D0, 227, "Staves"),
-- Races:   Human, Orc, Undead, Gnome, Blood elf
-- Classes: Warlock
(0x253, 0x100, 686, "Shadow Bolt"),
-- Races:   Human, Orc, Undead, Gnome, Blood elf
-- Classes: Warlock
(0x253, 0x100, 687, "Demon Skin"),
-- Races:   Human, Orc, Undead, Gnome, Blood elf
-- Classes: Warlock
(0x253, 0x100, 58284, "Chaos Bolt Passive"),
-- Races:   Orc, Undead, Tauren, Troll, Blood elf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x2B2, 0x5FF, 669, "Language Orcish"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue, Death Knight
(0x2, 0x2D, 20572, "Blood Fury"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue, Death Knight, Shaman, Warlock
(0x2, 0x16D, 20573, "Hardiness"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue, Death Knight, Shaman, Warlock
(0x2, 0x16D, 20574, "Axe Specialization"),
-- Races:   Orc
-- Classes: Warrior, Rogue, Shaman
(0x2, 0x49, 21563, "Command"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 75, "Auto Shot"),
-- Races:   Orc, Night elf, Troll, Blood elf
-- Classes: Hunter
(0x28A, 0x4, 264, "Bows"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 2973, "Raptor Strike"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 13358, "Defensive State (DND)"),
-- Races:   Orc
-- Classes: Hunter
(0x2, 0x4, 20576, "Command"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 24949, "Defensive State 2 (DND)"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 34082, "Advantaged State (DND)"),
-- Races:   Orc
-- Classes: Death Knight
(0x2, 0x20, 54562, "Command"),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 331, "Healing Wave"),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 403, "Lightning Bolt"),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 27763, "Totem"),
-- Races:   Orc
-- Classes: Shaman
(0x2, 0x40, 33697, "Blood Fury"),
-- Races:   Orc
-- Classes: Warlock
(0x2, 0x100, 20575, "Command"),
-- Races:   Orc
-- Classes: Warlock
(0x2, 0x100, 33702, "Blood Fury"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight
(0x4, 0x3F, 672, "Language Dwarven"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight
(0x4, 0x3F, 2481, "Find Treasure"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight
(0x4, 0x3F, 20594, "Stoneform"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight
(0x4, 0x3F, 20595, "Gun Specialization"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight
(0x4, 0x3F, 20596, "Frost Resistance"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight
(0x4, 0x3F, 59224, "Mace Specialization"),
-- Races:   Dwarf, Tauren
-- Classes: Hunter
(0x24, 0x4, 266, "Guns"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Druid
(0x8, 0x43D, 671, "Language Darnassian"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Druid
(0x8, 0x43D, 20582, "Quickness"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Druid
(0x8, 0x43D, 20583, "Nature Resistance"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Druid
(0x8, 0x43D, 20585, "Wisp Spirit"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Druid
(0x8, 0x43D, 58984, "Shadowmelt"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5176, "Wrath"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5185, "Healing Touch"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27764, "Fetish"),
-- Races:   Undead
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1B9, 5227, "Underwater Breathing"),
-- Races:   Undead
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1B9, 7744, "Will of the Forsaken"),
-- Races:   Undead
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1B9, 17737, "Language Gutterspeak"),
-- Races:   Undead
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1B9, 20577, "Cannibalize"),
-- Races:   Undead
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1B9, 20579, "Shadow Resistance"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Death Knight, Shaman, Druid
(0x20, 0x465, 670, "Language Taurahe"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Death Knight, Shaman, Druid
(0x20, 0x465, 20549, "War Stomp"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Death Knight, Shaman, Druid
(0x20, 0x465, 20550, "Endurance"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Death Knight, Shaman, Druid
(0x20, 0x465, 20551, "Nature Resistance"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Death Knight, Shaman, Druid
(0x20, 0x465, 20552, "Cultivation"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Death Knight, Mage, Warlock
(0x40, 0x1A9, 7340, "Language Gnomish"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Death Knight, Mage, Warlock
(0x40, 0x1A9, 20589, "Escape Artist"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Death Knight, Mage, Warlock
(0x40, 0x1A9, 20591, "Expansive Mind"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Death Knight, Mage, Warlock
(0x40, 0x1A9, 20592, "Arcane Resistance"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Death Knight, Mage, Warlock
(0x40, 0x1A9, 20593, "Engineering Specialization"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage
(0x80, 0xFD, 7341, "Language Troll"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage
(0x80, 0xFD, 20555, "Regeneration"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage
(0x80, 0xFD, 20557, "Beast Slaying"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage
(0x80, 0xFD, 20558, "Throwing Specialization"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage
(0x80, 0xFD, 26290, "Bow Specialization"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage
(0x80, 0xFD, 26297, "Berserking"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage
(0x80, 0xFD, 58943, "Da Voodoo Shuffle"),
-- Races:   Blood elf
-- Classes: Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x200, 0x1BE, 813, "Language Thalassian"),
-- Races:   Blood elf
-- Classes: Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x200, 0x1BE, 822, "Magic Resistance"),
-- Races:   Blood elf
-- Classes: Paladin, Hunter, Priest, Mage, Warlock
(0x200, 0x196, 28730, "Arcane Torrent"),
-- Races:   Blood elf
-- Classes: Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x200, 0x1BE, 28877, "Arcane Affinity"),
-- Races:   Blood elf
-- Classes: Rogue
(0x200, 0x8, 25046, "Arcane Torrent"),
-- Races:   Blood elf
-- Classes: Death Knight
(0x200, 0x20, 50613, "Arcane Torrent"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Death Knight
(0x400, 0x27, 6562, "Heroic Presence"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Shaman, Mage
(0x400, 0xF7, 28875, "Gemcutting"),
-- Races:   Dranei
-- Classes: Warrior
(0x400, 0x1, 28880, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Shaman, Mage
(0x400, 0xF7, 29932, "Language Draenei"),
-- Races:   Dranei
-- Classes: Mage
(0x400, 0x80, 59541, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Paladin
(0x400, 0x2, 59542, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Hunter
(0x400, 0x4, 5011, "Crossbows"),
-- Races:   Dranei
-- Classes: Shaman
(0x400, 0x40, 59540, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Hunter
(0x400, 0x4, 59543, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Priest, Shaman, Mage
(0x400, 0xD0, 28878, "Inspiring Presence"),
-- Races:   Dranei
-- Classes: Death Knight
(0x400, 0x20, 59539, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Priest
(0x400, 0x10, 59544, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Priest
(0x400, 0x10, 59538, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Hunter
(0x400, 0x4, 59536, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Death Knight
(0x400, 0x20, 59545, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Paladin
(0x400, 0x2, 59535, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Shaman
(0x400, 0x40, 59547, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Warrior
(0x400, 0x1, 59221, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Mage
(0x400, 0x80, 59548, "Gift of the Naaru"),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 60091, "Judgement Anti-Parry/Dodge Passive"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 56816, "Rune Strike"),
-- Races:   All
-- Classes: Shaman
(0x0, 0x40, 75461, "Flame Shock Passive"),
-- Races:   All
-- Classes: Warlock
(0x0, 0x100, 75445, "Demonic Immolate");
TRUNCATE TABLE `playercreateinfo_spell_custom`;

INSERT INTO playercreateinfo_spell_custom (racemask, classmask, Spell, Note) VALUES
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 78, "Heroic Strike"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 81, "Dodge"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Shaman
(0x6FF, 0x43, 107, "Block"),
-- Races:   Human, Orc, Dwarf, Tauren, Troll
-- Classes: Warrior, Hunter
(0xA7, 0x5, 196, "One-Handed Axes"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Priest, Shaman, Druid
(0x6FF, 0x453, 198, "One-Handed Maces"),
-- Races:   Human, Orc, Night elf, Undead, Gnome, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter
(0x65B, 0x7, 201, "One-Handed Swords"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 203, "Unarmed"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 204, "Defense"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 522, "SPELLDEFENSE(DND)"),
-- Races:   Human, Dwarf, Night elf, Gnome, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x44D, 0x5DF, 668, "Language Common"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 2382, "Generic"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 2457, "Battle Stance"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 2479, "Honorless Target"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 3050, "Detect"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 3365, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 5301, "Defensive State(DND)"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 6233, "Closing"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 6246, "Closing"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 6247, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 6477, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 6478, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 6603, "Attack"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 7266, "Duel"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 7267, "Grovel"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 7355, "Stuck"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 7376, "Defensive Stance Passive"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 7381, "Berserker Stance Passive"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 8386, "Attacking"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Shaman
(0x6FF, 0x47, 8737, "Mail"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Shaman, Druid
(0x6FF, 0x44F, 9077, "Leather"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 9078, "Cloth"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Shaman
(0x6FF, 0x43, 9116, "Shield"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 9125, "Generic"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Mage, Warlock
(0x1, 0x19B, 20597, "Sword Specialization"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Mage, Warlock
(0x1, 0x19B, 20598, "The Human Spirit"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Mage, Warlock
(0x1, 0x19B, 20599, "Diplomacy"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Mage, Warlock
(0x1, 0x19B, 20600, "Perception"),
-- Races:   Human
-- Classes: Warrior, Paladin, Rogue, Priest, Mage, Warlock
(0x1, 0x19B, 20864, "Mace Specialization"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 21156, "Battle Stance Passive"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 21651, "Opening"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 21652, "Closing"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 22027, "Remove Insignia"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x6FF, 0x5DF, 22810, "Opening - No Text"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 32215, "Victorious State"),
-- Races:   Human, Dwarf, Tauren, Dranei
-- Classes: Warrior, Paladin
(0x425, 0x3, 199, "Two-Handed Maces"),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 635, "Holy Light"),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 21084, "Seal of Righteousness"),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27762, "Libram"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Warrior, Hunter, Rogue, Warlock, Druid
(0x2DF, 0x50D, 1180, "Daggers"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 1752, "Sinister Strike"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 2098, "Eviscerate"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Warrior, Rogue
(0x2DF, 0x9, 2567, "Thrown"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Warrior, Rogue
(0x2DF, 0x9, 2764, "Throw"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 16092, "Defensive State(DND)"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 21184, "Rogue Passive(DND)"),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 585, "Smite"),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 2050, "Lesser Heal"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Priest, Mage, Warlock
(0x6DF, 0x190, 5009, "Wands"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Priest, Mage, Warlock
(0x6DF, 0x190, 5019, "Shoot"),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 133, "Fireball"),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 168, "Frost Armor"),
-- Races:   Human, Orc, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Shaman, Mage, Druid
(0x6FB, 0x4C0, 227, "Staves"),
-- Races:   Human, Orc, Undead, Gnome, Blood elf
-- Classes: Warlock
(0x253, 0x100, 686, "Shadow Bolt"),
-- Races:   Human, Orc, Undead, Gnome, Blood elf
-- Classes: Warlock
(0x253, 0x100, 687, "Demon Skin"),
-- Races:   Orc, Dwarf
-- Classes: Warrior
(0x6, 0x1, 197, "Two-Handed Axes"),
-- Races:   Orc, Undead, Tauren, Troll, Blood elf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x2B2, 0x5DF, 669, "Language Orcish"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue
(0x2, 0xD, 20572, "Blood Fury"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue, Shaman, Warlock
(0x2, 0x14D, 20573, "Hardiness"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue, Shaman, Warlock
(0x2, 0x14D, 20574, "Axe Specialization"),
-- Races:   Orc
-- Classes: Warrior, Rogue, Shaman
(0x2, 0x49, 21563, "Command"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 75, "Auto Shot"),
-- Races:   Orc, Night elf, Troll, Blood elf
-- Classes: Hunter
(0x28A, 0x4, 264, "Bows"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 2973, "Raptor Strike"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 13358, "Defensive State(DND)"),
-- Races:   Orc
-- Classes: Hunter
(0x2, 0x4, 20576, "Command"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 24949, "Defensive State 2(DND)"),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 34082, "Advantaged State(DND)"),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 331, "Healing Wave"),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 403, "Lightning Bolt"),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 27763, "Totem"),
-- Races:   Orc
-- Classes: Shaman
(0x2, 0x40, 33697, "Blood Fury"),
-- Races:   Orc
-- Classes: Warlock
(0x2, 0x100, 20575, "Command"),
-- Races:   Orc
-- Classes: Warlock
(0x2, 0x100, 33702, "Blood Fury"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest
(0x4, 0x1F, 672, "Language Dwarven"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest
(0x4, 0x1F, 2481, "Find Treasure"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest
(0x4, 0x1F, 20594, "Stoneform"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest
(0x4, 0x1F, 20595, "Gun Specialization"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest
(0x4, 0x1F, 20596, "Frost Resistance"),
-- Races:   Dwarf, Tauren
-- Classes: Hunter
(0x24, 0x4, 266, "Guns"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Druid
(0x8, 0x41D, 671, "Language Darnassian"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Druid
(0x8, 0x41D, 20580, "Shadowmeld"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Druid
(0x8, 0x41D, 20582, "Quickness"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Druid
(0x8, 0x41D, 20583, "Nature Resistance"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Druid
(0x8, 0x41D, 20585, "Wisp Spirit"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Druid
(0x8, 0x41D, 21009, "Shadowmeld Passive"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 1178, "Bear Form(Passive)"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 3025, "Cat Form(Passive)"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5176, "Wrath"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5185, "Healing Touch"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5419, "Travel Form(Passive)"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5420, "Tree of Life"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5421, "Aquatic Form(Passive)"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 9635, "Dire Bear Form(Passive)"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 21178, "Bear Form(Passive2)"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 24905, "Moonkin Form(Passive)"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27764, "Fetish"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 33948, "Flight Form(Passive)"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 34123, "Tree of Life(Passive)"),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 40121, "Swift Flight Form(Passive)"),
-- Races:   Undead, Blood elf, Dranei
-- Classes: Warrior, Paladin
(0x610, 0x3, 202, "Two-Handed Swords"),
-- Races:   Undead
-- Classes: Warrior, Rogue, Priest, Mage, Warlock
(0x10, 0x199, 5227, "Underwater Breathing"),
-- Races:   Undead
-- Classes: Warrior, Rogue, Priest, Mage, Warlock
(0x10, 0x199, 7744, "Will of the Forsaken"),
-- Races:   Undead
-- Classes: Warrior, Rogue, Priest, Mage, Warlock
(0x10, 0x199, 17737, "Language Gutterspeak"),
-- Races:   Undead
-- Classes: Warrior, Rogue, Priest, Mage, Warlock
(0x10, 0x199, 20577, "Cannibalize"),
-- Races:   Undead, Dranei
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Shaman, Mage, Warlock
(0x410, 0x1DF, 20579, "Shadow Resistance"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Shaman, Druid
(0x20, 0x445, 670, "Language Taurahe"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Shaman, Druid
(0x20, 0x445, 20549, "War Stomp"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Shaman, Druid
(0x20, 0x445, 20550, "Endurance"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Shaman, Druid
(0x20, 0x445, 20551, "Nature Resistance"),
-- Races:   Tauren
-- Classes: Warrior, Hunter, Shaman, Druid
(0x20, 0x445, 20552, "Cultivation"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Mage, Warlock
(0x40, 0x189, 7340, "Language Gnomish"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Mage, Warlock
(0x40, 0x189, 20589, "Escape Artist"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Mage, Warlock
(0x40, 0x189, 20591, "Expansive Mind"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Mage, Warlock
(0x40, 0x189, 20592, "Arcane Resistance"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Mage, Warlock
(0x40, 0x189, 20593, "Engineering Specialization"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Shaman, Mage
(0x80, 0xDD, 7341, "Language Troll"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Shaman, Mage
(0x80, 0xDD, 20555, "Regeneration"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Shaman, Mage
(0x80, 0xDD, 20557, "Beast Slaying"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Shaman, Mage
(0x80, 0xDD, 20558, "Throwing Specialization"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Shaman, Mage
(0x80, 0xDD, 26290, "Bow Specialization"),
-- Races:   Troll
-- Classes: Warrior
(0x80, 0x1, 26296, "Berserking"),
-- Races:   Troll
-- Classes: Hunter, Priest, Shaman, Mage
(0x80, 0xD4, 20554, "Berserking"),
-- Races:   Troll
-- Classes: Rogue
(0x80, 0x8, 26297, "Berserking"),
-- Races:   Blood elf
-- Classes: Paladin, Hunter, Rogue, Priest, Mage, Warlock
(0x200, 0x19E, 813, "Language Thalassian"),
-- Races:   Blood elf
-- Classes: Paladin, Hunter, Rogue, Priest, Mage, Warlock
(0x200, 0x19E, 822, "Magic Resistance"),
-- Races:   Blood elf
-- Classes: Paladin, Hunter, Priest, Mage, Warlock
(0x200, 0x196, 28730, "Arcane Torrent"),
-- Races:   Blood elf
-- Classes: Paladin, Hunter, Rogue, Priest, Mage, Warlock
(0x200, 0x19E, 28877, "Arcane Affinity"),
-- Races:   Blood elf
-- Classes: Rogue
(0x200, 0x8, 25046, "Arcane Torrent"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter
(0x400, 0x7, 6562, "Heroic Presence"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Priest, Shaman, Mage
(0x400, 0xD7, 28875, "Gemcutting"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Priest, Shaman, Mage
(0x400, 0xD7, 28880, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Priest, Shaman, Mage
(0x400, 0xD7, 29932, "Language Draenei"),
-- Races:   Dranei
-- Classes: Hunter
(0x400, 0x4, 5011, "Crossbows"),
-- Races:   Dranei
-- Classes: Priest, Shaman, Mage
(0x400, 0xD0, 28878, "Inspiring Presence"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 2048, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 30324, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 11578, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25208, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25264, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 2687, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 71, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25225, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 355, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 11585, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 29704, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25203, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 30357, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25266, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 2565, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 676, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25231, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 20230, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 5246, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25236, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 1161, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 871, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 2458, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25275, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25242, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 18499, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 1680, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 6554, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 1719, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 34428, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 23920, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 469, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 3411, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27014, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 1494, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 13163, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27016, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27019, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 14325, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 5116, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27044, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 883, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 2641, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 6991, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 982, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 1515, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 19883, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27020, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27046, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 14268, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 6197, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 1002, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 14327, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27023, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 36916, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27021, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 19884, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 5118, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27015, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 14311, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 3043, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 1462, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 19885, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 3045, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 19880, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 13809, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 13161, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 5384, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 1543, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 19878, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27025, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27018, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 13159, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 19882, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27022, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 27045, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 19879, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 19801, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 34120, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 34074, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 34026, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 34600, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 34477, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27149, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27136, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27155, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27140, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 20271, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27158, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 10308, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 10278, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27154, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 20773, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27142, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 31789, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27150, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 25780, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 1044, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 33776, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27173, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27138, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27137, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 5502, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 19746, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 31895, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 5627, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 1038, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27151, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 19752, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27160, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27152, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 1020, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27153, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27166, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27144, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 4987, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27180, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27148, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27139, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27141, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 10326, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27143, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 25898, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27145, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 25895, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 32223, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 27169, ""),
-- Races:   Human, Dwarf, Blood elf, Dranei
-- Classes: Paladin
(0x605, 0x2, 31884, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 26865, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 26862, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 1787, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 26863, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 921, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 38764, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 26669, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 11297, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 6774, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 11305, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 38768, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 26866, ""),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2D7, 0x8, 26884, ""),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2D7, 0x8, 27448, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 1804, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 27441, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 2842, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 1725, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 26867, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 26889, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 1833, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 1842, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 408, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 2094, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 32684, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 26679, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 31224, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 5938, ""),
-- Races:   Night elf
-- Classes: Rogue
(0x8, 0x8, 426884, ""),
-- Races:   Night elf
-- Classes: Rogue
(0x8, 0x8, 427448, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27215, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27209, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27216, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 30909, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27222, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27218, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 6215, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27230, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27217, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27259, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27226, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27220, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 5697, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27238, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 30459, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27260, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27212, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 698, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 5500, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 30908, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 11719, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 132, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 18647, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27213, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 11726, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27228, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 28610, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 28172, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27250, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 17928, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27223, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27229, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 30545, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 30910, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 18540, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 28189, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 32231, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 29858, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 29893, ""),
-- Races:   Human, Orc, Undead, Gnome, Dranei
-- Classes: Warlock
(0x453, 0x100, 27243, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26979, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26990, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26985, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26988, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26982, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26992, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26989, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26998, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 6795, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26996, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 18960, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 9634, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 768, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 783, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 1066, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 40120, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5229, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26980, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 8983, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 8946, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26997, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26993, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 18658, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27000, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 9913, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26994, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27008, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26986, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27002, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26995, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27003, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 2782, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 9846, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 2893, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 33357, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5209, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27004, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26983, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 24248, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27005, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 5225, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26999, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27012, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 27006, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 29166, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 22812, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 26991, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 22570, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 33763, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 33745, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 33786, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27126, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27070, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 22018, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27072, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 22019, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27079, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 38704, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 28272, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 28271, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 12826, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27088, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 33944, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 130, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27082, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27086, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 33946, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 475, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 1953, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27085, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 12051, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27128, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27131, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 32796, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27074, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 2139, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27101, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27124, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 45438, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27125, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27127, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 30482, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 30451, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 30455, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 66, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 43987, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 30449, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25389, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25364, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25368, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25218, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25429, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25222, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25375, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25435, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25431, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 528, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 10890, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 988, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 6346, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25235, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25384, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25596, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 10955, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 10909, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25380, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 10912, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25308, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25433, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 552, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 1706, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25213, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25392, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 39374, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 32999, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 32996, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 32546, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 34433, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 33076, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 32375, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25396, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25449, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25485, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25454, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25509, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 2484, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25472, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25525, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25457, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25489, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25533, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25528, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 20777, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25547, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 8012, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 526, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 8143, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25464, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25500, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 2645, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25567, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25420, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 2870, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 8166, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 131, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25560, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 6196, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25552, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25570, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25563, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25557, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 546, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 556, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 8177, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25574, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 36936, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25505, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 421, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25587, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 6495, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25577, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 8170, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25423, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25359, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25908, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 33736, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 3738, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 2062, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 2894, ""),
-- Races:   Orc, Tauren, Troll
-- Classes: Shaman
(0xA2, 0x40, 2825, ""),
-- Races:   Dranei
-- Classes: Shaman
(0x400, 0x40, 32182, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Hunter, Rogue
(0x6FF, 0xD, 674, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Warrior, Paladin
(0x6FF, 0x3, 750, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Blood elf, Dranei
-- Classes: Paladin, Hunter, Rogue
(0x6FF, 0xE, 3127, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 25442, ""),
-- Races:   Orc, Tauren, Troll, Dranei
-- Classes: Shaman
(0x4A2, 0x40, 20608, ""),
-- Races:   Human, Undead, Gnome, Troll, Blood elf, Dranei
-- Classes: Mage
(0x6D1, 0x80, 27087, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 8643, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 25212, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Dranei
-- Classes: Warrior
(0x4FF, 0x1, 12678, ""),
-- Races:   Orc, Dwarf, Night elf, Tauren, Troll, Blood elf, Dranei
-- Classes: Hunter
(0x6AE, 0x4, 5149, ""),
-- Races:   Human, Dwarf, Dranei
-- Classes: Paladin
(0x405, 0x2, 23214, ""),
-- Races:   Blood elf
-- Classes: Paladin
(0x200, 0x2, 34767, ""),
-- Races:   Human, Orc, Undead, Gnome, Blood elf, Dranei
-- Classes: Warlock
(0x653, 0x100, 23161, ""),
-- Races:   Human, Orc, Undead, Gnome, Blood elf, Dranei
-- Classes: Warlock
(0x653, 0x100, 688, ""),
-- Races:   Human, Orc, Undead, Gnome, Blood elf, Dranei
-- Classes: Warlock
(0x653, 0x100, 697, ""),
-- Races:   Human, Orc, Undead, Gnome, Blood elf, Dranei
-- Classes: Warlock
(0x653, 0x100, 712, ""),
-- Races:   Human, Orc, Undead, Gnome, Blood elf, Dranei
-- Classes: Warlock
(0x653, 0x100, 691, ""),
-- Races:   Night elf, Tauren
-- Classes: Druid
(0x28, 0x400, 20719, ""),
-- Races:   Human, Orc, Undead, Gnome, Blood elf
-- Classes: Warlock
(0x253, 0x100, 126, ""),
-- Races:   Human, Dwarf, Dranei
-- Classes: Paladin
(0x405, 0x2, 31801, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 3776, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 9186, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 21927, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 22054, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 22055, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 2836, ""),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Blood elf
-- Classes: Rogue
(0x2DF, 0x8, 1860, ""),
-- Races:   Human
-- Classes: Priest
(0x1, 0x10, 25441, ""),
-- Races:   Human, Dwarf, Night elf, Undead, Troll, Blood elf, Dranei
-- Classes: Priest
(0x69D, 0x10, 25312, ""),
-- Races:   Human, Dwarf
-- Classes: Priest
(0x5, 0x10, 25437, "");
SET @CGUID := 49815;
SET @OGUID := 14972;
SET @SERINAR := 26593;
SET @NECROLYTE := 27356;
SET @BUNNY := 27369;
SET @RUNE := 188695;

UPDATE `creature` SET `MovementType`=0, `spawndist`=0, `unit_flags`=33024 WHERE `guid`=116960;
DELETE FROM `creature` WHERE `guid` IN (117061,117371,117372,117421,117422,117423,117633,117634,117646,117648,117649);
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+3;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(117061, @BUNNY, 571, 1, 1, 13069, 4495.499, 1747.361, 175.1579, 0.6806784, 300, 0, 0),
(117371, @BUNNY, 571, 1, 1, 13069, 4544.45, 1739.195, 167.6779, 0.9075712, 300, 0, 0),
(117372, @BUNNY, 571, 1, 1, 13069, 4573.836, 1708.501, 171.742, 1.466077, 300, 0, 0),
(117421, @BUNNY, 571, 1, 1, 13069, 4604.599, 1727.422, 170.6874, 4.921828, 300, 0, 0),
(117422, @BUNNY, 571, 1, 1, 13069, 4601.996, 1700.385, 171.9938, 1.37881, 300, 0, 0),
(117423, @BUNNY, 571, 1, 1, 13069, 4576.454, 1755.058, 167.8554, 2.164208, 300, 0, 0),
(117633, @BUNNY, 571, 1, 1, 13069, 4625.904, 1754.476, 182.3284, 6.038839, 300, 0, 0),
(117634, @BUNNY, 571, 1, 1, 13069, 4561.219, 1731.186, 166.7194, 3.926991, 300, 0, 0),
(117646, @BUNNY, 571, 1, 1, 13069, 4497.56, 1880.672, 164.3632, 5.61996, 300, 0, 0),
(117648, 27362, 571, 1, 1, 0, 4567.375, 1724.495, 168.1724, 0.6806784, 300, 5, 1),
(117649, 27362, 571, 1, 1, 0, 4608.474, 1721.618, 170.9504, 3.124139, 300, 5, 1),
(@CGUID+0, 27358, 571, 1, 1, 0, 4576.38, 1711.559, 171.3237, 4.018391, 300, 5, 1),
(@CGUID+1, 27358, 571, 1, 1, 0, 4574.408, 1751.613, 167.8838, 1.03504, 300, 5, 1),
(@CGUID+2, 27363, 571, 1, 1, 0, 4570.443, 1678.617, 170.5762, 0.002298846, 300, 5, 1);

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+8;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`, `orientation`, `rotation0`, `rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+0,@RUNE,571,1,1,4495.527,1747.337,175.0751,0.7330382,0,0,0.3583679,0.9335805,300,100,1),
(@OGUID+1,@RUNE,571,1,1,4544.453,1739.186,167.594,-1.151916,0,0,-0.5446386,0.8386708,300,100,1),
(@OGUID+2,@RUNE,571,1,1,4573.879,1708.473,171.6586,-2.268925,0,0,-0.9063072,0.4226195,300,100,1),
(@OGUID+3,@RUNE,571,1,1,4604.577,1727.41,170.6038,-0.1919852,0,0,-0.09584522,0.9953963,300,100,1),
(@OGUID+4,@RUNE,571,1,1,4601.975,1700.365,171.9105,-0.4014249,0,0,-0.1993675,0.9799248,300,100,1),
(@OGUID+5,@RUNE,571,1,1,4576.479,1755.036,167.7747,-0.2792516,0,0,-0.1391726,0.9902682,300,100,1),
(@OGUID+6,@RUNE,571,1,1,4625.864,1754.506,182.2451,-0.7330382,0,0,-0.3583679,0.9335805,300,100,1),
(@OGUID+7,@RUNE,571,1,1,4561.233,1731.201,166.6359,-0.6108635,0,0,-0.300705,0.9537172,300,100,1),
(@OGUID+8,@RUNE,571,1,1,4497.559,1880.615,164.2788,0.8377574,0,0,0.4067364,0.9135455,300,100,1);

DELETE FROM `creature_addon` WHERE `guid`=116960;
INSERT INTO `creature_addon` (`guid`,`auras`) VALUES
(116960,'29266');

DELETE FROM `creature_text` WHERE `entry`=@SERINAR;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@SERINAR,0,0, 'Perfect.  As long as you don''t go hacking and slashing your way through, they''ll never know the difference.',12,0,100,0,0,0, 'Serinar');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48750;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(48750,48770,2,'Serinar''s Vision is applied while aura Burning Depths Necrolyte Image is active');

UPDATE `quest_template` SET `PrevQuestId`=12447 WHERE `Id` IN (12261,12262);
UPDATE `quest_template` SET `PrevQuestId`=12263 WHERE `Id` IN (12264,12265);

UPDATE `gameobject_template` SET `flags`=4 WHERE `entry`=188695;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@SERINAR;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SERINAR AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SERINAR*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@SERINAR, 0, 0, 1, 19, 0, 100, 0, 12263, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, @NECROLYTE, 20, 0, 0, 0, 0, 0, 'Serinar - On quest accept - Turn to'),
(@SERINAR, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 48748, 0, 0, 0, 0, 0, 19, @NECROLYTE, 20, 0, 0, 0, 0, 0, 'Serinar - On quest accept - Spellcast Absorb Image'),
(@SERINAR, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, @SERINAR*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Serinar - On quest accept - Run script'),
(@SERINAR, 0, 3, 4, 62, 0, 100, 0, 9537, 0, 0, 0, 11, 48750, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Serinar - On gossip select - Spellcast Burning Depths Necrolyte Image'),
(@SERINAR, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Serinar - On gossip select - Say line'),
(@SERINAR, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Serinar - On gossip select - Close gossip'),

(@SERINAR*100, 9, 0, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Serinar script - Turn to'),
(@SERINAR*100, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 48750, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Serinar script - Spellcast Burning Depths Necrolyte Image'),
(@SERINAR*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Serinar script - Say line'),
(@SERINAR*100, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Serinar script - Turn to');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (48738,48748);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9537 AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 48738, 0, 0, 31, 0, 4, 0, 0, 0, 0, '', 'Spell Stamp Out Necromantic Rune effect0 targets player'),
(13, 2, 48738, 0, 0, 31, 0, 3, @BUNNY, 0, 0, 0, '', 'Spell Stamp Out Necromantic Rune effect1 targets Necromantic Rune Bunny'),
(13, 1, 48748, 0, 0, 31, 0, 3, @NECROLYTE, 0, 0, 0, '', 'Spell Absorb Image targets Burning Depths Necrolyte'),
(15, 9537, 0, 0, 0, 9, 0, 12263, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest The Best of Intentions'),
(15, 9537, 0, 0, 0, 1, 0, 48750, 0, 0, 1, 0, '', 'Show gossip option only if player doesn''t have aura Burning Depths Necrolyte Image');
-- wrong lootmode
UPDATE `creature_loot_template` SET `lootmode`=1 WHERE `item` IN(46367,46381,46380);
-- Darkwraith
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=15657 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Plaguehound
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=8598 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Amani Berserker
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=15643 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Enraged Wraith
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=17086 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Anok'suten
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=16357 AND `source_type`=0 AND `id`=3 AND `link`=0;
-- Bloodscalp Warrior
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=587 AND `source_type`=0 AND `id`=2 AND `link`=3;
-- Bloodscalp Berserker
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=597 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Commander Aggro'gosh
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2464 AND `source_type`=0 AND `id`=3 AND `link`=4;
-- Vilebranch Berserker 
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2643 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Hungering Wraith
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=1802 AND `source_type`=0 AND `id`=1 AND `link`=2;
-- Dark Strand Enforcer
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=3727 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Scarlet Myrmidon
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=4295 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Ymirjar Flesh Hunter
UPDATE `smart_scripts` SET `event_flags`=7 WHERE  `entryorguid`=26670 AND `source_type`=0 AND `id`=27 AND `link`=28;

UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=0 WHERE `Spell`=56816;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=0 WHERE `Spell`=75461;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=0 WHERE `Spell`=75445;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=669;
UPDATE `playercreateinfo_spell` SET `racemask`=223, `classmask`=8 WHERE `Spell`=2567;
UPDATE `playercreateinfo_spell` SET `racemask`=223, `classmask`=8 WHERE `Spell`=2764;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=8 WHERE `Spell`=1180;
UPDATE `playercreateinfo_spell` SET `racemask`=1029, `classmask`=1 WHERE `Spell`=199;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=33 WHERE `Spell`=668;
UPDATE `playercreateinfo_spell` SET `racemask`=529, `classmask`=0 WHERE `Spell`=5009;
UPDATE `playercreateinfo_spell` SET `racemask`=529, `classmask`=0 WHERE `Spell`=5019;
UPDATE `playercreateinfo_spell` SET `racemask`=1029, `classmask`=32 WHERE `Spell`=202;
UPDATE `playercreateinfo_spell` SET `racemask`=1029, `classmask`=32 WHERE `Spell`=8737;
UPDATE `playercreateinfo_spell` SET `racemask`=1198, `classmask`=32 WHERE `Spell`=196;
UPDATE `playercreateinfo_spell` SET `racemask`=1198, `classmask`=32 WHERE `Spell`=197;
UPDATE `playercreateinfo_spell` SET `racemask`=1028, `classmask`=32 WHERE `Spell`=201;
UPDATE `playercreateinfo_spell` SET `racemask`=735, `classmask`=32 WHERE `Spell`=674;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=0 WHERE `Spell`=107;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=0 WHERE `Spell`=9116;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=0 WHERE `Spell`=198;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=9077;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=0 WHERE `Spell`=227;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=81;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=203;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=204;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=522;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=1843;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=2382;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=2479;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=3050;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=3365;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=6233;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=6246;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=6247;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=6477;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=6478;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=6603;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=7266;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=7267;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=7355;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=8386;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=9078;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=9125;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=21651;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=21652;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=22027;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=22810;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=45927;
UPDATE `playercreateinfo_spell` SET `racemask`=0, `classmask`=32 WHERE `Spell`=61437;
UPDATE `playercreateinfo_spell` SET `racemask`=1710, `classmask`=4 WHERE `Spell`=75;
UPDATE `playercreateinfo_spell` SET `racemask`=1279, `classmask`=1 WHERE `Spell`=78;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=81;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=67 WHERE `Spell`=107;
UPDATE `playercreateinfo_spell` SET `racemask`=1745, `classmask`=128 WHERE `Spell`=133;
UPDATE `playercreateinfo_spell` SET `racemask`=1745, `classmask`=128 WHERE `Spell`=168;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=37 WHERE `Spell`=196;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=37 WHERE `Spell`=197;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1107 WHERE `Spell`=198;
UPDATE `playercreateinfo_spell` SET `racemask`=1061, `classmask`=3 WHERE `Spell`=199;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=200;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=39 WHERE `Spell`=201;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=35 WHERE `Spell`=202;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=203;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=204;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1488 WHERE `Spell`=227;
UPDATE `playercreateinfo_spell` SET `racemask`=650, `classmask`=4 WHERE `Spell`=264;
UPDATE `playercreateinfo_spell` SET `racemask`=36, `classmask`=4 WHERE `Spell`=266;
UPDATE `playercreateinfo_spell` SET `racemask`=1186, `classmask`=64 WHERE `Spell`=331;
UPDATE `playercreateinfo_spell` SET `racemask`=1186, `classmask`=64 WHERE `Spell`=403;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=522;
UPDATE `playercreateinfo_spell` SET `racemask`=1693, `classmask`=16 WHERE `Spell`=585;
UPDATE `playercreateinfo_spell` SET `racemask`=1541, `classmask`=2 WHERE `Spell`=635;
UPDATE `playercreateinfo_spell` SET `racemask`=1101, `classmask`=1535 WHERE `Spell`=668;
UPDATE `playercreateinfo_spell` SET `racemask`=690, `classmask`=1535 WHERE `Spell`=669;
UPDATE `playercreateinfo_spell` SET `racemask`=32, `classmask`=1125 WHERE `Spell`=670;
UPDATE `playercreateinfo_spell` SET `racemask`=8, `classmask`=1085 WHERE `Spell`=671;
UPDATE `playercreateinfo_spell` SET `racemask`=4, `classmask`=63 WHERE `Spell`=672;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=40 WHERE `Spell`=674;
UPDATE `playercreateinfo_spell` SET `racemask`=595, `classmask`=256 WHERE `Spell`=686;
UPDATE `playercreateinfo_spell` SET `racemask`=595, `classmask`=256 WHERE `Spell`=687;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=750;
UPDATE `playercreateinfo_spell` SET `racemask`=512, `classmask`=446 WHERE `Spell`=813;
UPDATE `playercreateinfo_spell` SET `racemask`=512, `classmask`=446 WHERE `Spell`=822;
UPDATE `playercreateinfo_spell` SET `racemask`=735, `classmask`=1293 WHERE `Spell`=1180;
UPDATE `playercreateinfo_spell` SET `racemask`=735, `classmask`=8 WHERE `Spell`=1752;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=1843;
UPDATE `playercreateinfo_spell` SET `racemask`=1693, `classmask`=16 WHERE `Spell`=2050;
UPDATE `playercreateinfo_spell` SET `racemask`=735, `classmask`=8 WHERE `Spell`=2098;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=2382;
UPDATE `playercreateinfo_spell` SET `racemask`=1279, `classmask`=1 WHERE `Spell`=2457;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=2479;
UPDATE `playercreateinfo_spell` SET `racemask`=4, `classmask`=63 WHERE `Spell`=2481;
UPDATE `playercreateinfo_spell` SET `racemask`=735, `classmask`=9 WHERE `Spell`=2567;
UPDATE `playercreateinfo_spell` SET `racemask`=735, `classmask`=9 WHERE `Spell`=2764;
UPDATE `playercreateinfo_spell` SET `racemask`=1710, `classmask`=4 WHERE `Spell`=2973;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=3050;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=3127;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=3275;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=3276;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=3277;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=3278;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=3365;
UPDATE `playercreateinfo_spell` SET `racemask`=1759, `classmask`=400 WHERE `Spell`=5009;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=4 WHERE `Spell`=5011;
UPDATE `playercreateinfo_spell` SET `racemask`=1759, `classmask`=400 WHERE `Spell`=5019;
UPDATE `playercreateinfo_spell` SET `racemask`=40, `classmask`=1024 WHERE `Spell`=5176;
UPDATE `playercreateinfo_spell` SET `racemask`=40, `classmask`=1024 WHERE `Spell`=5185;
UPDATE `playercreateinfo_spell` SET `racemask`=16, `classmask`=441 WHERE `Spell`=5227;
UPDATE `playercreateinfo_spell` SET `racemask`=1279, `classmask`=1 WHERE `Spell`=5301;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=6233;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=6246;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=6247;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=6477;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=6478;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=39 WHERE `Spell`=6562;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=6603;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=7266;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=7267;
UPDATE `playercreateinfo_spell` SET `racemask`=64, `classmask`=425 WHERE `Spell`=7340;
UPDATE `playercreateinfo_spell` SET `racemask`=128, `classmask`=253 WHERE `Spell`=7341;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=7355;
UPDATE `playercreateinfo_spell` SET `racemask`=16, `classmask`=441 WHERE `Spell`=7744;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=7928;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=7929;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=7934;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=8386;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=35 WHERE `Spell`=8737;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1135 WHERE `Spell`=9077;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=9078;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=67 WHERE `Spell`=9116;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=9125;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=10840;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=10841;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=10846;
UPDATE `playercreateinfo_spell` SET `racemask`=1710, `classmask`=4 WHERE `Spell`=13358;
UPDATE `playercreateinfo_spell` SET `racemask`=735, `classmask`=8 WHERE `Spell`=16092;
UPDATE `playercreateinfo_spell` SET `racemask`=16, `classmask`=441 WHERE `Spell`=17737;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=18629;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=18630;
UPDATE `playercreateinfo_spell` SET `racemask`=32, `classmask`=1125 WHERE `Spell`=20549;
UPDATE `playercreateinfo_spell` SET `racemask`=32, `classmask`=1125 WHERE `Spell`=20550;
UPDATE `playercreateinfo_spell` SET `racemask`=32, `classmask`=1125 WHERE `Spell`=20551;
UPDATE `playercreateinfo_spell` SET `racemask`=32, `classmask`=1125 WHERE `Spell`=20552;
UPDATE `playercreateinfo_spell` SET `racemask`=128, `classmask`=253 WHERE `Spell`=20555;
UPDATE `playercreateinfo_spell` SET `racemask`=128, `classmask`=253 WHERE `Spell`=20557;
UPDATE `playercreateinfo_spell` SET `racemask`=128, `classmask`=253 WHERE `Spell`=20558;
UPDATE `playercreateinfo_spell` SET `racemask`=2, `classmask`=45 WHERE `Spell`=20572;
UPDATE `playercreateinfo_spell` SET `racemask`=2, `classmask`=365 WHERE `Spell`=20573;
UPDATE `playercreateinfo_spell` SET `racemask`=2, `classmask`=365 WHERE `Spell`=20574;
UPDATE `playercreateinfo_spell` SET `racemask`=2, `classmask`=256 WHERE `Spell`=20575;
UPDATE `playercreateinfo_spell` SET `racemask`=2, `classmask`=4 WHERE `Spell`=20576;
UPDATE `playercreateinfo_spell` SET `racemask`=16, `classmask`=441 WHERE `Spell`=20577;
UPDATE `playercreateinfo_spell` SET `racemask`=16, `classmask`=441 WHERE `Spell`=20579;
UPDATE `playercreateinfo_spell` SET `racemask`=8, `classmask`=1085 WHERE `Spell`=20582;
UPDATE `playercreateinfo_spell` SET `racemask`=8, `classmask`=1085 WHERE `Spell`=20583;
UPDATE `playercreateinfo_spell` SET `racemask`=8, `classmask`=1085 WHERE `Spell`=20585;
UPDATE `playercreateinfo_spell` SET `racemask`=64, `classmask`=425 WHERE `Spell`=20589;
UPDATE `playercreateinfo_spell` SET `racemask`=64, `classmask`=425 WHERE `Spell`=20591;
UPDATE `playercreateinfo_spell` SET `racemask`=64, `classmask`=425 WHERE `Spell`=20592;
UPDATE `playercreateinfo_spell` SET `racemask`=64, `classmask`=425 WHERE `Spell`=20593;
UPDATE `playercreateinfo_spell` SET `racemask`=4, `classmask`=63 WHERE `Spell`=20594;
UPDATE `playercreateinfo_spell` SET `racemask`=4, `classmask`=63 WHERE `Spell`=20595;
UPDATE `playercreateinfo_spell` SET `racemask`=4, `classmask`=63 WHERE `Spell`=20596;
UPDATE `playercreateinfo_spell` SET `racemask`=1, `classmask`=443 WHERE `Spell`=20597;
UPDATE `playercreateinfo_spell` SET `racemask`=1, `classmask`=443 WHERE `Spell`=20598;
UPDATE `playercreateinfo_spell` SET `racemask`=1, `classmask`=443 WHERE `Spell`=20599;
UPDATE `playercreateinfo_spell` SET `racemask`=1, `classmask`=443 WHERE `Spell`=20864;
UPDATE `playercreateinfo_spell` SET `racemask`=1541, `classmask`=2 WHERE `Spell`=21084;
UPDATE `playercreateinfo_spell` SET `racemask`=735, `classmask`=8 WHERE `Spell`=21184;
UPDATE `playercreateinfo_spell` SET `racemask`=2, `classmask`=73 WHERE `Spell`=21563;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=21651;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=21652;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=22027;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=22810;
UPDATE `playercreateinfo_spell` SET `racemask`=1710, `classmask`=4 WHERE `Spell`=24949;
UPDATE `playercreateinfo_spell` SET `racemask`=512, `classmask`=8 WHERE `Spell`=25046;
UPDATE `playercreateinfo_spell` SET `racemask`=128, `classmask`=253 WHERE `Spell`=26290;
UPDATE `playercreateinfo_spell` SET `racemask`=128, `classmask`=253 WHERE `Spell`=26297;
UPDATE `playercreateinfo_spell` SET `racemask`=1541, `classmask`=2 WHERE `Spell`=27762;
UPDATE `playercreateinfo_spell` SET `racemask`=1186, `classmask`=64 WHERE `Spell`=27763;
UPDATE `playercreateinfo_spell` SET `racemask`=40, `classmask`=1024 WHERE `Spell`=27764;
UPDATE `playercreateinfo_spell` SET `racemask`=512, `classmask`=406 WHERE `Spell`=28730;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=247 WHERE `Spell`=28875;
UPDATE `playercreateinfo_spell` SET `racemask`=512, `classmask`=446 WHERE `Spell`=28877;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=208 WHERE `Spell`=28878;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=1 WHERE `Spell`=28880;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=247 WHERE `Spell`=29932;
UPDATE `playercreateinfo_spell` SET `racemask`=1279, `classmask`=1 WHERE `Spell`=32215;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=33391;
UPDATE `playercreateinfo_spell` SET `racemask`=2, `classmask`=64 WHERE `Spell`=33697;
UPDATE `playercreateinfo_spell` SET `racemask`=2, `classmask`=256 WHERE `Spell`=33702;
UPDATE `playercreateinfo_spell` SET `racemask`=1710, `classmask`=4 WHERE `Spell`=34082;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=45462;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=45477;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=45902;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=45903;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=45927;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=47541;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=48266;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=49410;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=49576;
UPDATE `playercreateinfo_spell` SET `racemask`=512, `classmask`=32 WHERE `Spell`=50613;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=52665;
UPDATE `playercreateinfo_spell` SET `racemask`=2, `classmask`=32 WHERE `Spell`=54562;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=56816;
UPDATE `playercreateinfo_spell` SET `racemask`=595, `classmask`=256 WHERE `Spell`=58284;
UPDATE `playercreateinfo_spell` SET `racemask`=128, `classmask`=253 WHERE `Spell`=58943;
UPDATE `playercreateinfo_spell` SET `racemask`=8, `classmask`=1085 WHERE `Spell`=58984;
UPDATE `playercreateinfo_spell` SET `racemask`=1, `classmask`=443 WHERE `Spell`=58985;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=1 WHERE `Spell`=59221;
UPDATE `playercreateinfo_spell` SET `racemask`=4, `classmask`=63 WHERE `Spell`=59224;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=2 WHERE `Spell`=59535;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=4 WHERE `Spell`=59536;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=16 WHERE `Spell`=59538;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=32 WHERE `Spell`=59539;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=64 WHERE `Spell`=59540;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=128 WHERE `Spell`=59541;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=2 WHERE `Spell`=59542;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=4 WHERE `Spell`=59543;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=16 WHERE `Spell`=59544;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=32 WHERE `Spell`=59545;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=64 WHERE `Spell`=59547;
UPDATE `playercreateinfo_spell` SET `racemask`=1024, `classmask`=128 WHERE `Spell`=59548;
UPDATE `playercreateinfo_spell` SET `racemask`=1, `classmask`=443 WHERE `Spell`=59752;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=59879;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=59921;
UPDATE `playercreateinfo_spell` SET `racemask`=1541, `classmask`=2 WHERE `Spell`=60091;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=1535 WHERE `Spell`=61437;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=32 WHERE `Spell`=61455;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=256 WHERE `Spell`=75445;
UPDATE `playercreateinfo_spell` SET `racemask`=1791, `classmask`=64 WHERE `Spell`=75461;
UPDATE `playercreateinfo_spell` SET `racemask`=0 WHERE `racemask`=1791; -- All races
UPDATE `playercreateinfo_spell` SET `classmask`=0 WHERE `classmask`=1535; -- All classes
DROP TABLE IF EXISTS `keychain_db2`;
CREATE TABLE `keychain_db2` (
  `keyId` INT UNSIGNED NOT NULL DEFAULT '0',
  `k1` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k2` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k3` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k4` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k5` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k6` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k7` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k8` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k9` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k10` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k11` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k12` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k13` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k14` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k15` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k16` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k17` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k18` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k19` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k20` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k21` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k22` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k23` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k24` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k25` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k26` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k27` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k28` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k29` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k30` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k31` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k32` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `keychain_db2` VALUES
(33, 53, 6, 164, 135, 117, 210, 209, 135, 247, 162, 85, 200, 76, 220, 107, 56, 80, 214, 44, 121, 29, 66, 81, 25, 41, 38, 208, 8, 235, 154, 58, 139),
(35, 16, 209, 60, 47, 154, 100, 204, 97, 125, 161, 79, 126, 191, 163, 7, 45, 64, 188, 199, 88, 141, 46, 153, 90, 143, 40, 6, 80, 29, 133, 217, 135),
(36, 3, 169, 217, 5, 156, 76, 33, 82, 75, 181, 233, 203, 230, 52, 67, 197, 57, 99, 27, 108, 100, 197, 93, 156, 174, 2, 248, 216, 244, 115, 164, 210),
(37, 119, 7, 189, 206, 199, 253, 234, 73, 232, 17, 162, 79, 0, 35, 222, 224, 7, 98, 132, 147, 229, 36, 19, 253, 79, 59, 198, 59, 48, 121, 97, 215);
DELETE FROM `smart_scripts` WHERE `entryorguid`=30407 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`link`,`event_type`,`event_flags`,`event_phase_mask`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(30407,0,1,11,0,0,0,0,0,0,11,56726,0,1,'Captured Crusader - On Respawn - Apply Nerubian Webs (56726)'),
(30407,1,0,61,0,0,0,0,0,0,22,1,0,1,'Captured Crusader - Linked to id 0 - Set event phase to 1'),
(30407,2,0, 1,0,1,4000,4000,4000,4000,10,70,22,1,'Captured Crusader - Out of combat - Random emote'),
(30407,3,4, 8,0,1,56683,0,0,0,11,56687,0,7,'Captured Crusader - Spell hit of Grab Captured Crusader (56683) - Cast Ride Vehicle (56687)'),
(30407,4,5,61,0,1,0,0,0,0,1,0,0,1,'Captured Crusader - Linked to id 3 - Talk'),
(30407,5,0,61,0,1,0,0,0,0,22,2,0,1,'Captured Crusader - Linked to id 3 - Set event phase to 2'),
(30407,6,0, 1,0,2,8000,8000,8000,8000,1,1,0,1,'Captured Crusader - Out of combat - Talk'),
(30407,7,8,23,1,2,56687,0,0,0,1,2,0,1,'Captured Crusader - Aura Ride Vehicle (56687) removed - Talk'),
(30407,8,9,61,0,2,0,0,0,0,41,5000,0,1,'Captured Crusader - Linked to id 7 - Despawn'),
(30407,9,0,61,0,2,0,0,0,0,22,0,0,1,'Captured Crusader - Linked to id 7 - Set event phase to 0');
DELETE FROM `trinity_string` WHERE `entry`=363;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(363, 'Player %s cannot whisper you any longer.');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (48619,48620,52812);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=48738;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,48619,0,0,31,0,3,27377,0,0,'','Spell Flame Breath effect0 targets Thane Torvald Eriksson'),
(13,2,48619,0,0,31,0,3,27377,0,0,'','Spell Flame Breath effect1 targets Thane Torvald Eriksson'),
(13,1,48620,0,0,31,0,3,27377,0,0,'','Spell Wing Buffet targets Thane Torvald Eriksson'),
(13,1,52812,0,0,31,0,3,27377,0,0,'','Spell Molten Fury effect0 targets Thane Torvald Eriksson'),
(13,2,52812,0,0,31,0,3,27377,0,0,'','Spell Molten Fury effect1 targets Thane Torvald Eriksson');

UPDATE `smart_scripts` SET `event_type`=1, `event_flags`=1 WHERE `entryorguid`=21633 AND `source_type`=0 AND `id`=0;
SET @HARPOON := 30066;
SET @HAYSTACK := 30096;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (55896,55934);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@HAYSTACK;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,4,55896,0,0,31,0,3,@HAYSTACK,0,0,0,'','Spell Explosion effect2 targets Dry Haystack'),
(13,2,55934,0,0,31,0,3,30103,0,0,0,'','Spell Valkyrion Fire effect1 targets Valkyrion Fire Bunny'),
(22,1,@HAYSTACK,0,0,1,1,55934,0,0,1,0,'','SAI Dry Haystack triggers only if Dry Haystack has no aura of spell Valkyrion Fire');

UPDATE `creature_template` SET `npcflag`=16777216, `ScriptName`='' WHERE `entry`=@HARPOON;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@HARPOON,@HAYSTACK);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@HARPOON,@HAYSTACK) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@HARPOON,0,0,0,11,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Valkyrion Harpoon Gun - On spawn - Root'),

(@HAYSTACK,0,0,1,8,0,100,0,55896,0,0,0,11,55934,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Dry Haystack - On spellhit Explosion - Spellcast Valkyrion Fire'),
(@HAYSTACK,0,1,2,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dry Haystack - Linked - Set event phase 1'),
(@HAYSTACK,0,2,0,61,0,100,0,0,0,0,0,33,@HAYSTACK,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Dry Haystack - Linked - Quest credit'),
(@HAYSTACK,0,3,4,23,1,100,0,55934,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dry Haystack - On spellfade Valkyrion Fire (phase 1) - Set event phase 0'),
(@HAYSTACK,0,4,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dry Haystack - Linked - Despawn');
DELETE FROM `creature_template_addon` WHERE `entry`=29570;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`) VALUES
(29570,50331648,1);
SET @MULE := 23977;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@MULE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MULE AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MULE*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@MULE,0,0,0,22,0,100,0,125,0,0,0,11,43572,0,0,0,0,0,7,0,0,0,0,0,0,0,'Abandoned Pack Mule - On emote receive - Spellcast Send Them Packing: On /Raise Emote Dummy to Player'),
(@MULE,0,1,2,31,0,100,0,43572,0,0,0,11,42721,0,0,0,0,0,7,0,0,0,0,0,0,0,'Abandoned Pack Mule - On target spellhit Send Them Packing: On /Raise Emote Dummy to Player - Spellcast Send Them Packing: On Successful Dummy Spell Kill Credit'),
(@MULE,0,2,0,61,0,100,0,0,0,0,0,80,@MULE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule - On target spellhit Send Them Packing: On /Raise Emote Dummy to Player - Run script'),

(@MULE*100,9,0,0,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Stop movement'),
(@MULE*100,9,1,0,0,0,100,0,500,500,0,0,5,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Play emote'),
(@MULE*100,9,2,0,0,0,100,0,0,0,0,0,4,727,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Play sound'),
(@MULE*100,9,3,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Set run'),
(@MULE*100,9,4,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,1561.824,-3709.441,147.7268,0,'Abandoned Pack Mule script - Move to position'),
(@MULE*100,9,5,0,0,0,100,0,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Despawn');
DELETE FROM `trinity_string` WHERE `entry` IN (1151, 1152, 1153, 1154, 1155, 1156);
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(1151, 'Mail List Info: # of mails: %u, Player: %s(%u)'),
(1152, 'Mail Id: %u Title: \"%s\" Money: %ug%us%uc'),
(1153, 'Sender: %s(%u), Receiver: %s(%u)'),
(1154, 'Time deliver: %s, Time expire: %s'),
(1155, 'Item: %s[Entry:%u Guid:%u Count:%u]'),
(1156, 'Mail List Info: No mail found for this character.');

DELETE FROM `command` WHERE `name` = 'list mail';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('list mail', 3, 'Syntax: .list mail $character\nList of mails the character received.');
-- Quest 4901 "Guardians of the Altar"

SET @NPC_RANSHALLA       := 10300;
SET @NPC_PRIESTESS_ELUNE := 12116;
SET @NPC_GUARDIAN_ELUNE  := 12140;
SET @NPC_VOICE_ELUNE     := 12152;

SET @GO_ELUNE_ALTAR      := 177404;
SET @GO_ELUNE_GEM        := 177414;
SET @GO_ELUNE_LIGHT      := 177415;
SET @GO_ELUNE_FIRE       := 177417;
SET @GO_GUID             := 9650; -- Need 7 guids

-- script_texts for the quest
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_RANSHALLA, @NPC_PRIESTESS_ELUNE, @NPC_VOICE_ELUNE);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_RANSHALLA,0,0, 'Remember, I need your help to properly channel. I will ask you to aid me several times in our path, so please be ready.',12,0,100,0,0,0, 'Ranshalla SAY_QUEST_START'),
(@NPC_RANSHALLA,1,0, 'This blue light... It''s strange. What do you think it means?',12,0,100,25,0,0, 'Ranshalla SAY_ENTER_OWL_THICKET'),
(@NPC_RANSHALLA,2,0, 'We''ve found it!',12,0,100,0,0,0, 'Ranshalla SAY_REACH_TORCH_1'),
(@NPC_RANSHALLA,2,1, 'Please, light this while I am channeling',12,0,100,0,0,0, 'Ranshalla SAY_REACH_TORCH_2'),
(@NPC_RANSHALLA,2,2, 'This is the place. Let''s light it.',12,0,100,0,0,0, 'Ranshalla SAY_REACH_TORCH_3'),
(@NPC_RANSHALLA,3,0, 'Let''s find the next one.',12,0,100,0,0,0, 'Ranshalla SAY_AFTER_TORCH_1'),
(@NPC_RANSHALLA,3,1, 'We must continue on now.',12,0,100,0,0,0, 'Ranshalla SAY_AFTER_TORCH_2'),
(@NPC_RANSHALLA,4,0, 'It is time for the final step; we must activate the altar.',12,0,100,0,0,0, 'Ranshalla SAY_REACH_ALTAR_1'),
(@NPC_RANSHALLA,5,0, 'I will read the words carved into the stone, and you must find a way to light it.',12,0,100,0,0,0, 'Ranshalla SAY_REACH_ALTAR_2'),
(@NPC_RANSHALLA,6,0, 'The altar is glowing! We have done it!',12,0,100,0,0,0, 'Ranshalla SAY_RANSHALLA_ALTAR_1'),
(@NPC_RANSHALLA,7,0, 'What is happening? Look!',12,0,100,0,0,0, 'Ranshalla SAY_RANSHALLA_ALTAR_2'),
(@NPC_PRIESTESS_ELUNE,8,0, 'It has been many years...',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_3'),
(@NPC_PRIESTESS_ELUNE,9,0, 'Who has disturbed the altar of the goddess?',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_4'),
(@NPC_RANSHALLA,10,0, 'Please, priestesses, forgive us for our intrusion. We do not wish any harm here.',12,0,100,0,0,0, 'Ranshalla SAY_RANSHALLA_ALTAR_5'),
(@NPC_RANSHALLA,11,0, 'We only wish to know why the wildkin guard this area...',12,0,100,0,0,0, 'Ranshalla SAY_RANSHALLA_ALTAR_6'),
(@NPC_PRIESTESS_ELUNE,12,0, 'Enu thora''serador. This is a sacred place.',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_7'),
(@NPC_PRIESTESS_ELUNE,13,0, 'We will show you...',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_8'),
(@NPC_PRIESTESS_ELUNE,14,0, 'Look above you; thara dormil dorah...',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_9'),
(@NPC_PRIESTESS_ELUNE,15,0, 'This gem once allowed direct communication with Elune, herself.',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_10'),
(@NPC_PRIESTESS_ELUNE,16,0, 'Through the gem, Elune channeled her infinite wisdom...',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_11'),
(@NPC_PRIESTESS_ELUNE,17,0, 'Realizing that the gem needed to be protected, we turned to the goddess herself.',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_12'),
(@NPC_PRIESTESS_ELUNE,18,0, 'Soon after, we began to have visions of a creature... A creature with the feathers of an owl, but the will and might of a bear...',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_13'),
(@NPC_PRIESTESS_ELUNE,19,0, 'It was on that day that the wildkin were given to us. Fierce guardians, the goddess assigned the wildkin to protect all of her sacred places.',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_14'),
(@NPC_VOICE_ELUNE,20,0, 'Anu''dorini Talah, Ru shallora enudoril.',12,0,100,0,0,0, 'Voice of Elune SAY_VOICE_ALTAR_15'),
(@NPC_PRIESTESS_ELUNE,21,0, 'But now, many years later, the wildkin have grown more feral, and without the guidance of the goddess, they are confused...',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_16'),
(@NPC_PRIESTESS_ELUNE,22,0, 'Without a purpose, they wander... But many find their way back to the sacred areas that they once were sworn to protect.',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_17'),
(@NPC_PRIESTESS_ELUNE,23,0, 'Wildkin are inherently magical; this power was bestowed upon them by the goddess.',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_18'),
(@NPC_PRIESTESS_ELUNE,24,0, 'Know that wherever you might find them in the world, they are protecting something of importance, as they were entrusted to do so long ago.',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_19'),
(@NPC_PRIESTESS_ELUNE,25,0, 'Please, remember what we have shown you...',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_20'),
(@NPC_PRIESTESS_ELUNE,26,0, 'Farewell.',12,0,100,0,0,0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_21'),
(@NPC_RANSHALLA,27,0, 'Thank you for you help, $N. I wish you well in your adventures.',12,0,100,0,0,0, 'Ranshalla SAY_RANSHALLA_END_1'),
(@NPC_RANSHALLA,28,0, 'I want to stay here and reflect on what we have seen. Please see Erelas and tell him what we have learned.',12,0,100,0,0,0, 'Ranshalla SAY_RANSHALLA_END_2'),
(@NPC_RANSHALLA,29,0, '%s begins chanting a strange spell...',16,0,100,0,0,0, 'Ranshalla EMOTE_CHANT_SPELL');

-- Waypoints for Ranshalla
DELETE FROM `script_waypoint` WHERE `entry`=@NPC_RANSHALLA;
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`) VALUES
(@NPC_RANSHALLA, 1, 5720.45, -4798.45, 778.23, 0, ''),
(@NPC_RANSHALLA, 2, 5730.22, -4818.34, 777.11, 0, ''),
(@NPC_RANSHALLA, 3, 5728.12, -4835.76, 778.15, 1000, 'SAY_ENTER_OWL_THICKET'),
(@NPC_RANSHALLA, 4, 5718.85, -4865.62, 787.56, 0, ''),
(@NPC_RANSHALLA, 5, 5697.13, -4909.12, 801.53, 0, ''),
(@NPC_RANSHALLA, 6, 5684.20, -4913.75, 801.60, 0, ''),
(@NPC_RANSHALLA, 7, 5674.67, -4915.78, 802.13, 0, ''),
(@NPC_RANSHALLA, 8, 5665.61, -4919.22, 804.85, 0, ''),
(@NPC_RANSHALLA, 9, 5638.22, -4897.58, 804.97, 0, ''),
(@NPC_RANSHALLA, 10, 5632.67, -4892.05, 805.44, 0, 'Cavern 1 - EMOTE_CHANT_SPELL'),
(@NPC_RANSHALLA, 11, 5664.58, -4921.84, 804.91, 0, ''),
(@NPC_RANSHALLA, 12, 5684.21, -4943.81, 802.80, 0, ''),
(@NPC_RANSHALLA, 13, 5724.92, -4983.69, 808.25, 0, ''),
(@NPC_RANSHALLA, 14, 5753.39, -4990.73, 809.84, 0, ''),
(@NPC_RANSHALLA, 15, 5765.62, -4994.89, 809.42, 0, 'Cavern 2 - EMOTE_CHANT_SPELL'),
(@NPC_RANSHALLA, 16, 5724.94, -4983.58, 808.29, 0, ''),
(@NPC_RANSHALLA, 17, 5699.61, -4989.82, 808.03, 0, ''),
(@NPC_RANSHALLA, 18, 5686.80, -5012.17, 807.27, 0, ''),
(@NPC_RANSHALLA, 19, 5691.43, -5037.43, 807.73, 0, ''),
(@NPC_RANSHALLA, 20, 5694.24, -5054.64, 808.85, 0, 'Cavern 3 - EMOTE_CHANT_SPELL'),
(@NPC_RANSHALLA, 21, 5686.88, -5012.18, 807.23, 0, ''),
(@NPC_RANSHALLA, 22, 5664.94, -5001.12, 807.78, 0, ''),
(@NPC_RANSHALLA, 23, 5647.12, -5002.84, 807.54, 0, ''),
(@NPC_RANSHALLA, 24, 5629.23, -5014.88, 807.94, 0, ''),
(@NPC_RANSHALLA, 25, 5611.26, -5025.62, 808.36, 0, 'Cavern 4 - EMOTE_CHANT_SPELL'),
(@NPC_RANSHALLA, 26, 5647.13, -5002.85, 807.57, 0, ''),
(@NPC_RANSHALLA, 27, 5641.12, -4973.22, 809.39, 0, ''),
(@NPC_RANSHALLA, 28, 5622.97, -4953.58, 811.12, 0, ''),
(@NPC_RANSHALLA, 29, 5601.52, -4939.49, 820.77, 0, ''),
(@NPC_RANSHALLA, 30, 5571.87, -4936.22, 831.35, 0, ''),
(@NPC_RANSHALLA, 31, 5543.23, -4933.67, 838.33, 0, ''),
(@NPC_RANSHALLA, 32, 5520.86, -4942.05, 843.02, 0, ''),
(@NPC_RANSHALLA, 33, 5509.15, -4946.31, 849.36, 0, ''),
(@NPC_RANSHALLA, 34, 5498.45, -4950.08, 849.98, 0, ''),
(@NPC_RANSHALLA, 35, 5485.78, -4963.40, 850.43, 0, ''),
(@NPC_RANSHALLA, 36, 5467.92, -4980.67, 851.89, 0, 'Cavern 5 - EMOTE_CHANT_SPELL'),
(@NPC_RANSHALLA, 37, 5498.68, -4950.45, 849.96, 0, ''),
(@NPC_RANSHALLA, 38, 5518.68, -4921.94, 844.65, 0, ''),
(@NPC_RANSHALLA, 39, 5517.66, -4920.82, 845.12, 0, 'SAY_REACH_ALTAR_1'),
(@NPC_RANSHALLA, 40, 5518.38, -4913.47, 845.57, 0, ''),
(@NPC_RANSHALLA, 41, 5511.31, -4913.82, 847.17, 5000, 'light the spotlights'),
(@NPC_RANSHALLA, 42, 5511.31, -4913.82, 847.17, 0, 'start altar cinematic - SAY_RANSHALLA_ALTAR_2'),
(@NPC_RANSHALLA, 43, 5510.47, -4922.38, 846.07, 0, ''),
(@NPC_RANSHALLA, 44, 5517.66, -4920.82, 845.12, 0, 'escort paused'),
(@NPC_RANSHALLA, 45, 5517.6, -4920.8, 845.12, 0, 'dummy to stop despawn');

-- creature
UPDATE `creature_template` SET `ScriptName`='npc_ranshalla' WHERE `entry`=@NPC_RANSHALLA;
UPDATE `creature_template` SET `unit_flags`=256 WHERE `entry`=@NPC_GUARDIAN_ELUNE; -- make guardian immune to PCs
-- gameobject
UPDATE `gameobject_template` SET `ScriptName`='go_elune_fire' WHERE `entry` IN (@GO_ELUNE_FIRE, @GO_ELUNE_ALTAR);
UPDATE `gameobject_template` SET `flags`=16 WHERE `entry`=@GO_ELUNE_ALTAR; -- stop people from touching altar early
-- Light and Gem Spawns
DELETE FROM `gameobject` WHERE `id` IN (@GO_ELUNE_GEM, @GO_ELUNE_LIGHT);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@GO_GUID+0,@GO_ELUNE_LIGHT,1,1,1,5515.71,-4905.82,846.322,4.62478,0,0,0.737392,-0.675466,-600,255,1),
(@GO_GUID+1,@GO_ELUNE_LIGHT,1,1,1,5505.09,-4909.36,848.961,5.63402,0,0,0.318914,-0.947784,-600,255,1),
(@GO_GUID+2,@GO_ELUNE_LIGHT,1,1,1,5501.69,-4920.04,848.791,0.155868,0,0,0.0778553,0.996965,-600,255,1),
(@GO_GUID+3,@GO_ELUNE_LIGHT,1,1,1,5510.28,-4929.31,845.214,1.62064,0,0,0.724507,0.689267,-600,255,1),
(@GO_GUID+4,@GO_ELUNE_LIGHT,1,1,1,5520.35,-4925.22,843.644,2.13507,0,0,0.876015,0.482283,-600,255,1),
(@GO_GUID+5,@GO_ELUNE_LIGHT,1,1,1,5526.7,-4916.41,843.452,3.01865,0,0,0.998111,0.0614331,-600,255,1),
(@GO_GUID+6,@GO_ELUNE_GEM,1,1,1,5514.49,-4917.57,850.538,2.3911,0,0,0.930417,0.366502,-900,100,1);

-- EFFECT1 for 18953
DELETE FROM `spell_dbc` WHERE `Id`=18954;
INSERT INTO `spell_dbc` (`Id`, `School`, `Category`, `CastUI`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `Stances`, `StancesNot`, `Targets`, `TargetCreatureType`, `RequiresSpellFocus`, `CasterAuraState`, `TargetAuraState`, `CastingTimeIndex`, `RecoveryTime`, `CategoryRecoveryTime`, `InterruptFlags`, `AuraInterruptFlags`, `ChannelInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `PowerType`, `PowerCost`, `PowerCostPerLevel`, `PowerCostPerSecond`, `PowerCostPerSecondPerLevel`, `RangeIndex`, `Speed`, `ModelNextSpell`, `StackAmount`, `Totem1`, `Totem2`, `Reagent1`, `Reagent2`, `Reagent3`, `Reagent4`, `Reagent5`, `Reagent6`, `Reagent7`, `Reagent8`, `ReagentCount1`, `ReagentCount2`, `ReagentCount3`, `ReagentCount4`, `ReagentCount5`, `ReagentCount6`, `ReagentCount7`, `ReagentCount8`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectBaseDice1`, `EffectBaseDice2`, `EffectBaseDice3`, `EffectDicePerLevel1`, `EffectDicePerLevel2`, `EffectDicePerLevel3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectChainTarget1`, `EffectChainTarget2`, `EffectChainTarget3`, `EffectItemType1`, `EffectItemType2`, `EffectItemType3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectPointsPerComboPoint1`, `EffectPointsPerComboPoint2`, `EffectPointsPerComboPoint3`, `SpellVisual`, `SpellVisual2`, `SpellIconID`, `ActiveIconID`, `SpellPriority`, `SpellName`, `Rank`, `Description`, `ToolTip`, `ManaCostPercentage`, `StartRecoveryCategory`, `StartRecoveryTime`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `StanceBarOrder`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `MinFactionId`, `MinReputation`, `RequiredAuraVision`) VALUES
(18954, 0, 0, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Ranshalla Despawn', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
TRUNCATE TABLE `playercreateinfo_spell`;
TRUNCATE TABLE `playercreateinfo_spell_custom`;

INSERT INTO `playercreateinfo_spell` (`racemask`, `classmask`, `Spell`, `Note`) VALUES
-- Races:   All
-- Classes: Warrior, Paladin, Hunter, Death Knight
(0x0, 0x27, 202, "Two-Handed Swords"),
-- Races:   All
-- Classes: Warrior, Paladin, Hunter, Rogue, Death Knight, Shaman
(0x0, 0x6F, 196, "One-Handed Axes"),
-- Races:   All
-- Classes: Warrior
(0x0, 0x1, 2457, "Battle Stance"),
-- Races:   All
-- Classes: Warrior
(0x0, 0x1, 88161, "Strike"),
-- Races:   All
-- Classes: Warrior, Hunter, Rogue
(0x0, 0xD, 5011, "Crossbows"),
-- Races:   All
-- Classes: Warrior, Rogue
(0x0, 0x9, 3018, "Shoot"),
-- Races:   All
-- Classes: Warrior, Paladin, Hunter, Death Knight, Shaman
(0x0, 0x67, 197, "Two-Handed Axes"),
-- Races:   All
-- Classes: Warrior, Hunter, Rogue, Priest, Shaman, Mage, Warlock, Druid
(0x0, 0x5DD, 1180, "Daggers"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 45927, "Summon Friend"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 6478, "Opening"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 6603, "Auto Attack"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 22027, "Remove Insignia"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 22810, "Opening - No Text"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 21651, "Opening"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 21652, "Closing"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 2382, "Generic"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 3365, "Opening"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 3050, "Detect"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 9125, "Generic"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 8386, "Attacking"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 7266, "Duel"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 7267, "Grovel"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 7355, "Stuck"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 6233, "Closing"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 6246, "Closing"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 6247, "Opening"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 6477, "Opening"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 61437, "Opening"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 68398, "Opening"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 96220, "Opening"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 203, "Unarmed"),
-- Races:   Human
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BF, 20864, "Mace Specialization"),
-- Races:   Human
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BF, 20599, "Diplomacy"),
-- Races:   Human
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BF, 20597, "Sword Specialization"),
-- Races:   Human
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BF, 20598, "The Human Spirit"),
-- Races:   Human
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BF, 59752, "Every Man for Himself"),
-- Races:   Human
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x1, 0x1BF, 79738, "Languages"),
-- Races:   All
-- Classes: Warrior, Paladin, Death Knight
(0x0, 0x23, 49410, "Forceful Deflection"),
-- Races:   All
-- Classes: Warrior, Paladin, Death Knight, Shaman, Druid
(0x0, 0x463, 199, "Two-Handed Maces"),
-- Races:   All
-- Classes: Warrior, Hunter, Rogue, Shaman, Druid
(0x0, 0x44D, 15590, "Fist Weapons"),
-- Races:   All
-- Classes: Warrior
(0x0, 0x1, 76268, "Armor Skills"),
-- Races:   All
-- Classes: Warrior
(0x0, 0x1, 76290, "Weapon Skills"),
-- Races:   All
-- Classes: Warrior
(0x0, 0x1, 88163, "Attack"),
-- Races:   All
-- Classes: Warrior, Paladin, Hunter, Death Knight, Druid
(0x0, 0x427, 200, "Polearms"),
-- Races:   Human, Dwarf, Night elf, Gnome, Dranei, Worgen
-- Classes: All
(0x20044D, 0x0, 668, "Language Common"),
-- Races:   All
-- Classes: Warrior, Hunter, Priest, Shaman, Mage, Warlock, Druid
(0x0, 0x5D5, 227, "Staves"),
-- Races:   All
-- Classes: Warrior, Paladin, Shaman
(0x0, 0x43, 9116, "Shield"),
-- Races:   All
-- Classes: Warrior, Paladin, Death Knight
(0x0, 0x23, 8737, "Mail"),
-- Races:   All
-- Classes: Warrior, Paladin, Hunter, Rogue, Death Knight, Shaman, Druid
(0x0, 0x46F, 9077, "Leather"),
-- Races:   All
-- Classes: Warrior, Hunter, Rogue
(0x0, 0xD, 264, "Bows"),
-- Races:   All
-- Classes: Warrior, Hunter, Rogue
(0x0, 0xD, 266, "Guns"),
-- Races:   All
-- Classes: Warrior, Paladin, Shaman
(0x0, 0x43, 107, "Block"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 81, "Dodge"),
-- Races:   All
-- Classes: Warrior
(0x0, 0x1, 32215, "Victorious State"),
-- Races:   All
-- Classes: Warrior
(0x0, 0x1, 5301, "Defensive State (DND)"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 204, "Defense"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 522, "SPELLDEFENSE (DND)"),
-- Races:   All
-- Classes: Warrior, Rogue
(0x0, 0x9, 2764, "Throw"),
-- Races:   All
-- Classes: Warrior, Rogue
(0x0, 0x9, 2567, "Thrown"),
-- Races:   All
-- Classes: All
(0x0, 0x0, 9078, "Cloth"),
-- Races:   All
-- Classes: Warrior, Paladin, Rogue, Priest, Death Knight, Shaman, Druid
(0x0, 0x47B, 198, "One-Handed Maces"),
-- Races:   All
-- Classes: Warrior, Paladin, Hunter, Rogue, Death Knight, Mage, Warlock
(0x0, 0x1AF, 201, "One-Handed Swords"),
-- Races:   Human, Dwarf, Tauren, Blood elf, Dranei
-- Classes: Paladin
(0x625, 0x2, 27762, "Relic"),
-- Races:   Human, Dwarf, Tauren, Blood elf, Dranei
-- Classes: Paladin
(0x625, 0x2, 76271, "Armor Skills"),
-- Races:   Human, Dwarf, Tauren, Blood elf, Dranei
-- Classes: Paladin
(0x625, 0x2, 76294, "Weapon Skills"),
-- Races:   Human, Dwarf, Tauren, Blood elf, Dranei
-- Classes: Paladin
(0x625, 0x2, 35395, "Crusader Strike"),
-- Races:   Human, Dwarf, Tauren, Blood elf, Dranei
-- Classes: Paladin
(0x625, 0x2, 60091, "Judgement Anti-Parry/Dodge Passive"),
-- Races:   Human, Dwarf, Tauren, Blood elf, Dranei
-- Classes: Paladin
(0x625, 0x2, 20208, "Paladin pushback resistance"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 3044, "Arcane Shot"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 75, "Auto Shot"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 82928, "Aimed Shot!"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 34082, "Hunter Passive Auras (DND)"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 883, "Call Pet 1"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 982, "Revive Pet"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 13358, "Defensive State (DND)"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 24949, "Defensive State 2 (DND)"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 77442, "Focus"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 76249, "Weapon Skills"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 76250, "Armor Skills"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 87324, "Focused Aim"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Tauren, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Hunter
(0x2007BF, 0x4, 87816, "General Hunter Passives"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Rogue
(0x2003DF, 0x8, 1752, "Sinister Strike"),
-- Races:   All
-- Classes: Rogue, Death Knight
(0x0, 0x28, 674, "Dual Wield"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Rogue
(0x2003DF, 0x8, 76273, "Armor Skills"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Rogue
(0x2003DF, 0x8, 76297, "Weapon Skills"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Rogue
(0x2003DF, 0x8, 16092, "Defensive State (DND)"),
-- Races:   All
-- Classes: Priest, Mage, Warlock
(0x0, 0x190, 5009, "Wands"),
-- Races:   All
-- Classes: Priest, Mage, Warlock
(0x0, 0x190, 5019, "Shoot"),
-- Races:   Human, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Priest
(0x2007FD, 0x10, 585, "Smite"),
-- Races:   Human, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Priest
(0x2007FD, 0x10, 84733, "Holy Focus"),
-- Races:   Human, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Priest
(0x2007FD, 0x10, 88685, "Holy Word: Sanctuary"),
-- Races:   Human, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Priest
(0x2007FD, 0x10, 88684, "Holy Word: Serenity"),
-- Races:   Human, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Priest
(0x2007FD, 0x10, 101062, "Flash Heal"),
-- Races:   Human, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Priest
(0x2007FD, 0x10, 76301, "Weapon Skills"),
-- Races:   Human, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Priest
(0x2007FD, 0x10, 76279, "Armor Skills"),
-- Races:   Human, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Priest
(0x2007FD, 0x10, 84734, "Dark Thoughts"),
-- Races:   Human, Dwarf, Night elf, Undead, Tauren, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Priest
(0x2007FD, 0x10, 77486, "Shadow Orb Power"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Mage
(0x2007DF, 0x80, 71761, "Deep Freeze Immunity State"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Mage
(0x2007DF, 0x80, 79684, "Offensive State (DND)"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Mage
(0x2007DF, 0x80, 133, "Fireball"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Mage
(0x2007DF, 0x80, 92315, "Pyroblast!"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Mage, Warlock
(0x2007DF, 0x180, 85801, "DPS Caster Crit Damage Bonus"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Mage
(0x2007DF, 0x80, 76298, "Weapon Skills"),
-- Races:   Human, Orc, Dwarf, Night elf, Undead, Gnome, Troll, Goblin, Blood elf, Dranei, Worgen
-- Classes: Mage
(0x2007DF, 0x80, 76276, "Armor Skills"),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Warlock
(0x2003D7, 0x100, 688, "Summon Imp"),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Warlock
(0x2003D7, 0x100, 86213, "Soul Swap Exhale"),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Warlock
(0x2003D7, 0x100, 89420, "Drain Life"),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Warlock
(0x2003D7, 0x100, 76299, "Weapon Skills"),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Warlock
(0x2003D7, 0x100, 76277, "Armor Skills"),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Warlock
(0x2003D7, 0x100, 87330, "Suppression"),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Warlock
(0x2003D7, 0x100, 75445, "Demonic Immolate"),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Warlock
(0x2003D7, 0x100, 686, "Shadow Bolt"),
-- Races:   Human, Orc, Dwarf, Undead, Gnome, Troll, Goblin, Blood elf, Worgen
-- Classes: Warlock
(0x2003D7, 0x100, 58284, "Chaos Bolt Passive"),
-- Races:   Orc, Undead, Tauren, Troll, Goblin, Blood elf
-- Classes: All
(0x3B2, 0x0, 669, "Language Orcish"),
-- Races:   Orc
-- Classes: Warrior, Rogue, Mage
(0x2, 0x89, 21563, "Command"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue, Death Knight
(0x2, 0x2D, 20572, "Blood Fury"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue, Death Knight, Shaman, Mage, Warlock
(0x2, 0x1ED, 20573, "Hardiness"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue, Death Knight, Shaman, Mage, Warlock
(0x2, 0x1ED, 20574, "Axe Specialization"),
-- Races:   Orc
-- Classes: Warrior, Hunter, Rogue, Death Knight, Shaman, Mage, Warlock
(0x2, 0x1ED, 79743, "Languages"),
-- Races:   Orc
-- Classes: Hunter
(0x2, 0x4, 20576, "Command"),
-- Races:   Orc, Dwarf, Troll, Goblin, Dranei
-- Classes: Shaman
(0x586, 0x40, 27763, "Relic"),
-- Races:   Orc
-- Classes: Shaman
(0x2, 0x40, 65222, "Command"),
-- Races:   Orc
-- Classes: Shaman
(0x2, 0x40, 33697, "Blood Fury"),
-- Races:   Orc, Dwarf, Troll, Goblin, Dranei
-- Classes: Shaman
(0x586, 0x40, 76272, "Armor Skills"),
-- Races:   Orc, Dwarf, Troll, Goblin, Dranei
-- Classes: Shaman
(0x586, 0x40, 76296, "Weapon Skills"),
-- Races:   Orc, Dwarf, Troll, Goblin, Dranei
-- Classes: Shaman
(0x586, 0x40, 89920, "Ancestral Focus"),
-- Races:   Orc, Dwarf, Tauren, Troll, Goblin, Dranei
-- Classes: Shaman
(0x5A6, 0x40, 403, "Lightning Bolt"),
-- Races:   Orc
-- Classes: Mage, Warlock
(0x2, 0x180, 33702, "Blood Fury"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x4, 0x1FF, 20596, "Frost Resistance"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x4, 0x1FF, 20595, "Gun Specialization"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x4, 0x1FF, 20594, "Stoneform"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x4, 0x1FF, 59224, "Mace Specialization"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x4, 0x1FF, 92682, "Explorer"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x4, 0x1FF, 79739, "Languages"),
-- Races:   Dwarf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x4, 0x1FF, 672, "Language Dwarven"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Druid
(0x8, 0x4BD, 76252, "Languages"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Druid
(0x8, 0x4BD, 20583, "Nature Resistance"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Druid
(0x8, 0x4BD, 20582, "Quickness"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Druid
(0x8, 0x4BD, 20585, "Wisp Spirit"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Druid
(0x8, 0x4BD, 21009, "Elusiveness"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Druid
(0x8, 0x4BD, 58984, "Shadowmeld"),
-- Races:   Night elf
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Druid
(0x8, 0x4BD, 671, "Language Darnassian"),
-- Races:   Night elf, Tauren, Troll, Worgen
-- Classes: Druid
(0x2000A8, 0x400, 84736, "Nature's Focus"),
-- Races:   Night elf, Tauren, Troll, Worgen
-- Classes: Druid
(0x2000A8, 0x400, 81170, "Ravage!"),
-- Races:   Night elf, Tauren, Troll, Worgen
-- Classes: Druid
(0x2000A8, 0x400, 79577, "Eclipse Mastery Driver Passive"),
-- Races:   Night elf, Tauren, Troll, Worgen
-- Classes: Druid
(0x2000A8, 0x400, 76300, "Weapon Skills"),
-- Races:   Night elf, Tauren, Troll, Worgen
-- Classes: Druid
(0x2000A8, 0x400, 76275, "Armor Skills"),
-- Races:   Night elf, Tauren, Troll, Worgen
-- Classes: Druid
(0x2000A8, 0x400, 5176, "Wrath"),
-- Races:   Night elf, Tauren, Troll, Worgen
-- Classes: Druid
(0x2000A8, 0x400, 84738, "Celestial Focus"),
-- Races:   Undead
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage
(0x10, 0xBD, 17737, "Language Gutterspeak"),
-- Races:   Undead
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1BD, 5227, "Underwater Breathing"),
-- Races:   Undead
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1BD, 7744, "Will of the Forsaken"),
-- Races:   Undead
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1BD, 20577, "Cannibalize"),
-- Races:   Undead
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1BD, 20579, "Shadow Resistance"),
-- Races:   Undead
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x10, 0x1BD, 79747, "Languages"),
-- Races:   Undead
-- Classes: Warlock
(0x10, 0x100, 17747, "Language Gutterspeak"),
-- Races:   Tauren
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Druid
(0x20, 0x437, 670, "Language Taurahe"),
-- Races:   Tauren
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Druid
(0x20, 0x437, 20549, "War Stomp"),
-- Races:   Tauren
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Druid
(0x20, 0x437, 20550, "Endurance"),
-- Races:   Tauren
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Druid
(0x20, 0x437, 20551, "Nature Resistance"),
-- Races:   Tauren
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Druid
(0x20, 0x437, 20552, "Cultivation"),
-- Races:   Tauren
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Druid
(0x20, 0x437, 79746, "Languages"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x40, 0x1B9, 20591, "Expansive Mind"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x40, 0x1B9, 20593, "Engineering Specialization"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x40, 0x1B9, 20592, "Arcane Resistance"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x40, 0x1B9, 92680, "Shortblade Specialization"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x40, 0x1B9, 79740, "Languages"),
-- Races:   Gnome
-- Classes: Warrior, Rogue, Priest, Death Knight, Mage, Warlock
(0x40, 0x1B9, 7340, "Language Gnomish"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x80, 0x5FD, 7341, "Language Troll"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x80, 0x5FD, 26290, "Bow Specialization"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x80, 0x5FD, 26297, "Berserking"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x80, 0x5FD, 58943, "Da Voodoo Shuffle"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x80, 0x5FD, 20555, "Regeneration"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x80, 0x5FD, 20557, "Beast Slaying"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x80, 0x5FD, 20558, "Throwing Specialization"),
-- Races:   Troll
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock, Druid
(0x80, 0x5FD, 79744, "Languages"),
-- Races:   Goblin
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x100, 0x1FD, 69269, "Language Goblin"),
-- Races:   Goblin
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x100, 0x1FD, 69070, "Rocket Jump"),
-- Races:   Goblin
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x100, 0x1FD, 69041, "Rocket Barrage"),
-- Races:   Goblin
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x100, 0x1FD, 69044, "Best Deals Anywhere"),
-- Races:   Goblin
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x100, 0x1FD, 69045, "Better Living Through Chemistry"),
-- Races:   Goblin
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x100, 0x1FD, 69042, "Time is Money"),
-- Races:   Goblin
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Shaman, Mage, Warlock
(0x100, 0x1FD, 79749, "Languages"),
-- Races:   Blood elf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x200, 0x1BF, 813, "Language Thalassian"),
-- Races:   Blood elf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x200, 0x1BF, 822, "Arcane Resistance"),
-- Races:   Blood elf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x200, 0x1BF, 28877, "Arcane Affinity"),
-- Races:   Blood elf
-- Classes: Warrior
(0x200, 0x1, 69179, "Arcane Torrent"),
-- Races:   Blood elf
-- Classes: Warrior, Paladin, Hunter, Rogue, Priest, Death Knight, Mage, Warlock
(0x200, 0x1BF, 79748, "Languages"),
-- Races:   Blood elf
-- Classes: Paladin, Priest, Mage, Warlock
(0x200, 0x192, 28730, "Arcane Torrent"),
-- Races:   Blood elf
-- Classes: Hunter
(0x200, 0x4, 80483, "Arcane Torrent"),
-- Races:   Blood elf
-- Classes: Rogue
(0x200, 0x8, 25046, "Arcane Torrent"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Shaman, Mage
(0x400, 0xF7, 29932, "Language Draenei"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Shaman, Mage
(0x400, 0xF7, 79741, "Languages"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Death Knight
(0x400, 0x27, 6562, "Heroic Presence"),
-- Races:   Dranei
-- Classes: Warrior
(0x400, 0x1, 28880, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Warrior, Paladin, Hunter, Priest, Death Knight, Shaman, Mage
(0x400, 0xF7, 28875, "Gemcutting"),
-- Races:   Dranei
-- Classes: Warrior
(0x400, 0x1, 59221, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Paladin
(0x400, 0x2, 59535, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Paladin
(0x400, 0x2, 59542, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Hunter
(0x400, 0x4, 59543, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Hunter
(0x400, 0x4, 59536, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Priest
(0x400, 0x10, 59538, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Priest, Shaman, Mage
(0x400, 0xD0, 28878, "Heroic Presence"),
-- Races:   Dranei
-- Classes: Priest
(0x400, 0x10, 59544, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Shaman
(0x400, 0x40, 59540, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Shaman
(0x400, 0x40, 59547, "Gift of the Naaru"),
-- Races:   Dranei
-- Classes: Mage
(0x400, 0x80, 59541, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Mage
(0x400, 0x80, 59548, "Gift of the Naaru"),
-- Races:   Worgen
-- Classes: Warrior, Hunter, Rogue, Priest, Death Knight, Mage, Warlock, Druid
(0x200000, 0x5BD, 79742, "Languages"),
-- Races:   Worgen
-- Classes: Warrior, Hunter, Rogue, Priest, Mage, Warlock, Druid
(0x200000, 0x59D, 69001, ""),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 52665, "Relic"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 63645, "Activating Primary Spec"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 63644, "Activating Secondary Spec"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 45902, "Blood Strike"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 82246, "Parry"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 89832, "Death Strike Enabler"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 45477, "Icy Touch"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 48266, "Frost Presence"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 61455, "Runic Focus"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 59921, "Frost Fever"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 33391, "Journeyman Riding"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 89964, "Clear Glyph"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 76282, "Armor Skills"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 76292, "Weapon Skills"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 750, "Plate Mail"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 45462, "Plague Strike"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 47541, "Death Coil"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 49576, "Death Grip"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 59879, "Blood Plague"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 45903, "Offensive State (DND)"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 10846, "First Aid"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 3275, "Linen Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 18630, "Heavy Runecloth Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 3276, "Heavy Linen Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 3277, "Wool Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 3278, "Heavy Wool Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 7928, "Silk Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 7929, "Heavy Silk Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 10840, "Mageweave Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 10841, "Heavy Mageweave Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 18629, "Runecloth Bandage"),
-- Races:   All
-- Classes: Death Knight
(0x0, 0x20, 7934, "Anti-Venom"),
-- Races:   Orc
-- Classes: Death Knight
(0x2, 0x20, 54562, "Command"),
-- Races:   Gnome
-- Classes: Death Knight
(0x40, 0x20, 20589, "Escape Artist"),
-- Races:   Goblin
-- Classes: Death Knight
(0x100, 0x20, 69046, "Pack Hobgoblin"),
-- Races:   Blood elf
-- Classes: Death Knight
(0x200, 0x20, 50613, "Arcane Torrent"),
-- Races:   Dranei
-- Classes: Death Knight
(0x400, 0x20, 59539, "Shadow Resistance"),
-- Races:   Dranei
-- Classes: Death Knight
(0x400, 0x20, 59545, "Gift of the Naaru"),
-- Races:   Worgen
-- Classes: Death Knight
(0x200000, 0x20, 68978, "Flayer"),
-- Races:   Worgen
-- Classes: Death Knight
(0x200000, 0x20, 68992, "Darkflight"),
-- Races:   Worgen
-- Classes: Death Knight
(0x200000, 0x20, 68976, "Aberration"),
-- Races:   Worgen
-- Classes: Death Knight
(0x200000, 0x20, 68996, "Two Forms"),
-- Races:   Worgen
-- Classes: Death Knight
(0x200000, 0x20, 68975, "Viciousness"),
-- Races:   Worgen
-- Classes: Death Knight
(0x200000, 0x20, 94293, "Enable Worgen Altered Form"),
-- Races:   Worgen
-- Classes: Death Knight
(0x200000, 0x20, 87840, "Running Wild");
