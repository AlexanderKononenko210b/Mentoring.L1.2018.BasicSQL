--Task 1.2.1
Select ContactName as 'Company name', Country
from Customers
where Country in ('USA', 'Canada')
order by ContactName, Country
go
--Task 1.2.2
Select ContactName as 'Company name'
from Customers
where Country not in ('USA', 'Canada')
order by ContactName
go
--Task 1.2.3
Select distinct Country
from Customers
order by Country desc

