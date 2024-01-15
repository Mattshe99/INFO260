INSERT INTO Chemicals (ChemicalsID, IncidentID, DangerousChemicals, ChemicalDescription)
VALUES
 (1, 1, 1, 'Chemical spill in a healthcare facility'),
 (2, 2, 0, 'N/A'),
 (3, 3, 1, 'Toxic fumes at a home'),
 (4, 4, 1, 'Hazardous materials storage facility at an aged care facility'),
 (5, 5, 0, 'N/A'),
 (6, 6, 0, 'N/A'),
 (7, 7, 1, 'Chemical exposure at a home'),
 (8, 8, 1, 'Chemical spill in a healthcare facility'),
 (9, 9, 0, 'N/A'),
 (10, 10, 1, 'Chemical leak');
 
INSERT INTO RouteInformation (RouteID, IncidentID, TravelTimeMinutes, DistanceKM, 
IsAlternativeRoute)
VALUES
 (1, 1, 20, 24, 0),
 (2, 1, 30, 41, 1),
 (3, 2, 15, 11, 0),
 (4, 2, 20, 15, 1),
 (5, 3, 25, 36, 0),
 (6, 3, 40, 56, 1),
 (7, 4, 10, 9, 0),
 (8, 4, 15, 13, 1),
 (9, 5, 30, 46, 0),
 (10, 5, 35, 52, 1),
 (11, 6, 25, 32, 0),
 (12, 6, 50, 73, 1),
 (13, 7, 15, 22, 0),
 (14, 7, 30, 45, 1),
 (15, 8, 10, 12, 0),
 (16, 8, 20, 24, 1),
 (17, 9, 25, 35, 0),
 (18, 9, 35, 50, 1),
 (19, 10, 40, 61, 0),
 (20, 10, 55, 85, 1);
 
INSERT INTO Patient (PatientID, DateOfBirth, Gender)
VALUES
 (1, '1990-05-15', 'Male'),
 (2, '1985-08-21', 'Female'),
 (3, '2000-03-10', 'Indeterminate'),
 (4, '1978-12-03', 'Male'),
 (5, '1995-04-28', 'Female'),
 (6, '1980-09-17', 'Indeterminate'),
 (7, '2002-11-25', 'Male'),
 (8, '1993-07-14', 'Female'),
 (9, '1987-02-09', 'Male'),
 (10, '1999-10-06', 'Female');
 
INSERT INTO ClinicalImpression (ClinicalImpressionID, ImpressionOrder, ClinicalImpression)
VALUES
 (1, 1, 'Cardiac chest pain'),
 (2, 1, 'Renal Colic'),
 (3, 1, 'Cardiac chest pain'),
 (4, 1, 'Palliative care'),
 (5, 1, 'Anaphylaxis'),
 (6, 1, 'Acute low back pain'),
 (7, 1, 'Intentional Poisoning'),
 (8, 1, 'Fall minor injury'),
 (9, 1, 'Cardiac chest pain'),
 (10, 1, 'Atypical chest pain');
 
INSERT INTO GlasgowComaScale (GCSID, GCS_Initial, GCS_Initial_Time, GCS_Final, 
GCS_Final_Time)
VALUES
 (1, 10, '2023-10-10 08:00:00', 13, '2023-10-10 08:30:00'),
 (2, 12, '2023-10-10 09:15:00', 15, '2023-10-10 10:00:00'),
 (3, 8, '2023-10-10 10:30:00', 10, '2023-10-10 11:00:00'),
 (4, 9, '2023-10-10 11:45:00', 14, '2023-10-10 12:15:00'),
 (5, 14, '2023-10-10 13:30:00', 15, '2023-10-10 14:00:00'),
 (6, 7, '2023-10-10 14:30:00', 12, '2023-10-10 15:00:00'),
 (7, 13, '2023-10-10 15:45:00', 15, '2023-10-10 16:30:00'),
 (8, 11, '2023-10-10 17:15:00', 14, '2023-10-10 17:45:00'),
 (9, 15, '2023-10-10 18:30:00', 15, '2023-10-10 19:00:00'),
 (10, 6, '2023-10-10 19:30:00', 8, '2023-10-10 20:00:00');
 
