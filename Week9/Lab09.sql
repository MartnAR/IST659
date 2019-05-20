--This is my regular tab! 

CREATE TABLE Lab9 (
	Lab9ID int identity primary key, 
	Lab9Text char(30) not null,
	EnteredBy char(30) not null
);

CREATE VIEW PartnerLab9 AS
	SELECT * FROM Lab9 WHERE EnteredBy = 'Partner';

CREATE PROCEDURE AddPartnerLab9 (@Lab9Text char(30)) AS
BEGIN
	INSERT INTO Lab9 (Lab9Text, EnteredBy) VALUES (@Lab9Text, 'Partner')
END;

CREATE VIEW MyLab9 AS
	SELECT * FROM Lab9 WHERE EnteredBy = 'Me';

CREATE PROCEDURE AddMyLab9 (@Lab9Text char(30)) AS
BEGIN
	INSERT INTO Lab9 (Lab9Text, EnteredBy) VALUES (@Lab9Text, 'Me')
END;

EXEC AddMyLab9 'First Value';
EXEC AddMyLab9 'Second Value';
EXEC AddMyLab9 'Third Value';
EXEC AddMyLab9 'Fourth Value';

--Create a new user
CREATE USER guestuser
	from login guestuser;

--Grant access to guestuser
GRANT SELECT ON PartnerLab9 to guestuser;

--Grant procedure access to guestuser
GRANT EXECUTE ON AddPartnerLab9 TO guestuser;

--Revoke SELECT and PROCEDURE accesses to guestuser
REVOKE SELECT ON PartnerLab9 TO guestuser;
REVOKE EXECUTE ON AddPartnerLab9 TO guestuser;

--Grant VIEW access to guestuser
CREATE VIEW MyLab9View AS
	SELECT * 
	FROM MyLab9;

GRANT SELECT ON MyLab9View to guestuser;