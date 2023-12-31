INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('bourgris', 1500, '1996-02-14', NULL);
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('a-00', 1191, '1997-03-03', 'M');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('skinnerua', 1261, '1998-07-17', 'M');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('ischia', 1496, '1994-11-03', NULL);
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('daniamurashov', 1439, '1990-10-14', NULL);
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('adivanov2009', 1454, '1996-08-25', 'M');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('nik221107', 1523, '1990-04-21', 'F');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('trelynn17', 1250, '1991-01-31', 'M');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('franklin14532', 1002, '1990-05-31', 'M');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('capa_jr', 1520, '1991-10-04', 'M');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('daniel_likes_chess', 1423, '1994-05-21', 'M');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('soultego', 2108, '2002-09-04', 'M');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('ehabfanri', 1439, '1996-09-18', 'F');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('mirco25', 1209, '2002-11-11', 'F');
INSERT INTO players (player_id, rating, reg_date, sex) VALUES ('anaissac', 1272, '1992-05-29', 'M');

INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('D10', 'Slav Defense: Exchange Variation', 5);
INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('B00', 'Nimzowitsch Defense: Kennedy Variation', 4);
INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('C20', 'King''s Pawn Game: Leonardis Variation', 3);
INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('D02', 'Queen''s Pawn Game: Zukertort Variation', 3);
INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('C41', 'Philidor Defense', 5);
INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('B27', 'Sicilian Defense: Mongoose Variation', 4);
INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('D00', 'Blackmar-Diemer Gambit: Pietrowsky Defense', 10);
INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('C50', 'Italian Game: Schilling-Kostic Gambit', 6);
INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('B01', 'Scandinavian Defense: Mieses-Kotroc Variation', 4);
INSERT INTO openings (eco, opening_name, opening_ply) VALUES ('A00', 'Van''t Kruijs Opening', 1);

INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('TZJHLljE', '2017-08-31 20:06:40', '15+2', 13, 'outoftime', 'white', 'bourgris', 'a-00', 'D10');
INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('l1NXvwaE', '2017-08-30 21:53:20', '5+10', 16, 'resign', 'black', 'a-00', 'skinnerua', 'B00');
INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('mIICvQHh', '2017-08-30 21:53:20', '5+10', 61, 'mate', 'white', 'ischia', 'a-00', 'C20');
INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('kWKvrqYL', '2017-08-30 16:20:00', '20+0', 61, 'mate', 'white', 'daniamurashov', 'adivanov2009', 'D02');
INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('9tXo1AUZ', '2017-08-29 18:06:40', '30+3', 95, 'mate', 'white', 'nik221107', 'adivanov2009', 'C41');
INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('MsoDV9wj', '2017-09-01 04:26:40', '10+0', 5, 'draw', 'draw', 'trelynn17', 'franklin14532', 'B27');
INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('qwU9rasv', '2017-09-01 01:40:00', '10+0', 33, 'resign', 'white', 'capa_jr', 'daniel_likes_chess', 'D00');
INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('RVN0N3VK', '2017-08-25 16:53:20', '15+30', 9, 'resign', 'black', 'daniel_likes_chess', 'soultego', 'B00');
INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('dwF3DJHO', '2017-08-23 17:40:00', '15+0', 66, 'resign', 'black', 'ehabfanri', 'daniel_likes_chess', 'C50');
INSERT INTO games (game_id, game_date, time_control, num_turns, victory_status, winner, white_player, black_player, eco) VALUES ('afoMwnLg', '2017-08-22 22:13:20', '10+0', 119, 'mate', 'white', 'daniel_likes_chess', 'mirco25', 'B01');
