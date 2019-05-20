/* Create tables */
CREATE TABLE Studio (
	--Columns for the Studio table
	StudioID int identity,
	StudioName char(50) not null
	--Constraints on the Studio Table
	CONSTRAINT PK_Studio PRIMARY KEY (StudioID)
);
--End Creating the Studio table

CREATE TABLE Film (
	--Columns for the Film table
	FilmID int identity,
	Title char(50) not null,
	StudioID int not null
	--Constraints on the Film Table
	CONSTRAINT PK_Film PRIMARY KEY (FilmID),
	CONSTRAINT FK1_Film FOREIGN KEY (StudioID) REFERENCES Studio(StudioID) 
);
--End Creating the Film table

CREATE TABLE Actor (
	--Columns for the Actor table
	ActorID int identity,
	FirstName char(30) not null,
	LastName char(30) not null,
	DOB datetime
	--Constraints on the Actor Table
	CONSTRAINT PK_Actor PRIMARY KEY (ActorID)
);
--End Creating the Actor table

CREATE TABLE FilmCast (
	--Columns for the FilmCast table
	FilmCastID int identity,
	FilmID int not null,
	ActorID int not null
	--Constraints on the FilmCast Table
	CONSTRAINT PK_FilmCast PRIMARY KEY (FilmCastID)
	CONSTRAINT FK1_FilmCast FOREIGN KEY (FilmID) REFERENCES Film(FilmID), 
	CONSTRAINT FK2_FilmCast FOREIGN KEY (ActorID) REFERENCES Actor(ActorID) 
);
--End Creating the FilmCast table

--The Movie script
SELECT
dbo_Film.Title, concat(dbo_Actor.FirstName, ' ', dbo_Actor.LastName) as ActorName
FROM dbo_FilmCast
INNER JOIN dbo_Film	ON dbo_Film.FilmID = dbo_FilmCast.FilmID
INNER JOIN dbo_Actor ON dbo_Actor.ActorID = dbo_FilmCast.ActorID;

