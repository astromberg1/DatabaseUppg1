SELECT AVG(Salary) AS 'GENOMSNITTSLÖN',  COUNT(*) AS 'Antal döda'
FROM     tblPassangers
WHERE  (DeathDate  is not NULL)