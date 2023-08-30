
select DATEDIFF(year, birthdate , GETDATE()) AS age , LastName
 from [ContosoRetailDW].[dbo].DimCustomer 
 order by age desc

 SELECT 
    MAX(DATEDIFF(year, birthdate, GETDATE())) ,
    MIN(DATEDIFF(year, birthdate, GETDATE())) 
FROM [ContosoRetailDW].[dbo].DimCustomer;
