-- A last question that I find interesting is how the pitches were split between balls and strikes, and which pitch was more prone to being outside the strike zone.
SELECT playerID, CONCAT(first_name, ' ', last_name) AS player_name, TeamID, inning, Pitch_name, result, COUNT(pitch_of_pa) AS pitches_thrown
FROM Player
JOIN Plate_Appearance ON Player.playerID = Plate_Appearance.pitcherID
JOIN Pitch_event ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
JOIN Pitch_type ON Pitch_event.pitch_type = Pitch_type.Pitch_type
WHERE last_name = 'Urena'
GROUP BY playerID, first_name, last_name, TeamID, inning, Pitch_name, result
ORDER BY pitch_name, result, pitches_thrown;
/* The changeup was the likeliest pitch to be called a ball in this sample. The rest of the pitches were 50/50 meaning that Urena's command was probably off 
   during this start. */
