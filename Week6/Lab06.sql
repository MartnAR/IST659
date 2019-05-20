-- Adding a row to the vc_Status table 
INSERT INTO vc_Status
VALUES ('Scheduled');

-- The following line shows all of the rows in vc_Status
SELECT * FROM vc_Status;

-- Adding three more rows to the vc_Status table
INSERT INTO vc_Status (StatusText)
VALUES ('Started'), ('Finished'), ('On time');

SELECT * FROM vc_User WHERE UserName = 'SaulHudson';
SELECT * FROM vc_Status WHERE StatusText = 'Finished';

-- Adding a vidcast record to the VidCast Table
INSERT INTO vc_VidCast 
	(VidCastTitle, StartDateTime, EndDateTime, ScheduledDurationMinutes,
	RecordingURL, vc_UserID, vc_StatusID)
VALUES
	('December Snow', '3/1/2018 14:00', '3/1/2018 14:30', 30, 
	'/XVF1234', 2, 5);

-- Read all rows from vc_VidCast
SELECT * FROM vc_VidCast;

-- Selecting the data from Saul's first VidCast
SELECT vc_User.UserName, 
	   vc_User.EmailAddress,
	   vc_VidCast.VidCastTitle,
	   vc_VidCast.StartDateTime,
	   vc_VidCast.EndDateTime,
	   vc_VidCast.ScheduledDurationMinutes/60.0 as ScheduledHours,
	   vc_Status.StatusText
FROM vc_VidCast
JOIN vc_User ON vc_VidCast.vc_UserID = vc_User.vc_UserID
JOIN vc_Status ON vc_VidCast.vc_StatusID = vc_Status.vc_StatusID
WHERE vc_User.UserName = 'SaulHudson'
ORDER BY vc_VidCast.StartDateTime;
 
-- Correcting a User's UserRegisteredDate
UPDATE vc_User SET UserRegisteredDate = '3/1/2018' WHERE UserName = 'SaulHudson';

SELECT * FROM vc_User WHERE UserName = 'SaulHudson';

-- See what rows we have in status
SELECT * FROM vc_Status;

-- Delete the On time status
DELETE vc_Status WHERE StatusText = 'On time';

-- See the effect
SELECT * FROM vc_Status;

-- Inserting info into the Tags table
INSERT INTO vc_Tag
	(TagText, TagDescription)
VALUES
	('Personal', 'About people'),
	('Professional', 'Business, business, business'),
	('Sports', 'All manner of sports'),
	('Music', 'Music analysis, news, and thoughts'),
	('Games', 'Live streaming our favorite games');

-- See what was inserted into Tags table
SELECT * FROM vc_Tag;

-- New Users 
INSERT INTO vc_User
	(UserName, EmailAddress, UserDescription)
VALUES
	('TheDoctor', 'tomBaker@nodomain.xyz', 'The definite article'),
	('HairCut', 'S.todd@nodomain.xyz', 'Fleet Street barber shop'),
	('DnDGal', 'dnd@nodomain.xyz', 'NULL');
 
SELECT * FROM vc_User;

-- Inserting User Tag List info
INSERT INTO vc_UserTagList (vc_UserID, vc_TagID)
VALUES
	((SELECT vc_UserID FROM vc_User WHERE UserName='DnDGal'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Sports')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='DnDGal'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Professional')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='RDwight'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Professional')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='SaulHudson'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Sports')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='Gordon'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Personal')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='DnDGal'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Personal')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='Gordon'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Games')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='HairCut'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Professional')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='TheDoctor'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Music')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='DnDGal'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Games')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='SaulHudson'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Games')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='Gordon'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Professional')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='HairCut'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText='Music')),
	((SELECT vc_UserID FROM vc_User WHERE UserName='TheDoctor'),
	(SELECT vc_TagID FROM vc_Tag WHERE TagText = 'Personal'));

-- Viewing the User Tag List
SELECT * FROM vc_UserTagList;

-- See the User Tag Report
SELECT u.UserName, u.EmailAddress, t.TagText
FROM vc_User u
JOIN vc_UserTagList ut ON u.vc_UserID = ut.vc_UserID
JOIN vc_Tag t ON ut.vc_TagID = t.vc_TagID
ORDER BY u.UserName, t.TagText;