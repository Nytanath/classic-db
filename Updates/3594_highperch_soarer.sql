-- Add Movement for Highperch Soarer 6139

-- General Respawntime Adjustment as it seems that they despawn on cyclic spline end
UPDATE creature SET spawntimesecsmin=60, spawntimesecsmax=120 WHERE id=6139;

UPDATE creature SET position_x=-5155.986, position_y=-1199.748, position_z=81.49023, spawndist=0, MovementType=3 WHERE guid=21708; -- cyclic spline, maybe despawn on final point (nest, keep for now as that was the only already correct one with a spline path) (0xF1300017FB00397B)
DELETE FROM creature_spawn_data WHERE guid=21708;
INSERT INTO creature_spawn_data (guid, id) VALUES (21708, 3);

DELETE FROM creature_movement WHERE id=21708;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- two points cut due to "falling"
(21708, 1, -5155.986, -1199.748, 81.49023, 100, 0, 0),
(21708, 2, -5166.314, -1220.043, 81.76808, 100, 0, 0),
(21708, 3, -5170.551, -1226.347, 76.71234, 100, 0, 0),
(21708, 4, -5178.024, -1237.037, 72.43468, 100, 0, 0),
(21708, 5, -5190.296, -1239.181, 71.90687, 100, 0, 0),
(21708, 6, -5215.796, -1225.133, 69.76797, 100, 0, 0),
(21708, 7, -5221.52, -1209.387, 67.79574, 100, 0, 0),
(21708, 8, -5219.366, -1194.92, 67.15694, 100, 0, 0),
(21708, 9, -5209.852, -1187.224, 65.96239, 100, 0, 0),
(21708, 10, -5194.886, -1188.915, 70.71236, 100, 0, 0),
(21708, 11, -5181.055, -1199.332, 60.29574, 100, 0, 0),
(21708, 12, -5158.846, -1213.597, 57.6291, 100, 0, 0),
(21708, 13, -5122.129, -1222.279, 42.46242, 100, 0, 0),
(21708, 14, -5110.988, -1230.767, 15.32349, 100, 0, 0),
(21708, 15, -5084.673, -1227.625, -11.81538, 100, 0, 0),
(21708, 16, -5065.282, -1209.691, -34.89864, 100, 0, 0),
(21708, 17, -5052.477, -1181.261, -39.42649, 100, 0, 0),
(21708, 18, -5025.058, -1165.288, -32.56528, 100, 0, 0),
(21708, 19, -5004.282, -1140.431, -38.3154, 100, 0, 0),
(21708, 20, -4984.813, -1123.683, -38.17639, 100, 0, 0),
(21708, 21, -4971.478, -1109.776, -38.17639, 100, 0, 0),
(21708, 22, -4949.74, -1096.296, -32.42633, 100, 0, 0),
(21708, 23, -4927.954, -1090.275, -24.84298, 100, 0, 0),
(21708, 24, -4909.837, -1080.728, -14.0652, 100, 0, 0),
(21708, 25, -4914.713, -1066.641, -7.898551, 100, 0, 0),
(21708, 26, -4927.922, -1056.954, -3.352009, 100, 0, 0),
(21708, 27, -4942.696, -1055.217, 8.220422, 100, 0, 0),
(21708, 28, -4951.954, -1049.145, 14.62554, 100, 0, 0),
(21708, 29, -4960.176, -1028.92, 20.03323, 100, 0, 0),
(21708, 30, -4970.474, -1008.432, 22.08879, 100, 0, 0),
(21708, 31, -4980.969, -992.9671, 23.42848, 100, 0, 0),
(21708, 32, -4993.734, -980.054, 23.75917, 100, 0, 0),
(21708, 33, -5012.753, -967.9377, 24.0925, 100, 0, 0),
(21708, 34, -5032.862, -971.138, 30.92584, 100, 0, 0),
(21708, 35, -5052.127, -982.1085, 39.0092, 100, 0, 0),
(21708, 36, -5060.675, -991.1913, 52.28708, 100, 0, 0),
(21708, 37, -5072.277, -1008.99, 67.84268, 100, 0, 0),
(21708, 38, -5090.256, -1005.558, 79.18673, 100, 0, 0),
(21708, 39, -5106.005, -1004.311, 73.88409, 100, 5000, 0),
(21708, 40, -5106.005, -1004.311, 73.88409, 100, 1, 1);

