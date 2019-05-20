#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(shinyjs)
library(dplyr)
library(RODBC)
library(lubridate)

con <- odbcDriverConnect('driver={SQL Server};server=DESKTOP-EU58VDQ\\SQLEXPRESS;database=IST659_Project;trusted_connection=true')
teams <- c('ARI', 'ATL', 'BAL', 'BOS', 'CHN', 'CHA', 'CIN', 'CLE', 'COL', 'DET', 
           'HOU', 'KCA', 'LAA', 'LAN', 'MIA', 'MIL', 'MIN', 'NYA', 'NYN', 'OAK', 
           'PHI', 'PIT', 'SDN', 'SEA', 'SFN', 'SLN', 'TBA', 'TEX', 'TOR', 'WAS')
pitches <- c('FA', 'FT', 'CH', 'CU', 'SL', 'SI', 'KN', 'FS')
pitch_result <- c('ball', 'strike', 'single', 'double', 'triple', 'home run', 'error', 'hit by pitch', 'walk', 'foul',
                  'strikeout', 'fly out', 'ground out', 'double play', "fielder's choice")


# Define UI for application that draws a histogram
ui <- function(request){
  fluidPage(
    useShinyjs(),
    headerPanel('IST 659 Project'),
    tabsetPanel(type = 'tabs', selected = 'Game',
                tabPanel(
                  'Game',
                  sidebarPanel(
                    style = 'height: 375px; color = grey50;',
                    div(
                      id = 'form',
                      dateInput(
                        'gamedate', 'Game Date', start = '2018-03-29', min = '2018-03-29', format = 'yyyy-mm-dd'
                      ),
                      selectInput(
                        'hometeam', 'Home Team', choices = teams, selected = 'LAN'
                      ),
                      selectInput(
                        'awayteam', 'Away Team', choices = teams, selected = 'CHN'
                      ), 
                      selectInput(
                        'doubleheader', 'Double Header', choices = c('Yes', 'No'), selected = 'No'
                      ),
                      box(
                        actionButton('game_commit', 'Commit', title = 'Commit Game Data to Table', width = '150px', 
                                     icon = icon('play-circle')),
                        align = 'center', status = 'primary', width = NULL, height = 25
                      )
                    )
                  ),
                  tableOutput(
                    'game_data'
                  )
                ),
                tabPanel(
                  'Player',
                  sidebarPanel(
                    style = 'height: 650px; color = grey50;',
                    div(
                      id = 'form2',
                      textInput(
                        'firstname', 'First Name'
                      ),
                      textInput(
                        'lastname', 'Last Name'
                      ),
                      dateInput(
                        'birthdate', 'Birth Date', start = '1900-01-01', format = 'yyyy-mm-dd'
                      ),
                      numericInput(
                        'playerheight', 'Height', value = 72, min = 60, max = 84, step = 1
                      ),
                      numericInput(
                        'playerweight', 'Weight', value = 200, min = 150, max = 280, step = 1
                      ),
                      selectInput(
                        'playerteam', 'TeamID', choices = teams
                      ),
                      numericInput(
                        'playerseason', 'Season', value = 2018, min = 1950, max = 2018, step = 1
                      ),
                      selectInput(
                        'position', 'Position', choices = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
                      ),
                      box(
                        actionButton('player_commit', 'Commit', title = 'Commit Player Data to Table', width = '150px', 
                                     icon = icon('play-circle')),
                        align = 'center', status = 'primary', width = NULL, height = 25
                      )
                    )
                  ),
                  tableOutput(
                    'player_data'
                  )
                ),
                tabPanel(
                  'Plate Appearance',
                  sidebarPanel(
                    style = 'height: 900px; color = grey50;',
                    div(
                      id = 'form3',
                      uiOutput(("pitcher"), width = NULL, height = 75, background = "blue", solidheader = FALSE, status = "primary"),
                      uiOutput(("batter"), width = NULL, height = 75, background = "blue", solidheader = FALSE, status = "primary"),
                      numericInput('inning', 'Inning', min = 1, max = 30, step = 1, value = 1),
                      selectInput('halfinning', 'Half Inning', choices = c('top', 'bottom')),
                      numericInput('pa', 'Plate Appearance', min = 1, max = 10, step = 1, value = 1),
                      selectInput('runner1b', 'Runner 1b', choices = c(0, 1)),
                      selectInput('runner2b', 'Runner 2b', choices = c(0, 1)),
                      selectInput('runner3b', 'Runner 3b', choices = c(0, 1)),
                      selectInput('outs', 'Outs', choices = c(0, 1, 2)),
                      numericInput('homeruns', 'Home Score', min = 1, max = 100, step = 1, value = 1),
                      numericInput('awayruns', 'Away Score', min = 1, max = 100, step = 1, value = 1),
                      box(
                        actionButton('pa_commit', 'Commit', title = 'Commit Plate Appearance Data to Table', width = '150px', 
                                     icon = icon('play-circle')),
                        align = 'center', status = 'primary', width = NULL, height = 25
                      )
                    )
                  ),
                  tableOutput(
                    'plate_appearance_data'
                  )
                ),
                tabPanel(
                  'Pitches', 
                  sidebarPanel(
                    style = 'height: 750px; color = grey50',
                    div(
                      id = 'form4',
                      selectInput('pitch_type', 'Pitch Type', choices = pitches),
                      numericInput('velocity', 'Pitch Speed', min = 60, max = 120, step = 0.1, value = 90),
                      numericInput('pa_id', 'Plate Appearnce ID', min = 1, value = 1, step = 1),
                      numericInput('pitch_of_pa', 'Pitch of PA', min = 1, value = 1, step = 1),
                      selectInput('result', 'Pitch Result', choices = pitch_result),
                      textInput('outcome', 'Pitch Outcome'),
                      selectInput('balls', 'Balls', choices = c(0, 1, 2, 3, 4)),
                      selectInput('strikes', 'Strikes', choices = c(0, 1, 2, 3)),
                      textInput('comment', 'Play Description'), 
                      box(
                        actionButton('pitch_commit', 'Commit', title = 'Commit Pitch Data to Table', width = '150px', 
                                     icon = icon('play-circle')),
                        align = 'center', status = 'primary', width = NULL, height = 25
                      )
                    )
                  ),
                  tableOutput(
                    'pitch_data'
                  )
                )
              )
  )
}
   
