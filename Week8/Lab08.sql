-- FUNCTIONS

-- Declare a variable (we’ll talk about variables in a minute)
DECLARE @isThisNull VARCHAR(30) -- Starts out as NULL
SELECT @isThisNull, ISNULL(@isThisNull, 'Yep, it is null') -- See?
-- Set the variable to something other than NULL
SET @isThisNull = 'Nope. It is not NULL'
SELECT @isThisNull, ISNULL(@isThisNull, 'Yep, it is null') -- How about now?

CREATE FUNCTION dbo.AddTwoInts(@firstNumber int, @secondNumber int)
RETURNS int AS 
BEGIN
	-- Declare the variable to hold temporarily
	DECLARE @returnValue int -- data type matches RETURNS clause
	-- Perform the function task
	SET @returnValue = @firstNumber + @secondNumber
	--Return the value to the calling statement
	RETURN @returnValue
END;

-- Check that the function runs correctly
SELECT dbo.AddTwoInts(7, 11);

--Abstract routine calculation
-- Function to count the VidCasts made by a given user
CREATE FUNCTION dbo.vc_VidCastCount (@userID int)
RETURNS int AS -- COUNT() is an integer value, so return it as an int
BEGIN 
	DECLARE @returnValue int -- matches the function's return type
	SELECT @returnValue = COUNT(vc_UserID) FROM vc_VidCast
	WHERE vc_VidCast.vc_UserID = @userID
	RETURN @returnValue
END;

SELECT TOP 10 *, dbo.vc_VidCastCount(vc_UserID) as VidCastCount
FROM vc_User
ORDER BY VidCastCount DESC;

--Perform Data Lookups
-- Function to retrieve the vc_TagID for a given tag's text
CREATE FUNCTION dbo.vc_TagIDLookup (@tagText varchar(20))
RETURNS int AS
BEGIN
	DECLARE @returnValue int
	SELECT @returnValue = vc_TagID FROM vc_Tag
	WHERE TagText = @tagText
	RETURN @returnvalue
END;

SELECT dbo.vc_TagIDLookup('Music');
SELECT dbo.vc_TagIDLookup('Tunes');

-- VIEWS

-- Create a view to retrieve the top 10 vc_Users and VidCast counts
CREATE VIEW vc_MostProlificUsers AS
	SELECT TOP 10 *, dbo.vc_VidCastCount(vc_UserID) as VidCastCount
	FROM vc_User
	ORDER BY VidCastCount DESC;

SELECT * FROM vc_MostProlificUsers;

	-- STORED PROCEDURES

-- Create a procedure to update a vc_User's email address
-- The first parameter is the user name for the user to change
-- The second is the new email address
CREATE PROCEDURE vc_ChangeUserEmail(@userName varchar(20), @newEmail varchar(20)) AS
BEGIN
	UPDATE vc_User SET EmailAddress = @newEmail
	WHERE UserName = @userName
END; 

-- Run the procedure
EXEC vc_ChangeUserEmail 'tardy', 'kmstudent@syr.edu';
-- Check procedure
SELECT * FROM vc_User WHERE UserName = 'tardy';

-- @@identity
INSERT INTO vc_Tag (TagText) VALUES ('Cat Videos')
SELECT * FROM vc_Tag WHERE vc_TagID = @@identity;

/*Create a procedure that adds a row to the UserLogin table.
	This procedure is run when a user logs in and we need to 
	record who they are and from where they're logging in.*/
CREATE PROCEDURE vc_AddUserLogin (@userName varchar(20), @loginFrom varchar(50))
AS
BEGIN
	DECLARE @userID int
	SELECT @userID = vc_UserID FROM vc_User
	WHERE UserName = @userName
	INSERT INTO vc_UserLogin (vc_UserID, LoginLocation)
	VALUES (@userID, @loginFrom)
	RETURN @@identity
END; 

DECLARE @addedValue int
EXEC @addedValue = vc_AddUserLogin 'tardy', 'localhost'
SELECT vc_User.vc_UserID,
		vc_User.UserName,
		vc_UserLogin.UserLoginTimestamp,
		vc_UserLogin.LoginLocation
FROM vc_User
JOIN vc_UserLogin ON vc_User.vc_UserID = vc_UserLogin.vc_UserID
WHERE vc_UserLoginID = @addedValue;

--Part 2 - Putting it all together
/* Create a function to retrive a vc_UserID for a given user name */
CREATE FUNCTION dbo.vc_UserIDLookup (@userName varchar(20))
RETURNS int AS
BEGIN
	DECLARE @returnValue int
	SELECT @returnValue = vc_UserID FROM vc_User
	WHERE UserName = @userName
	RETURN @returnValue
