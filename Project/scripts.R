library(RODBC)
con <- odbcDriverConnect('driver={SQL Server};server=DESKTOP-EU58VDQ\\SQLEXPRESS;database=IST659_Project;trusted_connection=true')
pt1 <- sqlQuery(con, "SELECT playerID, concat(first_name, ' ', last_name) as player_name, TeamID, inning, COUNT(pitch_of_pa) as pitches_thrown
                      FROM Player
                      JOIN Plate_Appearance ON Player.playerID = Plate_Appearance.pitcherID
                      JOIN Pitch_event ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
                      WHERE last_name = 'Urena'
                      GROUP BY playerID, first_name, last_name, TeamID, inning")

pt2 <- sqlQuery(con, "SELECT playerID, concat(first_name, ' ', last_name) as player_name, TeamID, inning, Pitch_name, COUNT(pitch_of_pa) as pitches_thrown
                      FROM Player
                      JOIN Plate_Appearance ON Player.playerID = Plate_Appearance.pitcherID
                      JOIN Pitch_event ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
                      JOIN Pitch_type ON Pitch_event.pitch_type = Pitch_type.Pitch_type
                      WHERE last_name = 'Urena'
                      GROUP BY playerID, first_name, last_name, TeamID, inning, Pitch_name
                      ORDER BY pitches_thrown")

pt3 <- sqlQuery(con, "SELECT playerID, CONCAT(first_name, ' ', last_name) AS player_name, TeamID, inning, Pitch_name, COUNT(pitch_of_pa) AS pitches_thrown,
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
                      ORDER BY pitches_thrown")

pt4 <- sqlQuery(con, "SELECT playerID, CONCAT(first_name, ' ', last_name) AS player_name, TeamID, inning, Pitch_name, result, COUNT(pitch_of_pa) AS pitches_thrown
                      FROM Player
                      JOIN Plate_Appearance ON Player.playerID = Plate_Appearance.pitcherID
                      JOIN Pitch_event ON Plate_Appearance.plate_appearance_id = Pitch_event.plate_appearance_id
                      JOIN Pitch_type ON Pitch_event.pitch_type = Pitch_type.Pitch_type
                      WHERE last_name = 'Urena'
                      GROUP BY playerID, first_name, last_name, TeamID, inning, Pitch_name, result
                      ORDER BY pitch_name, result, pitches_thrown")