INSERT INTO ClinicalAssessment (ClinicalAssessmentID, ClinicalImpressionID, GCSID, IsSTEMI, 
IsOHCA, CPRPerformed, ClinicalStatusAtScene, ClinicalStatusFinal, CAD_Final_Priority)
VALUES
 (1, 1, 1, 1, 0, 1, 3, 2, 'Purple'),
 (2, 2, 2, 0, 1, 0, 1, 3, 'Red'),
 (3, 3, 3, 0, 0, 0, 2, 2, 'Orange 1'),
 (4, 4, 4, 1, 0, 1, 1, 4, 'Green'),
 (5, 5, 5, 1, 1, 1, 0, 0, 'Triage'),
 (6, 6, 6, 0, 0, 0, 4, 1, 'PTS'),
 (7, 7, 7, 1, 0, 1, 2, 0, 'Red 2'),
 (8, 8, 8, 0, 1, 0, 3, 3, 'Grey'),
 (9, 9, 9, 1, 0, 1, 1, 2, 'Orange'),
 (10, 10, 10, 0, 1, 0, 2, 4, 'Private Hire');
 
INSERT INTO CardiacTreatmentFacility (FinalDestinationID, FinalDestination, 
FinalDestination_IsPCIHospital)
VALUES
 (1, 'Hawkes Bay Hospital', 1),
 (2, 'Dunstan Hospital', 0),
 (3, 'Fitzroy Medical Centre', 0),
 (4, 'NA', 0),
 (5, 'Kew Hospital (Invercargill Hosp)', 0),
 (6, 'Bay of Islands Hospital', 0),
 (7, 'Dunedin Public Hospital', 0),
 (8, 'Northland Base Hospital', 0),
 (9, 'Middlemore Hospital', 1),
 (10, 'NA', 0);

INSERT INTO Ambulance (AmbulanceID, VehicleType, AmbulanceLocation, AmbulanceAvailability)
VALUES
 (1, 'Air Ambulance', 'Location 1', 1),
 (2, 'ECHO', 'Location 2', 0),
 (3, 'PTS', 'Location 3', 1),
 (4, 'DELTA', 'Location 4', 0),
 (5, 'UCC', 'Location 5', 1),
 (6, 'TANGO', 'Location 6', 0),
 (7, 'MGR', 'Location 7', 1),
 (8, 'CRT', 'Location 8', 0),
 (9, 'EVENTS', 'Location 9', 1),
 (10, 'FRU', 'Location 10', 0);
 
INSERT INTO Paramedic (ParamedicID, ParamedicQualification, ParamedicAvailability, 
ParamedicLocation)
VALUES
 (1, 'ECP', 1, 'Location 1'),
 (2, 'ICP', 0, 'Location 2'),
 (3, 'Para', 1, 'Location 3'),
 (4, 'EMT', 1, 'Location 4'),
 (5, 'ECP', 0, 'Location 5'),
 (6, 'Other ATP/No ATP', 1, 'Location 6'),
 (7, 'Para', 0, 'Location 7'),
 (8, 'ICP', 1, 'Location 8'),
 (9, 'EMT', 0, 'Location 9'),
 (10, 'Other ATP/No ATP', 1, 'Location 10');
 
INSERT INTO DispatchInformation (DispatchInformationID, ServiceAreaID, CAD_Triage_Priority, 
IncidentID)
VALUES
 (1, 1, 'Red', 1),
 (2, 2, 'Orange', 2),
 (3, 3, 'Purple', 3),
 (4, 4, 'Green', 4),
 (5, 5, 'Red 2', 5),
 (6, 6, 'PTS', 6),
 (7, 7, 'Orange 1', 7),
 (8, 8, 'Grey', 8),
 (9, 9, 'Red 1', 9),
 (10, 10, 'Triage', 10);
 
INSERT INTO ServiceArea (ServiceAreaID, CAD_Response_Area, CAD_Service_Area)
VALUES
 (1, 'Hastings', 'Urban'),
 (2, 'Cromwell', 'Rural'),
 (3, 'Great Barrier Island', 'Remote'),
 (4, 'Palmerston North', 'Urban'),
 (5, 'Winton', 'Rural'),
 (6, 'Kaikohe', 'Remote'),
 (7, 'Dunedin', 'Urban'),
 (8, 'Whangarei', 'Urban'),
 (9, 'Botany', 'Urban'),
 (10, 'Blenheim', 'Urban');
 
