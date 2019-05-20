/*We want to know how many pitches, grouped by pitch type, did Jose Urena throw in the first inning against the Cubs and 
  what his average velocity, release point, and movement was. */

-- Let's first check how many pitches he threw
SELECT playerID, concat(first_name, ' ', last_name) as player_name, TeamID, inning, COUNT(pitch_of_pa) as pitches_thrown
FROM Player
JOIN Plate_Appearance ON Player.playerID = Plate_Appearance.pitcherID
JOIN Pitch_event ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
WHERE last_name = 'Urena'
GROUP BY playerID, first_name, last_name, TeamID, inning;
-- Jose Urena threw 36 pitches in the first inning
