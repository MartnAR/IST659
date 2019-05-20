-- How many pitches did he throw by pitch type?
SELECT playerID, concat(first_name, ' ', last_name) as player_name, TeamID, inning, Pitch_name, COUNT(pitch_of_pa) as pitches_thrown
FROM Player
JOIN Plate_Appearance ON Player.playerID = Plate_Appearance.pitcherID
JOIN Pitch_event ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
JOIN Pitch_type ON Pitch_event.pitch_type = Pitch_type.Pitch_type
WHERE last_name = 'Urena'
GROUP BY playerID, first_name, last_name, TeamID, inning, Pitch_name
ORDER BY pitches_thrown;
--Jose Urena threw 5 sliders, 7 changeups, 10 two-seam fastballs, and 14 four-seam fastballs.
