-- This is my guestuser tab! 

USE IST659_Labs;

SELECT * FROM PartnerLab9;

--Execute Procedure
EXEC AddPartnerLab9 'First Value';
EXEC AddPartnerLab9 'Second Value';
EXEC AddPartnerLab9 'Third Value';
EXEC AddPartnerLab9 'Fourth Value';

--Rerun select
SELECT * FROM PartnerLab9;

--Delete statement
DELETE Lab9 WHERE EnteredBy = 'Partner';