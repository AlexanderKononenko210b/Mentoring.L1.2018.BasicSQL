--Task 1.2.1
Select CompanyName as 'Company name', Country
from Customers
where Country in ('USA', 'Canada')
order by CompanyName, Country
go
--Task 1.2.2
Select CompanyName as 'Company name'
from Customers
where Country not in ('USA', 'Canada')
order by CompanyName
go
--Task 1.2.3
Select distinct Country
from Customers
order by Country desc