INSERT INTO Dispatch (DispatchID, CAD_Time_Assigned, CAD_Time_ArrivedAtScene, 
CAD_Time_Depart_Scene, CAD_Time_Arrive_Destination, FinalDestinationID, AmbulanceID, 
ParamedicID, DispatchInformationID)
VALUES
 (1, '2023-10-10 08:00:00', '2023-10-10 08:20:00', '2023-10-10 08:40:00', '2023-10-10 
09:00:00', 1, 1, 1, 1),
 (2, '2023-10-10 09:30:00', '2023-10-10 09:45:00', '2023-10-10 10:00:00', '2023-10-10 
10:15:00', 2, 2, 2, 2),
 (3, '2023-10-10 10:45:00', '2023-10-10 11:00:00', '2023-10-10 11:15:00', '2023-10-10 
11:30:00', 3, 3, 3, 3),
 (4, '2023-10-10 12:00:00', '2023-10-10 12:15:00', '2023-10-10 12:30:00', '2023-10-10 
12:45:00', 4, 4, 4, 4),
 (5, '2023-10-10 13:30:00', '2023-10-10 13:45:00', '2023-10-10 14:00:00', '2023-10-10 
14:15:00', 5, 5, 5, 5),
 (6, '2023-10-10 14:45:00', '2023-10-10 15:00:00', '2023-10-10 15:15:00', '2023-10-10 
15:30:00', 6, 6, 6, 6),
 (7, '2023-10-10 16:00:00', '2023-10-10 16:15:00', '2023-10-10 16:30:00', '2023-10-10 
16:45:00', 7, 7, 7, 7),
 (8, '2023-10-10 17:15:00', '2023-10-10 17:30:00', '2023-10-10 17:45:00', '2023-10-10 
18:00:00', 8, 8, 8, 8),
 (9, '2023-10-10 18:30:00', '2023-10-10 18:45:00', '2023-10-10 19:00:00', '2023-10-10 
19:15:00', 9, 9, 9, 9),
 (10, '2023-10-10 19:45:00', '2023-10-10 20:00:00', '2023-10-10 20:15:00', '2023-10-10 
20:30:00', 10, 10, 10, 10);

INSERT INTO Incident (IncidentID, PatientID, ClinicalAssessmentID, DispatchID, ChemicalsID, 
CallDistrict, DateOfCall, DateOnset, LocationType, CADTimePhonePickUp)
VALUES
 (1, 1, 1, 1, 1, 'Central South', '2023-10-10 08:00:00', '2023-10-10 08:15:00', 
'Healthcare Facility', '2023-10-10 08:10:00'),
 (2, 2, 2, 2, 2, 'Southland/Otago', '2023-10-10 09:30:00', '2023-10-10 09:45:00', 
'Home', '2023-10-10 09:35:00'),
 (3, 3, 3, 3, 3, 'Auckland', '2023-10-10 10:45:00', '2023-10-10 11:00:00', 'Home', 
'2023-10-10 10:50:00'),
 (4, 4, 4, 4, 4, 'Central South', '2023-10-10 12:00:00', '2023-10-10 12:15:00', 'Aged 
Care Facility', '2023-10-10 12:05:00'),
 (5, 5, 5, 5, 5, 'Southland/Otago', '2023-10-10 13:30:00', '2023-10-10 13:45:00', 
'Road', '2023-10-10 13:35:00'),
 (6, 6, 6, 6, 6, 'Northland', '2023-10-10 14:45:00', '2023-10-10 15:00:00', 'Footpath', 
'2023-10-10 14:50:00'),
 (7, 7, 7, 7, 7, 'Southland/Otago', '2023-10-10 16:00:00', '2023-10-10 16:15:00', 
'Home', '2023-10-10 16:05:00'),
 (8, 8, 8, 8, 8, 'Northland', '2023-10-10 17:15:00', '2023-10-10 17:30:00', 'Healthcare 
Facility', '2023-10-10 17:20:00'),
 (9, 9, 9, 9, 9, 'Auckland', '2023-10-10 18:30:00', '2023-10-10 18:45:00', 'Workplace', 
'2023-10-10 18:35:00'),
 (10, 10, 10, 10, 10, 'Tasman', '2023-10-10 19:45:00', '2023-10-10 20:00:00', 'Aged Care 
Facility', '2023-10-10 19:50:00');
