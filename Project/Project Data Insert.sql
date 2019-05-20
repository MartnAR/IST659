--Insert data into League table 
INSERT INTO League
	(LeagueID, LeagueName)
VALUES
	('AL', 'American League'),
	('NL', 'National League');

--Verify that the data has been inserted successfully
SELECT * FROM League;

--Insert Team data into Team table
INSERT INTO Team
	(TeamID, TeamCity, TeamName, LeagueID)
VALUES
	('ARI', 'Arizona', 'Diamondbacks', 'NL'),
	('ATL', 'Atlanta', 'Braves', 'NL'),
	('BAL', 'Baltimore', 'Orioles', 'AL'),
	('BOS', 'Boston', 'Red Sox', 'AL'),
	('CHA', 'Chicago', 'White Sox', 'AL'),
	('CHN', 'Chicago', 'Cubs', 'NL'),
	('CIN', 'Cincinnati', 'Reds', 'NL'),
	('CLE', 'Cleveland', 'Indians', 'AL'),
	('COL', 'Colorado', 'Rockies', 'NL'),
	('DET', 'Detroit', 'Tigers', 'AL'),
	('HOU', 'Houston', 'Astros', 'AL'),
	('KCA', 'Kansas City', 'Royals', 'AL'),
	('LAA', 'Los Angeles', 'Angels', 'AL'),
	('LAN', 'Los Angeles', 'Dodgers', 'NL'),
	('MIA', 'Miami', 'Marlins', 'NL'),
	('MIL', 'Milwaukee', 'Brewers', 'NL'),
	('MIN', 'Minnesota', 'Twins', 'AL'),
	('OAK', 'Oakland', 'Athletics', 'AL'),
	('PHI', 'Philadelphia', 'Phillies', 'NL'),
	('PIT', 'Pittsburgh', 'Pirates', 'NL'),
	('NYA', 'New York', 'Yankees', 'AL'),
	('NYN', 'New York', 'Mets', 'NL'),
	('SDN', 'San Diego', 'Padres', 'NL'),
	('SEA', 'Seattle', 'Mariners', 'AL'),
	('SFN', 'San Francisco', 'Giants', 'NL'),
	('SLN', 'St. Louis', 'Cardinals', 'NL'),
	('TBA', 'Tampa Bay', 'Rays', 'AL'),
	('TEX', 'Texas', 'Rangers', 'AL'),
	('TOR', 'Toronto', 'Blue Jays', 'AL'),
	('WAS', 'Washington', 'Nationals', 'NL');

--Verify that the data has been inserted
SELECT * FROM Team;

--Insert data into Game table
INSERT INTO Game
	(GameID, Game_Date, HomeTeamID, AwayTeamID)
VALUES
/*Opening Day games.  
  PIT @ DET and WAS @ CIN not included on account of games being postponed.*/
	('2018_03_29_MIA_CHN_0', '2018-03-29', 'MIA', 'CHN'),
	('2018_03_29_NYN_SLN_0', '2018-03-29', 'NYN', 'SLN'),
	('2018_03_29_BAL_MIN_0', '2018-03-29', 'BAL', 'MIN'),
	('2018_03_29_TEX_HOU_0', '2018-03-29', 'TEX', 'HOU'),
	('2018_03_29_TOR_NYA_0', '2018-03-29', 'TOR', 'NYA'),
	('2018_03_29_TBA_BOS_0', '2018-03-29', 'TBA', 'BOS'),
	('2018_03_29_OAK_LAA_0', '2018-03-29', 'OAK', 'LAA'),
	('2018_03_29_SDN_MIL_0', '2018-03-29', 'SDN', 'MIL'),
	('2018_03_29_ATL_PHI_0', '2018-03-29', 'ATL', 'PHI'),
	('2018_03_29_KCA_CHA_0', '2018-03-29', 'KCA', 'CHA'),
	('2018_03_29_LAN_SFN_0', '2018-03-29', 'LAN', 'SFN'),
	('2018_03_29_SEA_CLE_0', '2018-03-29', 'SEA', 'CLE'),
	('2018_03_29_ARI_CLE_0', '2018-03-29', 'ARI', 'COL');

--View Game table
SELECT * FROM Game;

--Insert data into Positions table
INSERT INTO Positions
	(positionID, position_short, position_name)
VALUES
	('1', 'P', 'Pitcher'),
	('2', 'C', 'Catcher'),
	('3', '1B', 'First Base'),
	('4', '2B', 'Second Base'),
	('5', '3B', 'Third Base'),
	('6', 'SS', 'Shortstop'),
	('7', 'LF', 'Leftfield'),
	('8', 'CF', 'Centerfield'),
	('9', 'RF', 'Rightfield'),
	('10', 'DH', 'Designated Hitter');

