CREATE TABLE Patient (
 PatientID INT PRIMARY KEY,
 DateOfBirth DATE NOT NULL,
 Gender VARCHAR(13) CHECK(Gender IN ('Male', 'Female', 'Indeterminate')) NOT NULL
);

CREATE TABLE ClinicalImpression (
 ClinicalImpressionID INT PRIMARY KEY,
 ImpressionOrder INT NOT NULL,
 ClinicalImpression VARCHAR(60)
);

CREATE TABLE GlasgowComaScale (
 GCSID INT PRIMARY KEY,
 GCS_Initial INT,
 GCS_Initial_Time DATETIME NOT NULL,
 GCS_Final INT,
 GCS_Final_Time DATETIME
);

CREATE TABLE ClinicalAssessment (
 ClinicalAssessmentID INT PRIMARY KEY,
 ClinicalImpressionID INT NOT NULL,
 GCSID INT NOT NULL,
 IsSTEMI TINYINT CHECK(IsSTEMI IN (1, 0)) NOT NULL,
 IsOHCA TINYINT CHECK(IsOHCA IN (1, 0)) NOT NULL,
 CPRPerformed BOOLEAN NOT NULL,
 ClinicalStatusAtScene INT CHECK (ClinicalStatusAtScene >= 0 AND ClinicalStatusAtScene 
<= 4),
 ClinicalStatusFinal INT CHECK (ClinicalStatusFinal >= 0 AND ClinicalStatusFinal <= 4),
 CAD_Final_Priority VARCHAR(15) CHECK (CAD_Final_Priority IN ('Purple', 'Red', 'Red 1', 
'Red 2', 'Orange', 'Orange 1', 'Orange 2', 'Green', 'Green 1', 'Green 2', 'Grey', 'PTS', 
'Private Hire', 'Air Transfer', 'Notification', 'Triage')) NOT NULL,
 FOREIGN KEY (ClinicalImpressionID) REFERENCES ClinicalImpression(ClinicalImpressionID),
 FOREIGN KEY (GCSID) REFERENCES GlasgowComaScale(GCSID)
);

CREATE TABLE Incident (
 IncidentID INT PRIMARY KEY,
 PatientID INT NOT NULL,
 ClinicalAssessmentID INT NOT NULL,
 DispatchID INT NOT NULL,
 CallDistrict VARCHAR(50) NOT NULL,
 DateOfCall DATETIME NOT NULL,
 DateOnset DATETIME,
 LocationType VARCHAR(20) NOT NULL,
 CADTimePhonePickUp DATETIME,
 ChemicalsID INT NOT NULL,
 FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
 FOREIGN KEY (ClinicalAssessmentID) REFERENCES ClinicalAssessment(ClinicalAssessmentID),
 FOREIGN KEY (DispatchID) REFERENCES Dispatch(DispatchID),
 FOREIGN KEY (ChemicalsID) REFERENCES Chemicals(ChemicalsID)
);

CREATE TABLE DispatchInformation (
 DispatchInformationID INT PRIMARY KEY,
 ServiceAreaID INT NOT NULL,
 CAD_Triage_Priority VARCHAR(15) CHECK (CAD_Triage_Priority IN ('Purple', 'Red', 'Red 
1', 'Red 2', 'Orange', 'Orange 1', 'Orange 2', 'Green', 'Green 1', 'Green 2', 'Grey', 
'PTS', 'Private Hire', 'Air Transfer', 'Notification', 'Triage')) NOT NULL,
 IncidentID INT NOT NULL,
 FOREIGN KEY (IncidentID) REFERENCES Incident(IncidentID),
 FOREIGN KEY (ServiceAreaID) REFERENCES ServiceArea(ServiceAreaID)
);

CREATE TABLE ServiceArea (
ServiceAreaID INT PRIMARY KEY,
 CAD_Response_Area VARCHAR(50) NOT NULL,
 CAD_Service_Area VARCHAR(6) CHECK (CAD_Service_Area IN ('urban', 'rural', 'remote')) 
NOT NULL
);

CREATE TABLE Ambulance (
 AmbulanceID INT PRIMARY KEY,
 VehicleType VARCHAR(15) CHECK (VehicleType IN ('Air Ambulance', 'CRT', 'DELTA', 'EAS', 
'ECHO', 'EVENTS', 'FRU', 'HYBRID', 'MGR', 'PTS', 'ROMEO', 'SIERRA', 'TANGO', 'UCC')) NOT
NULL,
 AmbulanceLocation VARCHAR(50) NOT NULL,
 AmbulanceAvailability BOOLEAN NOT NULL
);

CREATE TABLE Paramedic (
 ParamedicID INT PRIMARY KEY,
 ParamedicQualification VARCHAR(20) CHECK (ParamedicQualification IN ('ECP', 'ICP', 
'Other ATP/No ATP', 'Para', 'EMT')) NOT NULL,
 ParamedicAvailability BOOLEAN NOT NULL,
 ParamedicLocation VARCHAR(50) NOT NULL
);

CREATE TABLE CardiacTreatmentFacility (
FinalDestinationID INT PRIMARY KEY NOT NULL,
 FinalDestination VARCHAR(50),
 FinalDestination_IsPCIHospital BOOLEAN NOT NULL
);

CREATE TABLE Dispatch (
 DispatchID INT PRIMARY KEY,
 CAD_Time_Assigned DATETIME,
 CAD_Time_ArrivedAtScene DATETIME,
 CAD_Time_Depart_Scene DATETIME,
 CAD_Time_Arrive_Destination DATETIME,
 AmbulanceID INT NOT NULL,
 ParamedicID INT NOT NULL,
 DispatchInformationID INT NOT NULL,
 FinalDestinationID INT NOT NULL,
 FOREIGN KEY (AmbulanceID) REFERENCES Ambulance(AmbulanceID),
 FOREIGN KEY (ParamedicID) REFERENCES Paramedic(ParamedicID),
 FOREIGN KEY (FinalDestinationID) REFERENCES
CardiacTreatmentFacility(FinalDestinationID)
);

ALTER TABLE Dispatch
ADD CONSTRAINT FK_DispatchInformation
FOREIGN KEY (DispatchInformationID) REFERENCES DispatchInformation(DispatchInformationID);

CREATE TABLE RouteInformation (
 RouteID INT PRIMARY KEY,
 IncidentID INT,
 TravelTimeMinutes INT,
 DistanceKM INT,
 IsAlternativeRoute BOOLEAN NOT NULL,
 FOREIGN KEY (IncidentID) REFERENCES Incident(IncidentID)
);

CREATE TABLE Chemicals (
 ChemicalsID INT PRIMARY KEY,
 IncidentID INT NOT NULL,
 DangerousChemicals BOOLEAN,
 ChemicalDescription VARCHAR(100)
);
