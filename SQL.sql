CREATE TABLE State (
    StateID INT AUTO_INCREMENT PRIMARY KEY,
    StateName VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE StudentPopulation (
    PopulationID INT AUTO_INCREMENT PRIMARY KEY,
    StateID INT,
    TotalEnrollment INT,
    AgeGroup VARCHAR(20),
    Gender CHAR(1),
    FOREIGN KEY (StateID) REFERENCES State(StateID)
);

CREATE TABLE WaterAvailability (
    WaterID INT AUTO_INCREMENT PRIMARY KEY,
    StateID INT,
    AvailabilityPercentage DECIMAL(5,2),
    FOREIGN KEY (StateID) REFERENCES State(StateID)
);

CREATE TABLE ElectricityAvailability (
    ElectricityID INT AUTO_INCREMENT PRIMARY KEY,
    StateID INT,
    AvailabilityPercentage DECIMAL(5,2),
    FOREIGN KEY (StateID) REFERENCES State(StateID)
);

CREATE TABLE InternetFacility (
    InternetID INT AUTO_INCREMENT PRIMARY KEY,
    StateID INT,
    AvailabilityPercentage DECIMAL(5,2),
    FOREIGN KEY (StateID) REFERENCES State(StateID)
);

CREATE TABLE MedicalCheckupFacility (
    MedicalID INT AUTO_INCREMENT PRIMARY KEY,
    StateID INT,
    AvailabilityPercentage DECIMAL(5,2),
    FOREIGN KEY (StateID) REFERENCES State(StateID)
);

CREATE TABLE ComputerAvailability (
    ComputerID INT AUTO_INCREMENT PRIMARY KEY,
    StateID INT,
    AvailabilityPercentage DECIMAL(5,2),
    FOREIGN KEY (StateID) REFERENCES State(StateID)
);

-- Create Library Facility table
CREATE TABLE LibraryFacility (
    LibraryID INT AUTO_INCREMENT PRIMARY KEY,
    StateID INT,
    AvailabilityPercentage DECIMAL(5,2),
    FOREIGN KEY (StateID) REFERENCES State(StateID)
);

INSERT INTO State (StateID, StateName) VALUES
(1, 'Andaman and Nicobar Islands'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli'),
(9, 'Daman and Diu'),
(10, 'Delhi');

INSERT INTO StudentPopulation (PopulationID, StateID, TotalEnrollment, AgeGroup, Gender) VALUES
(1, 1, 10000, '6-10', 'M'),
(2, 2, 15000, '11-15', 'F'),
(3, 3, 12000, '6-10', 'M'),
(4, 4, 18000, '11-15', 'F'),
(5, 5, 14000, '6-10', 'M'),
(6, 6, 16000, '11-15', 'F'),
(7, 7, 11000, '6-10', 'M'),
(8, 8, 17000, '11-15', 'F'),
(9, 9, 13000, '6-10', 'M'),
(10, 10, 19000, '11-15', 'F');

INSERT INTO WaterAvailability (WaterID, StateID, AvailabilityPercentage) VALUES
(1, 1, 98.5),
(2, 2, 99.0),
(3, 3, 97.5),
(4, 4, 96.0),
(5, 5, 95.5),
(6, 6, 94.5),
(7, 7, 93.0),
(8, 8, 92.5),
(9, 9, 91.5),
(10, 10, 90.0);


INSERT INTO ElectricityAvailability (ElectricityID, StateID, AvailabilityPercentage) VALUES
(1, 1, 95.0),
(2, 2, 96.0),
(3, 3, 97.0),
(4, 4, 98.0),
(5, 5, 99.0),
(6, 6, 94.0),
(7, 7, 93.0),
(8, 8, 92.0),
(9, 9, 91.0),
(10, 10, 90.0);


INSERT INTO InternetFacility (InternetID, StateID, AvailabilityPercentage) VALUES
(1, 1, 85.0),
(2, 2, 86.0),
(3, 3, 87.0),
(4, 4, 88.0),
(5, 5, 89.0),
(6, 6, 84.0),
(7, 7, 83.0),
(8, 8, 82.0),
(9, 9, 81.0),
(10, 10, 80.0);

INSERT INTO MedicalCheckupFacility (MedicalID, StateID, AvailabilityPercentage) VALUES
(1, 1, 75.0),
(2, 2, 76.0),
(3, 3, 77.0),
(4, 4, 78.0),
(5, 5, 79.0),
(6, 6, 74.0),
(7, 7, 73.0),
(8, 8, 72.0),
(9, 9, 71.0),
(10, 10, 70.0);

INSERT INTO ComputerAvailability (ComputerID, StateID, AvailabilityPercentage) VALUES
(1, 1, 88.0),
(2, 2, 89.0),
(3, 3, 87.0),
(4, 4, 86.0),
(5, 5, 85.0),
(6, 6, 84.0),
(7, 7, 83.0),
(8, 8, 82.0),
(9, 9, 81.0),
(10, 10, 80.0);

INSERT INTO LibraryFacility (LibraryID, StateID, AvailabilityPercentage) VALUES
(1, 1, 90.0),
(2, 2, 91.0),
(3, 3, 89.0),
(4, 4, 88.0),
(5, 5, 87.0),
(6, 6, 86.0),
(7, 7, 85.0),
(8, 8, 84.0),
(9, 9, 83.0),
(10, 10, 82.0);

Select * from State;
Select * from StudentPopulation;
Select * from WaterAvailability;

