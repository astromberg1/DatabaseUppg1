CREATE PROC sp_UPPG1_1

AS

BEGIN
SELECT tblPassangers.Fname, tblPassangers.Lname, tblPassangers.Salary, tblPassangers.BirthDate, tblPassangers.DeathDate, tblDeathCause.DeathCause, tblDepartment.DepartmentName, tblPlanets.PlanetName, 
                  tblGender.Gender, tblRace.Race, tblRang.Rang
FROM     tblDeathCause INNER JOIN
                  tblPassangers ON tblDeathCause.DeathCauseID = tblPassangers.DeathCauseID INNER JOIN
                  tblDepartment ON tblPassangers.DepartmentID = tblDepartment.DepartmentID INNER JOIN
                  tblGender ON tblPassangers.GenderID = tblGender.GenderID INNER JOIN
                  tblPlanets ON tblPassangers.OriginPlanetID = tblPlanets.OriginPlanetID INNER JOIN
                  tblRace ON tblPassangers.RaceID = tblRace.RaceID INNER JOIN
                  tblRang ON tblPassangers.RangID = tblRang.RangID
END;


CREATE PROC sp_UPPG1_2

AS

BEGIN
SELECT tblPassangers.Fname, tblPassangers.Lname, tblDeathCause.DeathCause, tblPassangers.DeathDate
FROM     tblDeathCause INNER JOIN
                  tblPassangers ON tblDeathCause.DeathCauseID = tblPassangers.DeathCauseID INNER JOIN
                  tblDepartment ON tblPassangers.DepartmentID = tblDepartment.DepartmentID INNER JOIN
                  tblGender ON tblPassangers.GenderID = tblGender.GenderID INNER JOIN
                  tblPlanets ON tblPassangers.OriginPlanetID = tblPlanets.OriginPlanetID INNER JOIN
                  tblRace ON tblPassangers.RaceID = tblRace.RaceID INNER JOIN
                  tblRang ON tblPassangers.RangID = tblRang.RangID
END;

EXEC sp_UPPG1_1
EXEC sp_UPPG1_2

CREATE PROC sp_uppg1_1_Select_hela_tabellen
AS
SELECT tblPassangers.Fname, tblPassangers.Lname, tblPassangers.BirthDate, tblPassangers.Salary, tblPassangers.DeathDate, tblDeathCause.DeathCause, tblDepartment.DepartmentName, tblGender.Gender, tblRang.Rang, 
                  tblPlanets.PlanetName
FROM     tblRang RIGHT OUTER JOIN
                  tblPassangers ON tblRang.RangID = tblPassangers.RangID LEFT OUTER JOIN
                  tblRace ON tblPassangers.RaceID = tblRace.RaceID LEFT OUTER JOIN
                  tblGender ON tblPassangers.GenderID = tblGender.GenderID LEFT OUTER JOIN
                  tblDepartment ON tblPassangers.DepartmentID = tblDepartment.DepartmentID LEFT OUTER JOIN
                  tblPlanets ON tblPassangers.OriginPlanetID = tblPlanets.OriginPlanetID LEFT OUTER JOIN
                  tblDeathCause ON tblPassangers.DeathCauseID = tblDeathCause.DeathCauseID

GO

EXEC sp_uppg1_1_Select_hela_tabellen