--View Positions table
SELECT * FROM Positions;

--Insert data into Player table
INSERT INTO Player
	(first_name, last_name, birth_date, height_in, weight_lbs, TeamID, season, positionID)
VALUES
--MIA Opening Day lineup (only starting 9; no relievers, pinch hitters, or pinch runners included.)
	('Lewis', 'Brinson', '1994-05-08', 75, 195, 'MIA', 2018, '8'),
	('Derek', 'Dietrich', '1989-07-18', 72, 205, 'MIA', 2018,'7'),
	('Starlin', 'Castro', '1990-05-07', 74, 230, 'MIA', 2018, '4'),
	('Justin', 'Bour', '1988-05-28', 75, 265, 'MIA', 2018, '3'),
	('Brian', 'Anderson', '1993-05-19', 75, 185, 'MIA', 2018, '5'),
	('Garrett', 'Cooper', '1990-12-25', 78, 230, 'MIA', 2018, '9'),
	('Miguel', 'Rojas', '1989-02-24', 71, 195, 'MIA', 2018, '6'),
	('Chad', 'Wallach', '1991-11-04', 75, 230, 'MIA', 2018, '2'),
	('Jose', 'Urena', '1991-09-12', 74, 200, 'MIA', 2018, '1'),
--CHN Opening Day lineup (only starting 9; no relievers, pinch hitters, or pinch runners included.)
	('Ian', 'Happ', '1994-08-12', 72, 205, 'CHN', 2018, '8'),
	('Kris', 'Bryant', '1992-01-04', 75, 230, 'CHN', 2018,'5'),
	('Anthony', 'Rizzo', '1989-08-08', 75, 240, 'CHN', 2018, '3'),
	('Willson', 'Contreras', '1992-05-13', 73, 210, 'CHN', 2018, '2'),
	('Kyle', 'Schwarber', '1993-03-05', 72, 235, 'CHN', 2018, '7'),
	('Addison', 'Russell', '1994-01-23', 72, 200, 'CHN', 2018, '6'),
	('Jason', 'Heyward', '1989-08-09', 77, 240, 'CHN', 2018, '9'),
	('Javier', 'Baez', '1992-12-01', 72, 190, 'CHN', 2018, '4'),
	('Jon', 'Lester', '1984-01-07', 76, 240, 'CHN', 2018, '1');

--View Player table
SELECT * FROM Player;

--Insert data into Plate_Appearance table
INSERT INTO Plate_Appearance
	(GameID, pitcherID, batterID, inning, half_inning, plate_appearance, runner_1b, runner_2b, runner_3b, outs, home_score, away_score)
VALUES
--CHN top of the first inning
	('2018_03_29_MIA_CHN_0', 9, 10, 1, 'top', 1, 0, 0, 0, 0, 0, 1),
	('2018_03_29_MIA_CHN_0', 9, 11, 1, 'top', 2, 1, 0, 0, 0, 0, 1),
	('2018_03_29_MIA_CHN_0', 9, 12, 1, 'top', 3, 1, 1, 0, 0, 0, 1),
	('2018_03_29_MIA_CHN_0', 9, 13, 1, 'top', 4, 1, 1, 0, 1, 0, 1),
	('2018_03_29_MIA_CHN_0', 9, 14, 1, 'top', 5, 1, 1, 0, 2, 0, 1),
	('2018_03_29_MIA_CHN_0', 9, 15, 1, 'top', 6, 0, 1, 1, 2, 0, 1),
	('2018_03_29_MIA_CHN_0', 9, 16, 1, 'top', 7, 1, 1, 1, 2, 0, 2),
	('2018_03_29_MIA_CHN_0', 9, 17, 1, 'top', 8, 1, 1, 1, 2, 0, 3),
	('2018_03_29_MIA_CHN_0', 9, 18, 1, 'top', 9, 1, 1, 1, 3, 0, 3),
--MIA bot of the first inning	
	('2018_03_29_MIA_CHN_0', 18, 1, 1, 'bot', 1, 0, 0, 0, 1, 0, 3),
	('2018_03_29_MIA_CHN_0', 18, 2, 1, 'bot', 2, 0, 0, 0, 2, 0, 3),
	('2018_03_29_MIA_CHN_0', 18, 3, 1, 'bot', 3, 1, 0, 0, 2, 0, 3),
	('2018_03_29_MIA_CHN_0', 18, 4, 1, 'bot', 4, 1, 1, 0, 2, 0, 3),
	('2018_03_29_MIA_CHN_0', 18, 5, 1, 'bot', 5, 1, 1, 0, 2, 1, 3),
	('2018_03_29_MIA_CHN_0', 18, 6, 1, 'bot', 6, 1, 1, 0, 3, 1, 3);

