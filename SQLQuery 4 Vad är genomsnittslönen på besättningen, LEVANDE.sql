SELECT AVG(Salary) AS 'GENOMSNITTSL�N',  COUNT(*) AS 'Antal levande'
FROM     tblPassangers
WHERE  (DeathDate IS NULL)