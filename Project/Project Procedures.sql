/* 
We want to create functions that are able to calculate the following data for pitchers: 
	1. Number of innings pitched
	2. Number of batters faced
	3. RA/9
	4. K/9
	5. BB/9
	6. H/9
	7. HR/9
	8. Opp BA/OBP/SLG
	9. Average pitch velocity for individual pitchers by pitch type
   10. Tunnel point size 
   11. Average release point for individual pitchers by pitch type

Views we want to make would be summaries of games and innings: number of batters faced, pitches thrown, hits allowed, runs scored, and the 
metrics that were calculated with the previous functions.
*/

--This function will calculate total innings pitched per pitcher
CREATE FUNCTION dbo.innings_pitched(@pitcher int)
RETURNS float AS 
BEGIN
	DECLARE @ip float
	SELECT @ip = sum(T.inning)
	FROM (SELECT GameID, pitcherID, max(inning) as inning 
		  FROM Plate_Appearance 
		  WHERE Plate_Appearance.pitcherID = @pitcher
		  GROUP BY GameID, pitcherID) as T
	RETURN @ip
END;

--The following function will calculate the number of batters faced per pitcher
CREATE FUNCTION dbo.batters_faced(@pitcher int)
RETURNS float AS 
BEGIN
	DECLARE @bf float
	SELECT @bf = sum(T.batters)
	FROM (SELECT GameID, pitcherID, count(batterID) as batters 
		  FROM Plate_Appearance 
		  WHERE Plate_Appearance.pitcherID = @pitcher
		  GROUP BY GameID, pitcherID) as T
	RETURN @bf
END;

--Calculates runs allowed per 9 innings (RA * 9/IP)
CREATE FUNCTION dbo.RA9(@pitcher int)
RETURNS float AS 
BEGIN
	DECLARE @ra9 float
	SELECT @ra9 = sum(T.runs) * 9 / sum(T.inning)
	FROM (SELECT GameID, pitcherID, max(inning) as inning, 
				 case when half_inning = 'top' then max(away_score) else max(home_score) end as runs 
		  FROM Plate_Appearance 
		  WHERE Plate_Appearance.pitcherID = @pitcher
		  GROUP BY GameID, pitcherID, half_inning) as T
	RETURN @ra9
END;

--Calculate rest of the per9 stats (K, BB, H, HR)
CREATE FUNCTION dbo.K9(@pitcher int)
RETURNS float AS 
BEGIN
	DECLARE @k9 float
	SELECT @k9 = sum(T.k) * 9 / sum(T.inning)
	FROM (SELECT pitch_event.GameID, pitcherID, max(inning) as inning, 
				 count(outcome) as k
		  FROM pitch_event
		  JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
		  WHERE --Plate_Appearance.pitcherID = @pitcher AND
				outcome = 'strikeout'
		  GROUP BY pitch_event.GameID, pitcherID, outcome) as T
	RETURN @k9
END;

CREATE FUNCTION dbo.BB9(@pitcher int)
RETURNS float AS 
BEGIN
	DECLARE @bb9 float
	SELECT @bb9 = sum(T.bb) * 9 / sum(T.inning)
	FROM (SELECT pitch_event.GameID, pitcherID, max(inning) as inning, 
				 count(outcome) as bb
		  FROM pitch_event
		  JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
		  WHERE Plate_Appearance.pitcherID = @pitcher AND
				outcome = 'walk'
		  GROUP BY pitch_event.GameID, pitcherID, outcome) as T
	RETURN @bb9
END;

CREATE FUNCTION dbo.H9(@pitcher int)
RETURNS float AS 
BEGIN
	DECLARE @h9 float
	SELECT @h9 = sum(T.h) * 9 / sum(T.inning)
	FROM (SELECT pitch_event.GameID, pitcherID, max(inning) as inning, 
				 count(outcome) as h
		  FROM pitch_event
		  JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
		  WHERE Plate_Appearance.pitcherID = @pitcher AND
				outcome in ('single', 'double', 'triple', 'home run')
		  GROUP BY pitch_event.GameID, pitcherID, outcome) as T
	RETURN @h9
END;

CREATE FUNCTION dbo.HR9(@pitcher int)
RETURNS float AS 
BEGIN
	DECLARE @hr9 float
	SELECT @hr9 = sum(T.hr) * 9 / sum(T.inning)
	FROM (SELECT pitch_event.GameID, pitcherID, max(inning) as inning, 
				 count(outcome) as hr
		  FROM pitch_event
		  JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
		  WHERE Plate_Appearance.pitcherID = @pitcher AND
				outcome = 'home run'
		  GROUP BY pitch_event.GameID, pitcherID, outcome) as T
	RETURN @hr9
END;
--End of per9 stats