--View Plate_Appearance table
SELECT * FROM Plate_Appearance;

--Insert data into Pitch_event table
INSERT INTO Pitch_event
	(GameID, plate_appearance_id, pitch_of_pa, pitch_type, result, outcome, balls, strikes, play_description)
VALUES
--Top of the first inning, Cubs at bat.
	('2018_03_29_MIA_CHN_0', 1, 1, 'FA', 'strike', 'home run', 0, 0, 'Ian Happ homers(1).'),
	('2018_03_29_MIA_CHN_0', 2, 1, 'FA', 'ball', 'ball', 1, 0, NULL),
	('2018_03_29_MIA_CHN_0', 2, 2, 'FT', 'ball', 'ball', 2, 0, NULL),
	('2018_03_29_MIA_CHN_0', 2, 3, 'FT', 'strike', 'strike', 2, 1, NULL),
	('2018_03_29_MIA_CHN_0', 2, 4, 'CH', 'ball', 'ball', 3, 1, NULL),
	('2018_03_29_MIA_CHN_0', 2, 5, 'FA', 'strike', 'strike', 3, 2, NULL),
	('2018_03_29_MIA_CHN_0', 2, 6, 'CH', 'ball', 'walk', 4, 2, 'Kris Bryant walks.'),
	('2018_03_29_MIA_CHN_0', 3, 1, 'FA', 'strike', 'foul', 0, 1, NULL),
	('2018_03_29_MIA_CHN_0', 3, 2, 'FT', 'strike', 'foul', 0, 2, NULL),
	('2018_03_29_MIA_CHN_0', 3, 3, 'FT', 'ball', 'ball', 1, 2, NULL),
	('2018_03_29_MIA_CHN_0', 3, 4, 'FT', 'ball', 'hit by pitch', 1, 2, 'Anthony Rizzo hit by pitch. Bryant to 2nd.'),
	('2018_03_29_MIA_CHN_0', 4, 1, 'FT', 'strike', 'foul', 0, 1, NULL),
	('2018_03_29_MIA_CHN_0', 4, 2, 'SL', 'strike', 'strike', 0, 2, NULL),
	('2018_03_29_MIA_CHN_0', 4, 3, 'FA', 'strike', 'foul', 0, 2, NULL),
	('2018_03_29_MIA_CHN_0', 4, 4, 'CH', 'ball', 'ball', 1, 2, NULL),
	('2018_03_29_MIA_CHN_0', 4, 5, 'SL', 'ball', 'ball', 2, 2, NULL),
	('2018_03_29_MIA_CHN_0', 4, 6, 'SL', 'strike', 'foul', 2, 2, NULL),
	('2018_03_29_MIA_CHN_0', 4, 7, 'SL', 'strike', 'strikeout', 2, 3, 'Willson Contreras strikes out swinging.'),
	('2018_03_29_MIA_CHN_0', 5, 1, 'CH', 'strike', 'strike', 0, 1, NULL),
	('2018_03_29_MIA_CHN_0', 5, 2, 'FA', 'strike', 'foul', 0, 2, NULL),
	('2018_03_29_MIA_CHN_0', 5, 3, 'FT', 'ball', 'ball', 1, 2, NULL),
	('2018_03_29_MIA_CHN_0', 5, 4, 'FA', 'ball', 'ball', 2, 2, NULL),
	('2018_03_29_MIA_CHN_0', 5, 5, 'CH', 'strike', 'ground out', 2, 2, 'Kyle Schwarber grounds out. Bryant to 3rd. Rizzo to 2nd.'),
	('2018_03_29_MIA_CHN_0', 6, 1, 'SL', 'ball', 'ball', 1, 0, NULL),
	('2018_03_29_MIA_CHN_0', 6, 2, 'FT', 'strike', 'foul', 1, 1, NULL),
	('2018_03_29_MIA_CHN_0', 6, 3, 'FA', 'ball', 'hit by pitch', 1, 1, 'Addison Russell hit by pitch.'),
	('2018_03_29_MIA_CHN_0', 7, 1, 'CH', 'ball', 'ball', 1, 0, NULL),
	('2018_03_29_MIA_CHN_0', 7, 2, 'FT', 'ball', 'ball', 2, 0, NULL),
	('2018_03_29_MIA_CHN_0', 7, 3, 'CH', 'ball', 'ball', 3, 0, NULL),
	('2018_03_29_MIA_CHN_0', 7, 4, 'FA', 'ball', 'walk', 4, 0, 'Jason Heyward walks. Bryant scores. Rizza to 3rd. Russell to 2nd.'),
	('2018_03_29_MIA_CHN_0', 8, 1, 'FA', 'ball', 'hit by pitch', 0, 0, 'Javier Baez hit by pitch. Rizzo scores. Russell to 3rd. Heyward to 2nd.'),
	('2018_03_29_MIA_CHN_0', 9, 1, 'FA', 'ball', 'ball', 1, 0, NULL),
	('2018_03_29_MIA_CHN_0', 9, 2, 'FA', 'ball', 'ball', 2, 0, NULL),
	('2018_03_29_MIA_CHN_0', 9, 3, 'FA', 'strike', 'strike', 2, 1, NULL),
	('2018_03_29_MIA_CHN_0', 9, 4, 'FA', 'strike', 'foul', 2, 2, NULL),
	('2018_03_29_MIA_CHN_0', 9, 5, 'FT', 'strike', 'ground out', 2, 2, 'Lester grounds out.'),
