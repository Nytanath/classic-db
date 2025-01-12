
SET @PATH_ID := 533 * 10000 + 0;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 533 * 10000 + 0 * 3;
SET @GROUP_ID := 533 * 10000 + 0;

DELETE FROM `creature` WHERE (`guid` IN ('89125', '89126', '89127'));
DELETE FROM `creature_movement` WHERE (`Id` = '89125');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '2556.662597656250', '-3500.704345703125', '267.749969482421875', '100', '0', '0'),
(@PATH_ID, '02', '2557.385986328125', '-3539.411376953125', '267.749969482421875', '100', '0', '0'),
(@PATH_ID, '03', '2555.852783203125', '-3582.011962890625', '267.750030517578125', '100', '0', '0'),
(@PATH_ID, '04', '2554.250000000000', '-3608.111572265625', '267.750000000000000', '100', '0', '0'),
(@PATH_ID, '05', '2556.057861328125', '-3651.870605468750', '283.738922119140625', '100', '0', '0'),
(@PATH_ID, '06', '2557.393798828125', '-3676.326416015625', '294.750000000000000', '100', '0', '0'),
(@PATH_ID, '07', '2559.929687500000', '-3705.278320312500', '294.749969482421875', '100', '0', '0'),
(@PATH_ID, '08', '2555.814208984375', '-3738.862792968750', '294.828552246093750', '100', '0', '0'),
(@PATH_ID, '09', '2578.244384765625', '-3761.799072265625', '294.828521728515625', '100', '0', '0'),
(@PATH_ID, '10', '2602.462646484375', '-3786.076416015625', '294.828552246093750', '100', '0', '0'),
(@PATH_ID, '11', '2633.827880859375', '-3817.206298828125', '294.828552246093750', '100', '0', '0'),
(@PATH_ID, '12', '2665.702148437500', '-3850.414062500000', '294.828552246093750', '100', '0', '0'),
(@PATH_ID, '13', '2698.182373046875', '-3882.201416015625', '294.673675537109375', '100', '0', '0'),
(@PATH_ID, '14', '2740.275146484375', '-3882.261230468750', '294.673675537109375', '100', '0', '0'),
(@PATH_ID, '15', '2774.763183593750', '-3882.999511718750', '289.242187500000000', '100', '0', '0'),
(@PATH_ID, '16', '2809.310058593750', '-3883.635986328125', '272.257812500000000', '100', '0', '0'),
(@PATH_ID, '17', '2840.132568359375', '-3882.753173828125', '267.673675537109375', '100', '0', '0'),
(@PATH_ID, '18', '2856.760986328125', '-3882.743164062500', '267.709411621093750', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '533', '1', '0', '0', '2556.662597656250', '-3500.704345703125', '267.749969482421875', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'), -- unknown pos
(@CREATURE_ID + 1, '0', '533', '1', '0', '0', '2561.662597656250', '-3505.704345703125', '267.749969482421875', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'), -- unknown pos
(@CREATURE_ID + 2, '0', '533', '1', '0', '0', '2551.662597656250', '-3495.704345703125', '267.749969482421875', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'); -- unknown pos

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '16451'),
(@CREATURE_ID + 1, '16452'),
(@CREATURE_ID + 2, '16452');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Naxxramas - Deathknight Vindicator (3) Patrol 000', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '5', '0', @PATH_ID, @PATH_TYPE, 'Naxxramas - Deathknight Vindicator (3) Patrol 000');
