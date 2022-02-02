SET @CGUID := 4290000; -- creatures
SET @PGUID := 47200; -- pools

UPDATE creature SET guid=@CGUID+357, id=0 WHERE guid=154434;
UPDATE creature SET guid=@CGUID+358, id=0 WHERE guid=154436;
UPDATE creature_movement SET id=@CGUID+357 WHERE id=154434;
UPDATE creature_movement SET id=@CGUID+358 WHERE id=154436;
DELETE FROM creature WHERE guid IN (154433, 154435);	-- Now included in spawn_entry with the two creatures above
DELETE FROM creature_movement WHERE id IN (154433, 154435);
UPDATE creature SET guid=@CGUID+701, position_x=290.355, position_y=-470.042, position_z=-119.878, orientation=3.31613 WHERE guid=154605;
UPDATE creature SET guid=@CGUID+710, position_x=246.913, position_y=-485.775 WHERE guid=154618;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (13196, 13197, 13285) AND map=429);
DELETE FROM creature WHERE id IN (13196, 13197, 13285) AND map=429; -- Remove all Phase Lasher, Fel Lash and Death Lash
DELETE FROM creature WHERE guid IN (136207, 136205); -- Tsu'zee & substitute Eldreth Apparition
DELETE FROM pool_creature WHERE pool_entry BETWEEN 1183 AND 1198;
DELETE FROM pool_template WHERE entry BETWEEN 1183 AND 1198;
DELETE FROM creature WHERE guid IN (154606, 154607, 154604, 154611, 154613, 154612, 154610, 154616, 154617, 154619);

INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+390, 11467, 429, 128.643, 561.759, -4.31221, 3.12414, 43200, 86400, 0, 0, 0, 0), -- Tsu'zee
(@CGUID+427, 11471, 429, 128.643, 561.759, -4.31221, 3.12414, 7200, 7200, 0, 0, 0, 0), -- Eldreth Apparition
(@CGUID+700, 13022, 429, 292.697, -476.578, -119.036, 5.58505, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+702, 13022, 429, 299.18, -474.913, -119.036, 2.80998, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+703, 13022, 429, 292.824, -482.119, -119.036, 3.89208, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+704, 13022, 429, 281.187, -499.258, -119.036, 0, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+705, 13022, 429, 289.159, -504.723, -119.036, 0, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+706, 13022, 429, 282.743, -504.313, -119.036, 0, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+707, 13022, 429, 288.645, -499.382, -119.036, 0, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+708, 13022, 429, 245.336, -492.562, -119.036, 0, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+709, 13022, 429, 243.656, -487.932, -119.036, 5.20108, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+711, 13022, 429, 241.339, -484.667, -119.036, 0, 7200, 7200, 2, 0, 0, 1), -- Whip Lasher
(@CGUID+834, 0, 429, 51.1273, -748.835, -25.1003, 0, 7200, 7200, 0, 0, 0, 2), -- Phase Lasher, Fel Lash
(@CGUID+835, 0, 429, 51.1414, -755.75, -25.0891, 0, 7200, 7200, 0, 0, 0, 2), -- Phase Lasher, Fel Lash
(@CGUID+836, 0, 429, 61.9258, -648.15, -25.1335, 0, 7200, 7200, 0, 0, 0, 2), -- Phase Lasher, Fel Lash
(@CGUID+837, 0, 429, 64.6844, -620.783, -25.1592, 0, 7200, 7200, 0, 0, 0, 2), -- Phase Lasher, Fel Lash
(@CGUID+838, 0, 429, 21.00462532043457031, -457.191558837890625, -4.15969562530517578, 0.715584993362426757, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher, Fel Lash
(@CGUID+839, 0, 429, 15.17640399932861328, -402.7257080078125, -4.13800048828125, 4.921828269958496093, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher, Fel Lash
(@CGUID+840, 0, 429, -48.4529037475585937, -401.621734619140625, -4.13796329498291015, 5.131268024444580078, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher, Fel Lash
(@CGUID+841, 0, 429, -104.776382446289062, -405.623931884765625, -4.13417768478393554, 5.550147056579589843, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher, Fel Lash
(@CGUID+842, 13196, 429, -25.8675498962402343, -208.431671142578125, -3.97046494483947753, 0.820304751396179199, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher
(@CGUID+843, 13196, 429, -85.934722900390625, -208.182418823242187, -3.96893572807312011, 0.541052043437957763, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher
(@CGUID+844, 13196, 429, -166.726470947265625, -271.48712158203125, -4.06307840347290039, 5.689773082733154296, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher
(@CGUID+845, 13196, 429, -146.427444458007812, -366.639434814453125, -4.06831073760986328, 1.902408838272094726, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher
(@CGUID+846, 13196, 429, -51.4300308227539062, -358.118743896484375, -4.0544905662536621, 2.164208173751831054, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher
(@CGUID+847, 13196, 429, 70.9001617431640625, -357.222625732421875, -4.0480666160583496, 0.977384388446807861, 7200, 7200, 0, 0, 0, 0), -- Phase Lasher
-- 848 - 855
(@CGUID+856, 13197, 429, -35.1810455322265625, -458.879608154296875, -58.5326614379882812, 2.268928050994873046, 7200, 7200, 0, 0, 0, 0), -- Fel Lash
(@CGUID+857, 13197, 429, 47.38636016845703125, -447.763916015625, -58.5224838256835937, 3.752457857131958007, 7200, 7200, 0, 0, 0, 0), -- Fel Lash
(@CGUID+858, 13197, 429, 55.5945587158203125, -405.27593994140625, -58.5210800170898437, 3.996803998947143554, 7200, 7200, 0, 0, 0, 0), -- Fel Lash
(@CGUID+859, 0, 429, 287.5440673828125, -479.895294189453125, -119.036331176757812, 5.742133140563964843, 7200, 7200, 2, 0, 0, 1), -- Fel Lash, Death Lash
(@CGUID+860, 0, 429, 282.992156982421875, -503.01953125, -119.119659423828125, 2.19504094123840332, 7200, 7200, 2, 0, 0, 1), -- Fel Lash, Death Lash
(@CGUID+861, 0, 429, 239.9953155517578125, -491.46722412109375, -119.036323547363281, 0, 7200, 7200, 2, 0, 0, 1), -- Fel Lash, Death Lash
(@CGUID+883, 13285, 429, 83.3680419921875, -204.607498168945312, -56.7145652770996093, 4.136430263519287109, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+884, 13285, 429, 42.2530975341796875, -196.093994140625, -53.0979843139648437, 2.321287870407104492, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+885, 13285, 429, -38.4972457885742187, -194.396636962890625, -55.7837142944335937, 5.375614166259765625, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+886, 13285, 429, -114.832130432128906, -195.776077270507812, -52.6459465026855468, 0.331612557172775268, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+887, 13285, 429, 115.8658294677734375, -356.124359130859375, -54.9989509582519531, 4.363323211669921875, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+888, 13285, 429, 80.18323516845703125, -334.1510009765625, -53.8088722229003906, 2.129301786422729492, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+889, 13285, 429, 40.61471939086914062, -361.181915283203125, -54.0434761047363281, 1.588249564170837402, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+890, 13285, 429, -129.867431640625, -334.240570068359375, -56.7991905212402343, 5.16617441177368164, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+891, 13285, 429, 14.33214473724365234, -261.833343505859375, -52.0997428894042968, 4.433136463165283203, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+892, 13285, 429, -99.1421890258789062, -249.610275268554687, -56.67730712890625, 5.148721218109130859, 7200, 7200, 2, 0, 0, 1), -- Death Lash
(@CGUID+893, 13285, 429, -129.887588500976562, -246.628143310546875, -54.0495491027832031, 5.410520553588867187, 7200, 7200, 2, 0, 0, 1); -- Death Lash

INSERT INTO creature_spawn_entry (guid, entry) VALUES
(@CGUID+357, 11462),(@CGUID+357, 11464), -- Warpwood Treant, Warpwood Tangler
(@CGUID+358, 11462),(@CGUID+358, 11464), -- Warpwood Treant, Warpwood Tangler

(@CGUID+834, 13196),(@CGUID+834, 13197), -- Phase Lasher, Fel Lash
(@CGUID+835, 13196),(@CGUID+835, 13197), -- Phase Lasher, Fel Lash
(@CGUID+836, 13196),(@CGUID+836, 13197), -- Phase Lasher, Fel Lash
(@CGUID+837, 13196),(@CGUID+837, 13197), -- Phase Lasher, Fel Lash
(@CGUID+838, 13196),(@CGUID+838, 13197), -- Phase Lasher, Fel Lash
(@CGUID+839, 13196),(@CGUID+839, 13197), -- Phase Lasher, Fel Lash
(@CGUID+840, 13196),(@CGUID+840, 13197), -- Phase Lasher, Fel Lash
(@CGUID+841, 13196),(@CGUID+841, 13197), -- Phase Lasher, Fel Lash

(@CGUID+859, 13197),(@CGUID+859, 13285), -- Fel Lash, Death Lash
(@CGUID+860, 13197),(@CGUID+860, 13285), -- Fel Lash, Death Lash
(@CGUID+861, 13197),(@CGUID+861, 13285); -- Fel Lash, Death Lash



DELETE FROM pool_template WHERE entry BETWEEN 47217 AND 47281;
DELETE FROM pool_pool WHERE pool_id BETWEEN 47217 AND 47281;
DELETE FROM pool_template WHERE entry=47284;
DELETE FROM pool_template WHERE entry=25506;
DELETE FROM pool_creature WHERE pool_entry=25506;

INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(@CGUID+390, @PGUID+1, 25, 'DM - Tsu''zee (11467)'),
(@CGUID+427, @PGUID+1, 0, 'DM - Tsu''zee (Substitute)'),

(@CGUID+700, @PGUID+14, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 1'),
(@CGUID+701, @PGUID+14, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 1'),
(@CGUID+702, @PGUID+14, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 1'),
(@CGUID+703, @PGUID+14, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 1'),

(@CGUID+704, @PGUID+15, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 2'),
(@CGUID+705, @PGUID+15, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 2'),
(@CGUID+706, @PGUID+15, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 2'),
(@CGUID+707, @PGUID+15, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 2'),

(@CGUID+708, @PGUID+16, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 3'),
(@CGUID+709, @PGUID+16, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 3'),
(@CGUID+710, @PGUID+16, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 3'),
(@CGUID+711, @PGUID+16, 0.75, 'Whip Lasher, The Shrine of Eldretharr, Group 3');

INSERT INTO pool_template (entry, max_limit, description) VALUES
(@PGUID+1, 1, 'DM West - Tsu''zee (11467)'),
(@PGUID+14, 4, 'Whip Lasher 2x-4x, The Shrine of Eldretharr, Group 1'), -- 2 - 4
(@PGUID+15, 4, 'Whip Lasher 2x-4x, The Shrine of Eldretharr, Group 2'), -- 2 - 4
(@PGUID+16, 4, 'Whip Lasher 2x-4x, The Shrine of Eldretharr, Group 3'); -- 2 - 4