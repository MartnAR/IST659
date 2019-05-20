/*
	Author: Martin Alonso
	Course: IST659 Project
	Term: April 2018
*/

--Create the League table
CREATE TABLE League (
	--Columns for the League table
	LeagueID char(2) not null,
	LeagueName char(30) not null,
	CONSTRAINT PK_League PRIMARY KEY (LeagueID)
);
--End Creating the League table 

--Create the Team table
CREATE TABLE Team (
	--Columns for the Team table
	TeamID char(3) not null,
	TeamCity varchar(20) not null, 
	TeamName varchar(20) not null,
	LeagueID char(2) not null,
	--Constraints on the Team table
	CONSTRAINT PK_Team PRIMARY KEY (TeamID),
	CONSTRAINT FK1_Team FOREIGN KEY (LeagueID) REFERENCES League(LeagueID)
);
--End Creating the Team table

--Create the Game table
CREATE TABLE Game (
	--Columns for the Game table
	GameNumber int identity, 
	GameID char(25) not null,
	Game_Date datetime not null, 
	HomeTeamID char(3) not null,
	AwayTeamID char(3) not null,
	--Constraints on the Game table
	CONSTRAINT PK_Game PRIMARY KEY (GameID),
	CONSTRAINT FK1_Game FOREIGN KEY (HomeTeamID) REFERENCES Team(TeamID),
	CONSTRAINT FK2_Game FOREIGN KEY (AwayTeamID) REFERENCES Team(TeamID)
);
--End Creating the Game table

--Create the Positions table
CREATE TABLE Positions (
	--Columns for the Positions table
	positionID int not null,
	position_short char(2) not null,
	position_name char(20) not null,
	--Constraints on the Positions table
	CONSTRAINT PK_Positions PRIMARY KEY (positionID)
);
--End Creating the Positions table

--Create the Player table
CREATE TABLE Player (
	--Columns for the Player table
	playerID int identity, 
	first_name varchar(30) not null, 
	last_name varchar(30) not null,
	birth_date date not null,
	height_in int,
	weight_lbs int,
	TeamID char(3),
	season int, 
	positionID int,
	--Constraints on the Player table
	CONSTRAINT PK_Player PRIMARY KEY (playerID),
	CONSTRAINT FK1_Player FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
	CONSTRAINT FK2_Player FOREIGN KEY (positionID) REFERENCES Positions(positionID)
);
--End Creating the Player table

--Create the Plate_Appearance table
CREATE TABLE Plate_Appearance (
	--Columns for the Plate_Appearance table
	plate_appearance_id int identity, 
	GameID char(25) not null,
	pitcherID int not null, 
	batterID int not null,
	inning int not null,
	half_inning char(3) not null,
	plate_appearance int not null,
	runner_1b bit,
	runner_2b bit, 
	runner_3b bit,
	outs int not null, 
	home_score int not null,
	away_score int not null,
	--Constraints on the Plate_Appearance table
	CONSTRAINT PK_Plate_Appearance PRIMARY KEY (plate_appearance_id),
	CONSTRAINT FK1_Plate_Appearance FOREIGN KEY (GameID) REFERENCES Game(GameID),
	CONSTRAINT FK2_Plate_Appearance FOREIGN KEY (pitcherID) REFERENCES Player(playerID),
	CONSTRAINT FK3_Plate_Appearance FOREIGN KEY (batterID) REFERENCES Player(playerID)
);
--End Creating the Plate_Appearance table

--Create the Pitch_event table
CREATE TABLE Pitch_event (
	--Columns for the Pitch_event table
	pitchID int identity, 
	GameID char(25) not null,
	plate_appearance_id int not null,
	pitch_of_pa int not null, 
	pitch_type char(2) not null,
	result varchar(10) not null,
	outcome varchar(20),
	balls int not null,
	strikes int not null,
	play_description varchar(100),
	--Constraints on the Pitch_event table
	CONSTRAINT PK_Pitch_event PRIMARY KEY (pitchID),
	CONSTRAINT FK1_Pitch_event FOREIGN KEY (GameID) REFERENCES Game(GameID),
	CONSTRAINT FK2_Pitch_event FOREIGN KEY (plate_appearance_id) REFERENCES Plate_Appearance(plate_appearance_id)	
);
--End Creating the Pitch_event table

--Create the Pitch_type table
CREATE TABLE Pitch_type (
	--Columns for Pitch_type table
	Pitch_type char(2) not null, 
	Pitch_name char(20) not null,
	--Constraints on the Pitch_type table
	CONSTRAINT PK_Pitch_type PRIMARY KEY (Pitch_type)
);
--End Creating the Pitch_type table

--Create the Pitch table
CREATE TABLE Pitch (
	--Columns for the Pitch table
	pitchID int not null,
	pitch_type char(2) not null,
	release_point float not null, 
	velocity float not null,
	x_movement float not null,
	z_movement float not null,
	max_plate_dist float not null,
	max_plate_time float not null,
	next_pitchID int not null,
	--Constraints on the Pitch table
	CONSTRAINT PK_Pitch PRIMARY KEY (pitchID),
	CONSTRAINT FK1_Pitch FOREIGN KEY (pitchID) REFERENCES Pitch_event(pitchID),
	CONSTRAINT FK2_Pitch FOREIGN KEY (pitch_type) REFERENCES Pitch_type(Pitch_type)
);
--End Creating the Pitch table

/*
drop table pitch;
drop table pitch_type;
drop table Pitch_event;
drop table Plate_Appearance;
drop table Player;
drop table Positions;
drop table Game;
drop table Team;
drop table League;
*/

/*Removed GameEvent table as it was the same as Pitch_event table sans the GameID column. 
  Game, Pitch, and Plate_Appearance now reference each other without GameEvent table.*/
