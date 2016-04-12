SELECT AVG(Salary) AS 'GENOMSNITTSLÖN',  COUNT(*) AS 'Antal levande'
FROM     tblPassangers
WHERE  (DeathDate IS NULL)