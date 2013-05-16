-- Cauterize Cooldown Fix

DELETE FROM `spell_proc_event` WHERE  `entry` IN (86948, 86949);
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES (86948, 60);
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES (86949, 60);