UPDATE creature SET position_x=-4929.003, position_y=-911.6569, position_z=18.75239, spawndist=0, MovementType=3 WHERE guid=21706;
DELETE FROM creature_spawn_data WHERE guid=21706;
INSERT INTO creature_spawn_data (guid, id) VALUES (21706, 3);

DELETE FROM creature_movement WHERE id=21706;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- two points cut due to "falling"
(21706, 1, -4929.003, -911.6569, 18.75239, 100, 0, 0),
(21706, 2, -4953.478, -906.6241, 25.16906, 100, 0, 0),
(21706, 3, -4969.366, -911.4011, 21.41906, 100, 0, 0),
(21706, 4, -4972.635, -920.9888, 19.11351, 100, 0, 0),
(21706, 5, -4979.057, -935.8115, 19.00239, 100, 0, 0),
(21706, 6, -4990.786, -947.3583, 15.61351, 100, 0, 0),
(21706, 7, -5004.067, -956.749, 14.1135, 100, 0, 0),
(21706, 8, -5026.492, -968.1356, 13.64128, 100, 0, 0),
(21706, 9, -5043.163, -978.6825, 16.50239, 100, 0, 0),
(21706, 10, -5055.615, -988.4313, 24.6135, 100, 0, 0),
(21706, 11, -5070.816, -997.7465, 27.72481, 100, 0, 0),
(21706, 12, -5088.313, -1005.358, 28.50257, 100, 0, 0),
(21706, 13, -5105.842, -1017.097, 28.75258, 100, 0, 0),
(21706, 14, -5112.935, -1035.853, 32.14149, 100, 0, 0),
(21706, 15, -5112.471, -1052.028, 34.2871, 100, 0, 0),
(21706, 16, -5099.38, -1061.636, 33.50296, 100, 0, 0),
(21706, 17, -5083.447, -1055.232, 38.23769, 100, 0, 0),
(21706, 18, -5069.148, -1047.212, 44.26545, 100, 0, 0),
(21706, 19, -5052.772, -1037.339, 35.40435, 100, 5000, 0),
(21706, 20, -5052.772, -1037.339, 35.40435, 100, 1, 1); -- despawn makes sense

UPDATE creature SET position_x=-5126.783, position_y=-872.288, position_z=59.30365, spawndist=0, MovementType=3 WHERE guid=21707; 
DELETE FROM creature_spawn_data WHERE guid=21707;
INSERT INTO creature_spawn_data (guid, id) VALUES (21707, 3);

DELETE FROM creature_movement WHERE id=21707;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- two points cut due to "falling"
(21707, 1, -5126.783, -872.288, 59.30365, 100, 0, 0),
(21707, 2, -5116.178, -894.6912, 72.49812, 100, 0, 0),
(21707, 3, -5095.893, -913.8989, 53.47025, 100, 0, 0),
(21707, 4, -5061.48, -926.3231, 59.41474, 100, 0, 0),
(21707, 5, -5031.166, -928.0311, 63.3591, 100, 0, 0),
(21707, 6, -5009.09, -920.3853, 63.3591, 100, 0, 0),
(21707, 7, -5003.398, -923.4924, 63.3591, 100, 0, 0),
(21707, 8, -4995.11, -928.8765, 63.3591, 100, 0, 0),
(21707, 9, -4961.049, -947.8885, 63.3591, 100, 0, 0),
(21707, 10, -4940.463, -957.058, 63.3591, 100, 0, 0),
(21707, 11, -4929.924, -961.3636, 50.72021, 100, 5000, 0),
(21707, 12, -4929.924, -961.3636, 50.72021, 100, 1, 1);