--Bottom of the first inning, Marlins at bat.;
	('2018_03_29_MIA_CHN_0', 10, 1, 'FA', 'ball', 'ball', 1, 0, NULL),
	('2018_03_29_MIA_CHN_0', 10, 2, 'FA', 'strike', 'strike', 1, 1, NULL),
	('2018_03_29_MIA_CHN_0', 10, 3, 'SI', 'strike', 'ground out', 1, 1, 'Lewis Brison grounds out.'),
	('2018_03_29_MIA_CHN_0', 11, 1, 'FA', 'ball', 'ball', 1, 0, NULL),
	('2018_03_29_MIA_CHN_0', 11, 2, 'SI', 'strike', 'strike', 1, 1, NULL),
	('2018_03_29_MIA_CHN_0', 11, 3, 'SI', 'strike', 'ground out', 1, 0, 'Derek Dietrich grounds out.'),
	('2018_03_29_MIA_CHN_0', 12, 1, 'FA', 'strike', 'strike', 0, 1, NULL),
	('2018_03_29_MIA_CHN_0', 12, 2, 'CU', 'ball', 'ball', 1, 1, NULL),
	('2018_03_29_MIA_CHN_0', 12, 3, 'SI', 'ball', 'ball', 2, 1, NULL),
	('2018_03_29_MIA_CHN_0', 12, 4, 'FC', 'strike', 'strike', 2, 2, NULL),
	('2018_03_29_MIA_CHN_0', 12, 5, 'FA', 'ball', 'ball', 3, 2, NULL),
	('2018_03_29_MIA_CHN_0', 12, 6, 'FA', 'strike', 'single', 3, 2, 'Starlin Castro singles.'),
	('2018_03_29_MIA_CHN_0', 13, 1, 'FA', 'ball', 'ball', 1, 0, NULL),
	('2018_03_29_MIA_CHN_0', 13, 2, 'FA', 'ball', 'ball', 2, 0, NULL),
	('2018_03_29_MIA_CHN_0', 13, 3, 'SI', 'strike', 'strike', 2, 1, NULL),
	('2018_03_29_MIA_CHN_0', 13, 4, 'FA', 'strike', 'strike', 2, 2, NULL),
	('2018_03_29_MIA_CHN_0', 13, 5, 'FC', 'ball', 'ball', 3, 2, NULL),
	('2018_03_29_MIA_CHN_0', 13, 6, 'FC', 'ball', 'ball', 4, 2, 'Justin Bour walks. Castro to 2nd.'),
	('2018_03_29_MIA_CHN_0', 14, 1, 'FC', 'strike', 'strike', 0, 1, NULL),
	('2018_03_29_MIA_CHN_0', 14, 2, 'SI', 'strike', 'single', 0, 1, 'Brian Anderson singles. Castro scores. Bour to 2nd.'),
	('2018_03_29_MIA_CHN_0', 15, 1, 'FA', 'strike', 'force out', 0, 1, 'Garrett Cooper grounds into a force out.');

--View Pitch_event table
SELECT * FROM Pitch_event;

--Insert data into Pitch_type table
INSERT INTO Pitch_type
	(Pitch_type, Pitch_name)
