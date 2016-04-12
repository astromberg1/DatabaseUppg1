SELECT tblPassangers.Fname, tblPassangers.Lname, tblPassangers.Salary, tblPassangers.BirthDate, tblPlanets.PlanetName, tblGender.Gender, tblRang.Rang, tblDepartment.DepartmentName, tblRace.Race
FROM     tblDeathCause INNER JOIN
                  tblDeceased ON tblDeathCause.DeathCauseID = tblDeceased.DeathCauseID INNER JOIN
                  tblPassangers ON tblDeceased.DeceasedID = tblPassangers.DeceasedID INNER JOIN
                  tblDepartment ON tblPassangers.DepartmentID = tblDepartment.DepartmentID INNER JOIN
                  tblGender ON tblPassangers.GenderID = tblGender.GenderID INNER JOIN
                  tblPlanets ON tblPassangers.OriginPlanetID = tblPlanets.OriginPlanetID INNER JOIN
                  tblRace ON tblPassangers.RaceID = tblRace.RaceID INNER JOIN
                  tblRang ON tblPassangers.RangID = tblRang.RangID