--Opposing batter slash-line stats (Batting Average/On-Base Percentage/Slugging)
CREATE FUNCTION dbo.opp_ba(@pitcher int)
RETURNS decimal(4,3) AS 
BEGIN
	DECLARE @ba decimal(4,3)
	SELECT @ba = cast(S.h as float) / cast(S.ab as float)
	FROM (SELECT Plate_Appearance.pitcherID, count(pitch_event.outcome) as h, max(ab) as ab
		  FROM pitch_event
		  JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
		  JOIN (SELECT pitcherID, count(outcome) as ab
				FROM pitch_event
				JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
				WHERE Plate_Appearance.pitcherID = @pitcher AND
				      outcome in ('single', 'double', 'triple', 'home run', 'strikeout', 'ground out', 'fly out', 'force out', 'double play', 'pop out')
				GROUP BY pitcherID) as T on Plate_Appearance.pitcherID = T.pitcherID
		  WHERE Plate_Appearance.pitcherID = @pitcher AND
				outcome in ('single', 'double', 'triple', 'home run')
		  GROUP BY Plate_Appearance.pitcherID) as S 
	RETURN @ba
END;

CREATE FUNCTION dbo.opp_obp(@pitcher int)
RETURNS decimal(4,3) AS 
BEGIN
	DECLARE @obp decimal(4,3)
	SELECT @obp = cast(S.ob as float) / cast(S.pa as float)
	FROM (SELECT Plate_Appearance.pitcherID, count(pitch_event.outcome) as ob, max(pa) as pa
		  FROM pitch_event
		  JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
		  JOIN (SELECT pitcherID, count(distinct(Plate_appearance.plate_appearance_id)) as pa
				FROM pitch_event
				JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
				WHERE Plate_Appearance.pitcherID = @pitcher
				GROUP BY pitcherID) as T on Plate_Appearance.pitcherID = T.pitcherID
		  WHERE Plate_Appearance.pitcherID = @pitcher AND
		  		outcome in ('single', 'double', 'triple', 'home run', 'walk', 'hit by pitch')
		  GROUP BY Plate_Appearance.pitcherID) as S 
	RETURN @obp
END;

CREATE FUNCTION dbo.opp_slg(@pitcher int)
RETURNS decimal(4,3) AS 
BEGIN
	DECLARE @slg decimal(4,3)
	SELECT @slg = (cast(S.sgl as float) + cast(S.dbl as float) * 2 + cast(S.trp as float) * 3 + cast(S.hr as float) * 4) / cast(S.ab as float)
	FROM (SELECT Plate_Appearance.pitcherID, max(ab) as ab,
				 case when outcome = 'single' then count(outcome) else 0 end as sgl,
				 case when outcome = 'double' then count(outcome) else 0 end as dbl,
				 case when outcome = 'triple' then count(outcome) else 0 end as trp,
				 case when outcome = 'home run' then count(outcome) else 0 end as hr
		  FROM pitch_event
		  JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
		  JOIN (SELECT pitcherID, count(outcome) as ab
				FROM pitch_event
				JOIN Plate_Appearance ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
				WHERE Plate_Appearance.pitcherID = @pitcher AND
				      outcome in ('single', 'double', 'triple', 'home run', 'strikeout', 'ground out', 'fly out', 'force out', 'double play', 'pop out')
				GROUP BY pitcherID) as T on Plate_Appearance.pitcherID = T.pitcherID
		  WHERE Plate_Appearance.pitcherID = @pitcher AND
				outcome in ('single', 'double', 'triple', 'home run')
		  GROUP BY Plate_Appearance.pitcherID, outcome) as S 
	RETURN @slg
END;
--End of slash-line stats

--Create view detailing pitcher performance
CREATE VIEW PitcherPerformance AS (
	SELECT Player.last_name, Player.first_name, Player.TeamID, Player.season,
		   dbo.innings_pitched(Player.playerID) as IPs,
		   dbo.batters_faced(Player.playerID) as BF,
		   dbo.RA9(Player.playerID) as RA9,
		   dbo.K9(Player.playerID) as K9,
		   dbo.BB9(Player.playerID) as BB9,
		   dbo.H9(Player.playerID) as H9,
		   dbo.HR9(Player.playerID) as HR9, 
		   dbo.opp_ba(Player.playerID) as OppBA,
		   dbo.opp_obp(Player.playerID) as OppOBP,
		   dbo.opp_slg(Player.playerID) as OppSLG
	FROM Player
	WHERE positionID = 1
);

--Create view detailing pitch velocity and release points. Because we're just looking at averages, we don't need to create any extra functions
CREATE VIEW PitchPerformance AS (
	SELECT Player.last_name, Player.first_name, Player.season, Player.TeamID, Pitch.pitch_type,
		   COUNT(Pitch_event.pitchID) AS Pitch_count,
		   ROUND(AVG(pitch.velocity), 2) AS Pitch_velo,
		   ROUND(AVG(pitch.release_point), 2) AS Pitch_relpoint
	FROM Player
	JOIN Plate_Appearance ON Player.playerID = Plate_Appearance.pitcherID
	JOIN Pitch_event ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
	JOIN Pitch ON Pitch_event.pitchID = Pitch.pitchID
	GROUP BY last_name, first_name, season, teamID, Pitch.pitch_type
);

--Check PitcherPerformance View
SELECT * FROM PitcherPerformance ORDER BY last_name;

--Check PitchPerformance View
SELECT * FROM PitchPerformance ORDER BY last_name, Pitch_count;
