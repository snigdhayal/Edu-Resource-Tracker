INSERT INTO State (StateID, StateName) 
VALUES (21, 'Telangana');


INSERT INTO StudentPopulation (PopulationID, StateID, TotalEnrollment, AgeGroup, Gender) 
VALUES (21, 21, 950, '11-15', 'M');


UPDATE WaterAvailability 
SET AvailabilityPercentage = 95.00 
WHERE StateID = 1;


UPDATE ElectricityAvailability 
SET AvailabilityPercentage = 88.00 
WHERE StateID = 2;


DELETE FROM SchoolFacility 
WHERE FacilityID = 20;


SELECT StateName FROM State 
WHERE StateID <= 5;


SELECT State.StateName, WaterAvailability.AvailabilityPercentage 
FROM State 
JOIN WaterAvailability ON State.StateID = WaterAvailability.StateID 
WHERE WaterAvailability.AvailabilityPercentage < 70;


SELECT State.StateName, SUM(StudentPopulation.TotalEnrollment) AS TotalStudents 
FROM StudentPopulation 
JOIN State ON StudentPopulation.StateID = State.StateID 
GROUP BY State.StateName;


SELECT AVG(AvailabilityPercentage) AS AvgElectricityAvailability 
FROM ElectricityAvailability;


SELECT MAX(AvailabilityPercentage) AS MaxInternetAvailability 
FROM InternetAvailability;


SELECT State.StateName, AVG(WaterAvailability.AvailabilityPercentage) AS AvgWater, 
AVG(ElectricityAvailability.AvailabilityPercentage) AS AvgElectricity 
FROM State 
JOIN WaterAvailability ON State.StateID = WaterAvailability.StateID 
JOIN ElectricityAvailability ON State.StateID = ElectricityAvailability.StateID 
GROUP BY State.StateName;


SELECT State.StateName, COUNT(StudentPopulation.StateID) AS NumStudentRecords 
FROM State 
JOIN StudentPopulation ON State.StateID = StudentPopulation.StateID 
GROUP BY State.StateName;
