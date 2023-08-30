/*
6	Write a query to return count of male customer based on occupation	dbo.DimCustomer
7	write a query to get records whose income > 50000	dbo.DimCustomer
8	write a query to return records who are Female House Owners 	dbo.DimCustomer
9	write a query to return CustomerKey whose education is  bachelors with number of children >0	dbo.DimCustomer
10	Theory: Group By, Order of Execution	*/

select  Gender,Occupation, count(*) as new from [ContosoRetailDW].[dbo].[DimCustomer]
where gender ='m'
group  by Occupation,Gender

/*rest do it on own*/
