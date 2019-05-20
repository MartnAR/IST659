-- Part 1: Exploratory Data Analysis
SELECT vc_User.UserName,
	   vc_User.EmailAddress,
	   vc_VidCast.vc_VidCastID
FROM vc_VidCast
JOIN vc_User ON vc_User.vc_UserID = vc_VidCast.vc_UserID
ORDER BY vc_User.UserName;

--Check Users who have not produced a video
SELECT * FROM vc_User
WHERE vc_UserID NOT IN (SELECT vc_UserID FROM vc_VidCast);

-- Be sure to include all vc_User records
SELECT vc_User.UserName,
	   vc_User.EmailAddress,
	   vc_VidCast.vc_VidCastID
FROM vc_VidCast
RIGHT JOIN vc_User ON vc_User.vc_UserID = vc_VidCast.vc_UserID
ORDER BY vc_User.UserName;

--High-level doscriptive statistics for vc_VidCast
SELECT COUNT(vc_VidCastID) as NumberOfVidCasts,
	   SUM(ScheduleDurationMinutes) as TotalScheduleMinutes,
	   MIN(ScheduleDurationMinutes) as MinScheduleMinutes,
	   AVG(ScheduleDurationMinutes) as AvgScheduleMinutes,
	   MAX(ScheduleDurationMinutes) as MaxScheduleMinutes
FROM vc_VidCast;

--Right join to account for all users on the site
SELECT vc_User.UserName,
	   vc_User.EmailAddress, 
	   COUNT(vc_VidCast.vc_VidCastID) CountOfVidCasts
FROM vc_VidCast
RIGHT JOIN vc_User ON vc_User.vc_UserID = vc_VidCast.vc_UserID
GROUP BY vc_User.UserName,
		 vc_User.EmailAddress
ORDER BY CountOfVidCasts DESC, vc_User.UserName;

--Our least prolific users
SELECT vc_User.UserName,
	   vc_User.EmailAddress, 
	   COUNT(vc_VidCast.vc_VidCastID) AS CountOfVidCasts
FROM vc_VidCast
RIGHT JOIN vc_User ON vc_User.vc_UserID = vc_VidCast.vc_UserID
GROUP BY vc_User.UserName,
		 vc_User.EmailAddress
HAVING COUNT(vc_VidCast.vc_VidCastID) < 10
ORDER BY CountOfVidCasts DESC, vc_User.UserName;

-- Difference between StartDateTime and EndDateTime
SELECT vc_User.UserName,
	   vc_User.EmailAddress, 
	   SUM(DateDiff(n, StartDateTime, EndDateTime)) AS SumActualDurationMinutes
FROM vc_VidCast
JOIN vc_User ON vc_User.vc_UserID = vc_VidCast.vc_UserID
JOIN vc_Status ON vc_Status.vc_StatusID = vc_VidCast.vc_StatusID
WHERE vc_Status.StatusText = 'Finished'
GROUP BY vc_User.UserName,
		 vc_User.EmailAddress
ORDER BY vc_User.UserName;

-- Part 2: Putting it all together
SELECT vc_User.UserName,
	   vc_User.EmailAddress, 
	   SUM(DateDiff(n, StartDateTime, EndDateTime)) AS SumActualDurationMinutes,
	   COUNT(vc_VidCast.vc_VidCastID) AS CountOfVidCasts,
	   MIN(DateDiff(n, StartDateTime, EndDateTime)) AS MinActualDurationMinutes,
	   AVG(DateDiff(n, StartDateTime, EndDateTime)) AS AvgActualDurationMinutess,
	   MAX(DateDiff(n, StartDateTime, EndDateTime)) AS MaxActualDurationMinutes
FROM vc_VidCast
JOIN vc_User ON vc_User.vc_UserID = vc_VidCast.vc_UserID
JOIN vc_Status ON vc_Status.vc_StatusID = vc_VidCast.vc_StatusID
WHERE vc_Status.StatusText = 'Finished'
GROUP BY vc_User.UserName,
		 vc_User.EmailAddress
ORDER BY CountOfVidCasts DESC, vc_User.UserName;
