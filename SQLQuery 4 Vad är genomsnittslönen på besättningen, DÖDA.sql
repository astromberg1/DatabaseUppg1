SELECT AVG(Salary) AS 'GENOMSNITTSL�N',  COUNT(*) AS 'Antal d�da'
FROM     tblPassangers
WHERE  (DeathDate  is not NULL)