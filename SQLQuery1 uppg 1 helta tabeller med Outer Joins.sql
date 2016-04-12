SELECT tblPassangers.Fname, tblPassangers.Lname, tblPassangers.BirthDate, tblPassangers.Salary, tblPassangers.DeathDate, tblDeathCause.DeathCause, tblDepartment.DepartmentName, tblGender.Gender, tblRang.Rang, 
                  tblPlanets.PlanetName
FROM     tblRang RIGHT OUTER JOIN
                  tblPassangers ON tblRang.RangID = tblPassangers.RangID LEFT OUTER JOIN
                  tblRace ON tblPassangers.RaceID = tblRace.RaceID LEFT OUTER JOIN
                  tblGender ON tblPassangers.GenderID = tblGender.GenderID LEFT OUTER JOIN
                  tblDepartment ON tblPassangers.DepartmentID = tblDepartment.DepartmentID LEFT OUTER JOIN
                  tblPlanets ON tblPassangers.OriginPlanetID = tblPlanets.OriginPlanetID LEFT OUTER JOIN
                  tblDeathCause ON tblPassangers.DeathCauseID = tblDeathCause.DeathCauseID