# Define server logic required to draw a histogram
server <- function(input, output, session) {
   
   output$game_data <- renderTable({
      # generate bins based on input$bins from ui.R
      pt1 <- sqlQuery(con, "SELECT * FROM Game ORDER BY GameNumber")
      pt1$Game_Date <- as.character(pt1$Game_Date)
      
      GameNumber <- c(14, 15, 16, 17, 18)
      GameID <- c('2018_03_30_PIT_DET_0', '2018_03_30_WAS_CIN_0', '2018_03_30_NYA_TOR_0', '2018_03_30_CHN_MIA_0', '2018_03_30_BOS_TBA_0')
      Game_Date <- c('2018-03-30', '2018-03-30', '2018-03-30', '2018-03-30', '2018-03-30')
      HomeTeamID <- c('DET', 'CIN', 'TOR', 'MIA', 'TBA')
      AwayTeamID <- c('PIT', 'WAS', 'NYA', 'CHN', 'BOS')
      
      Games <- data.frame(GameNumber, GameID, Game_Date, HomeTeamID, AwayTeamID, stringsAsFactors = FALSE)
      games_final <- pt1 %>% bind_rows(Games)
      games_final
      
   })
   
   output$player_data <- renderTable({
     pt2 <- sqlQuery(con, "SELECT * FROM Player ORDER BY playerID")
     pt2$birth_date <- as.character(pt2$birth_date)
     
     playerID <- c(19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36)
     first_name <- c('Brandon', 'Yoenis', 'Jay', 'Asdrubal', 'Todd', 'Adrian', 'Kevin', 'Noah', 'Amed',
                     'Dexter', 'Tommy', 'Matt', 'Marcell', 'Jose', 'Yadier', 'Paul', 'Kolten', 'Carlos')
     last_name <- c('Nimmo', 'Cespedes', 'Bruce', 'Cabrera', 'Frazier', 'Gonzalez', 'Plawecki', 'Syndergaard', 'Rosario',
                    'Fowler', 'Pham', 'Carpenter', 'Ozuna', 'Martinez', 'Molina', 'DeJong', 'Wong', 'Martinez')
     birth_date <- c('1993-03-27', '1985-10-18', '1987-04-03', '1985-11-13', '1986-02-12', '1982-05-08', '1991-02-26', '1992-08-29', '1995-11-20', 
                     '1986-03-22', '1988-03-08', '1985-11-26', '1990-11-12', '1988-07-25', '1982-07-13', '1993-08-02', '1990-10-10', '1991-09-21')
     height_in <- c(75, 70, 75, 72, 75, 74, 74, 78, 74, 77, 73, 75, 73, 78, 71, 73, 69, 72)
     weight_lbs <- c(207, 220, 225, 205, 220, 215, 210, 240, 189, 195, 210, 205, 225, 215, 205, 195, 185, 190)
     TeamID <- c('NYN', 'NYN', 'NYN', 'NYN', 'NYN', 'NYN', 'NYN', 'NYN', 'NYN', 'SLN', 'SLN', 'SLN', 'SLN', 'SLN', 'SLN', 'SLN', 'SLN', 'SLN')
     season <- c(2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018, 2018)
     positionID <- c(8, 7, 9, 4, 5, 3, 2, 1, 6, 
                     9, 8, 5, 7, 3, 2, 6, 4, 1)
     
     Player <- data.frame(playerID, first_name, last_name, birth_date, height_in, weight_lbs, TeamID, season, positionID)
     Player$playerID <- as.integer(Player$playerID)
     Player$height_in <- as.integer(Player$height_in)
     Player$weight_lbs <- as.integer(Player$weight_lbs)
     Player$season <- as.integer(Player$season)
     Player$positionID <- as.integer(Player$positionID)
     player_final <- pt2 %>% bind_rows(Player)
     player_final
   })
   
   output$pitcher <- renderUI(
     {
       pitcher <- sqlQuery(con, "SELECT concat(first_name, ' ', last_name) as pitcher 
                                 FROM Player
                                 WHERE positionID = 1")
       
       selectInput('pitcher', 'Pitcher', choices = pitcher$pitcher)
     }
   )

   output$batter <- renderUI(
     {
       batter <- sqlQuery(con, "SELECT concat(first_name, ' ', last_name) as batter 
                           FROM Player
                           WHERE positionID != 1")
       
       selectInput('batter', 'Batter', choices = batter$batter)
     }
    )
   
   output$plate_appearance_data <- renderTable({
     pt3 <- sqlQuery(con, 'SELECT plate_appearance_id, GameID, pitcherID, batterID, inning, half_inning, plate_appearance, outs,
                                  home_score, away_score
                           FROM Plate_Appearance ORDER BY plate_appearance_id')
     
     plate_appearance_id <- c(16, 17, 18)
     GameID <- c('2018_03_29_NYN_SLN_0', '2018_03_29_NYN_SLN_0', '2018_03_29_NYN_SLN_0')
     pitcherID <- c(27, 27, 27)
     batterID <- c(28, 29, 30)
     inning <- c(1, 1, 1)
     half_inning <- c('top', 'top', 'top')
     plate_appearance <- c(1, 2, 3)
     outs <- c(1, 2, 3)
     home_score <- c(0, 0, 0)
     away_score <- c(0, 0, 0)
     
     plate_appearance <- data.frame(plate_appearance_id, GameID, pitcherID, batterID, inning, half_inning, plate_appearance, 
                                    outs, home_score, away_score)
     pa_final <- pt3 %>% bind_rows(plate_appearance)
     pa_final
   })
   
   output$pitch_data <- renderTable(
     {
       pt4 <- sqlQuery(con, "select pitch.pitchID, pitch.pitch_type, velocity, GameID, plate_appearance_id, pitch_of_pa, 
                                    result, outcome, balls, strikes, play_description 
                             from Pitch
                             left join Pitch_event on pitch.pitchID = Pitch_event.pitchID")
       
       pitchID <- c(37, 38, 39, 40, 41, 42, 43)
       pitch_type <- c('FA', 'SI', 'SI', 'SI', 'SI', 'SI', 'CH')
       velocity <- c(99.4, 99.1, 98.7, 99.0, 98.8, 98.7, 91.5)
       GameID <- c('2018_03_29_NYN_SLN_0', '2018_03_29_NYN_SLN_0', '2018_03_29_NYN_SLN_0', '2018_03_29_NYN_SLN_0', 
                   '2018_03_29_NYN_SLN_0', '2018_03_29_NYN_SLN_0', '2018_03_29_NYN_SLN_0')
       plate_appearance_id <- c(10, 10, 10, 11, 12, 12, 12)
       pitch_of_pa <- c(1, 2, 3, 1, 1, 2, 3)
       result <- c('Strike', 'Strike', 'Strike', 'Strike', 'Ball', 'Strike', 'Strike')
       outcome <- c('Foul', 'Foul', 'Strikeout', 'Ground out', 'Ball', 'Strike', 'Ground out')
       balls <- c(0, 0, 0, 0, 1, 1, 1)
       strikes <- c(1, 2, 3, 0, 0, 1, 1)
       play_description <- c(NA, NA, 'Dexter Fowler strikes out swinging.', 'Tommy Pham grounds out.', NA, NA, 'Matt Carpenter grounds out.')
       
       pitch_df <- data.frame(pitchID, pitch_type, velocity, GameID, plate_appearance_id, pitch_of_pa, result, outcome, balls, strikes,
                              play_description)
       pitch_final <- pt4 %>% bind_rows(pitch_df)
       pitch_final %>% filter(pitchID > 25)
     }
   )
}

# Run the application 
shinyApp(ui = ui, server = server)