END;

SELECT 'Trying the vc_UserIDLookup function.', dbo.vc_UserIDLookup('tardy');

/*Create a function that calculates the count of vc_VidCastIDs
  for a vc_TagID
*/
CREATE FUNCTION dbo.vc_TagVidCastCount (@tagID int)
RETURNS int AS
BEGIN 
	DECLARE @returnValue int 
	SELECT @returnValue = COUNT(vc_VidCastID) FROM vc_VidCastTagList
	WHERE vc_VidCastTagList.vc_TagID = @tagID
	RETURN @returnValue
END;

--Checks that the function is working correctly
SELECT vc_Tag.TagText, 
	   dbo.vc_TagVidCastCount(vc_Tag.vc_TagID) as VidCasts
FROM vc_Tag;

/*Sum the total number of minutes of actual duration for VidCasts
  with a Finished status given a vc_UserID as a parameter.*/
CREATE FUNCTION dbo.vc_VidCastDuration (@userID int)
RETURNS int AS
BEGIN
	DECLARE @returnValue int
	SELECT @returnValue = SUM(DATEDIFF(MINUTE, vc_VidCast.StartDateTime, vc_VidCast.EndDateTime))
	FROM vc_VidCast
	JOIN vc_Status ON vc_VidCast.vc_StatusID = vc_Status.vc_StatusID
	WHERE vc_VidCast.vc_UserID = @userID AND
		  vc_Status.StatusText = 'Finished'
	RETURN @returnvalue	  
END;

-- Test that the function runs correctly
SELECT *, dbo.vc_VidCastDuration(vc_UserID) as TotalMinutes
FROM vc_User
order by vc_UserID;

-- Coding your own views
CREATE VIEW vc_TagReport AS
	SELECT vc_Tag.TagText, 
		   dbo.vc_TagVidCastCount(vc_Tag.vc_TagID) as VidCasts
	FROM vc_Tag;

-- Check the view
SELECT * FROM vc_TagReport
ORDER BY VidCasts DESC;

-- Create a view to retrieve the top 10 vc_Users and VidCast counts
ALTER VIEW vc_MostProlificUsers AS
	SELECT TOP 10 *, 
			dbo.vc_VidCastCount(vc_UserID) as VidCastCount,
			dbo.vc_VidCastDuration(vc_UserID) as TotalMinutes
	FROM vc_User
	ORDER BY VidCastCount DESC;

-- Checking that everything worked fine
SELECT UserName, VidCastCount, TotalMinutes 
FROM vc_MostProlificUsers;

-- Coding your own stored procedures
/* Create a stored procedure to add a new Tag to the database
   Inputs: 
		@tagText: the text of the new tag
		@description: a brief description of the tag (nullable)
	Returns:
		@@identity with the value inserted
*/
CREATE PROCEDURE vc_AddTag(@tagText varchar(20), @description varchar(100)) AS
BEGIN
	DECLARE @tagID int
	SELECT @tagID = vc_TagID FROM vc_Tag
	WHERE TagText = @tagText
	INSERT INTO vc_Tag(TagText, TagDescription) VALUES (@tagText, @description)
	RETURN @@identity
END;

DECLARE @newTagID int
EXEC @newTagID = vc_AddTag 'SQL', 'Finally, a SQL Tag'
SELECT * FROM vc_Tag WHERE vc_TagID = @newTagID

/* Create a stored procedure that marks a VidCast as Finished
   Inputs: 
		@vidcastID: the int of the vc_VidCastID
		@statusID: the new status
	Returns:
		@@identity with the value inserted
*/
CREATE PROCEDURE vc_FinishVidCast (@vidcastID int) AS
BEGIN
	UPDATE vc_VidCast SET vc_StatusID = 3, EndDateTime = GetDate()  
	WHERE vc_VidCastID = @vidcastID
END;

DECLARE @newVC int
INSERT INTO vc_VidCast
(VidCastTitle, StartDateTime, ScheduleDurationMinutes, vc_UserID,
vc_StatusID)
VALUES (
'Finally done with sprocs'
, DATEADD(n, -45, GETDATE())
, 45
, (SELECT vc_UserID FROM vc_User WHERE UserName = 'tardy')
, (SELECT vc_StatusID FROM vc_Status WHERE StatusText='Started')
)

SET @newVC = @@identity
SELECT * FROM vc_VidCast WHERE vc_VidCastID = @newVC
EXEC vc_FinishVidCast @newVC
SELECT * FROM vc_VidCast WHERE vc_VidCastID = @newVC