SELECT tblRang.Rang,  COUNT(*)
FROM     tblDeathCause INNER JOIN
                  tblPassangers ON tblDeathCause.DeathCauseID = tblPassangers.DeathCauseID INNER JOIN
                  tblDepartment ON tblPassangers.DepartmentID = tblDepartment.DepartmentID INNER JOIN
                  tblGender ON tblPassangers.GenderID = tblGender.GenderID INNER JOIN
                  tblPlanets ON tblPassangers.OriginPlanetID = tblPlanets.OriginPlanetID INNER JOIN
                  tblRace ON tblPassangers.RaceID = tblRace.RaceID INNER JOIN
                  tblRang ON tblPassangers.RangID = tblRang.RangID GROUP BY tblRang.Rang