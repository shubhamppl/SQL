/*What's the average sales record made by the store with the highest sales in 2010?  Also, Retrieve the store key
*/
select avg(salesamount)  from (SELECT f.storekey, f.salesamount,d.storename from [ContosoRetailDW].[dbo].[FactSales] as f
inner join   [ContosoRetailDW].[dbo].DimStore AS d on d.StoreKey=f.StoreKey
where year(f.UpdateDate)= 2010 and d.StoreName ='Contoso Catalog Store'
group by d.StoreName, f.StoreKey, f.SalesAmount
) as new
