/*For every store that has earned more than $10,000 profit, flag them as "HIGHLY PROFITABLE ENTERPRISE", 
for stores that have incurred losses flag them as "DRAINS", for stores that have amassed profits in the range $2000-$9999, 
flag them as "AVERAGE PROFIT STORES" and the rest should be flagged as "NON PROFIT STORES" 
Profit = [(SalesQuantity*UnitPrice)-(DiscountQuantity*DiscountAmount)] - (SalesQuantity*UnitCost) */
select storekey ,
case when profit > 10000 then 'yes yes yes '
                    when profit >1000 and profit < 4000 then 'ok ok ok'
					when profit < 1000 then 'nooooooo' 
					else 'nothig '
					end as yo
from  (
select StoreKey,
count(SalesQuantity*UnitPrice-(DiscountAmount*DiscountQuantity)-(SalesQuantity*UnitCost)) as profit 
from [ContosoRetailDW].[dbo].[FactSales]
group by StoreKey
)as profittt
