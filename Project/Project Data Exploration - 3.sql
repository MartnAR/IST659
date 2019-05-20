-- Now let's check the average release point, velocity, and movement for these pitch types
SELECT playerID, CONCAT(first_name, ' ', last_name) AS player_name, TeamID, inning, Pitch_name, COUNT(pitch_of_pa) AS pitches_thrown,
	   ROUND(AVG(release_point), 1) AS avg_release_point, 
	   ROUND(AVG(velocity), 1) AS avg_velo, 
	   ROUND(AVG(x_movement), 2) AS avg_x_movement, 
	   ROUND(AVG(z_movement), 2) AS avg_z_movement
FROM Player
JOIN Plate_Appearance ON Player.playerID = Plate_Appearance.pitcherID
JOIN Pitch_event ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
JOIN Pitch_type ON Pitch_event.pitch_type = Pitch_type.Pitch_type
JOIN Pitch ON Pitch_event.pitchID = Pitch.pitchID
WHERE last_name = 'Urena'
GROUP BY playerID, first_name, last_name, TeamID, inning, Pitch_name
ORDER BY pitches_thrown;
/* 
Things that pop out: 
1. The changeup and fastballs have similar release points but there is a notorious drop in arm slot when he goes to the slider.
2. Urena's two-seamer is a bit faster than his four-seamer. The difference in movement is also negligible, which might indicate that it is the same pitch.
3. The changeup has the most x_movement (vertical drop) than the other pitches.
4. The other three pitches have more horizontal movement along the pitching plane, meaning that they have more of a cut movement. 
*/