VALUES
	('FA', 'Four Seam Fastball'),
	('FS', 'Splitter'),
	('SI', 'Sinker'),
	('CU', 'Curveball'),
	('CH', 'Change Up'),
	('SL', 'Slider'),
	('KN', 'Knuckleball'),
	('CS', 'Slow Curve'),
	('FC', 'Cutter'),
	('FT', 'Two Seam Fastball');

--View Pitch_type table
SELECT * FROM Pitch_type; 

--Insert data into Pitch table
INSERT INTO Pitch 
	(pitchID, pitch_type, release_point, velocity, x_movement, z_movement, max_plate_dist, max_plate_time, next_pitchID)
VALUES
	(1, 'FA', 127.2, 95.8, 0.48, 2.38, 0.69, 0.00, 2),
	(2, 'FA', 124.4, 95.6, -2.40, 2.25, 0.80, 0.00, 3),
	(3, 'FT', 117.8, 95.3, -1.70, 1.96, 0.60, 0.00, 4),
	(4, 'FT', 124.6, 94.8, -1.21, 1.04, 0.66, 0.02, 5),
	(5, 'CH', 124.8, 89.8, -0.72, 1.42, 0.85, 0.03, 6),
	(6, 'FA', 125.9, 94.6, -0.15, 2.56, 0.75, 0.02, 7),
	(7, 'CH', 117.5, 89.7, -1.41, 2.56, 0.85, 0.03, 8),
	(8, 'FA', 124.6, 95.3, 0.75, 2.03, 0.80, 0.00, 9),
	(9, 'FC', 123.2, 96.0, 0.51, 2.44, 0.60, 0.00, 10),
	(10, 'FT', 126.6, 95.8, 1.08, 2.69, 0.60, 0.00, 11),
	(11, 'FT', 125.5, 95.2, 2.02, 2.90, 0.60, 0.00, 12),
	(12, 'FT', 126.2, 95.6, -0.98, 1.74, 0.95, 0.04, 13),
	(13, 'SL', 112.8, 84.3, 0.33, 1.38, 0.72, 0.04, 14),
	(14, 'FA', 109.3, 95.2, -1.18, 1.43, 0.75, 0.02, 15),
	(15, 'CH', 123.4, 87.9, -1.32, 1.81, 0.87, 0.01, 16),
	(16, 'SL', 108.9, 81.0, -1.10, 4.08, 0.70, 0.01, 17),
	(17, 'SL', 110.9, 83.6, -0.07, 1.93, 0.70, 0.01, 18),
	(18, 'SL', 103.8, 82.8, 0.09, 2.13, 1.11, 0.01, 19),
	(19, 'CH', 123.4, 88.0, -0.44, 2.71, 0.85, 0.03, 20),
	(20, 'FA', 125.5, 94.9, -0.05, 1.82, 0.80, 0.00, 21),
	(21, 'FT', 117.3, 95.3, 0.50, 3.24, 0.78, 0.00, 22),
	(22, 'FA', 115.4, 96.1, 2.67, 2.83, 0.75, 0.02, 23),
	(23, 'CH', 126.3, 90.5, -0.65, 1.23, 0.87, 0.01, 24),
	(24, 'SL', 123.9, 85.6, 0.47, 3.88, 1.17, 0.04, 25),
	(25, 'FT', 125.0, 95.9, -0.73, 2.62, 0.78, 0.00, 26),
	(26, 'FA', 111.8, 96.0, -2.78, 3.36, 0.75, 0.02, 27),
	(27, 'CH', 125.2, 89.4, -1.14, 1.55, 0.69, 0.03, 28),
	(28, 'FT', 114.8, 95.1, -1.10, 2.79, 0.66, 0.02, 29),
	(29, 'CH', 122.2, 90.2, 0.27, 0.21, 0.85, 0.03, 30),
	(30, 'FA', 114.4, 95.6, 1.14, 1.46, 0.69, 0.00, 31),
	(31, 'FA', 124.3, 95.6, -1.72, 3.47, 0.69, 0.00, 32),
	(32, 'FA', 122.6, 94.1, -1.41, 3.28, 0.69, 0.00, 33),
	(33, 'FA', 120.5, 93.4, 1.74, 2.94, 0.69, 0.00, 34),
	(34, 'FA', 123.6, 93.9, 0.78, 2.47, 0.69, 0.00, 35),
	(35, 'FA', 121.6, 94.1, -0.27, 2.34, 0.69, 0.00, 36),
	(36, 'FT', 122.8, 94.3, -0.02, 2.18, 0.78, 0.00, 58); /*Pitch 58 of the game would be the next Jose Urena pitch.*/
														  /*Pitches 37 through 57 were thrown by Jon Lester.*/

--View Pitch table
SELECT * FROM Pitch;
