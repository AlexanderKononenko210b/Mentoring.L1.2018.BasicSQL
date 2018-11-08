--Task 1.3.1
Select distinct OrderID as 'Order number'
from [Order Details]
where Quantity BETWEEN 3 and 10
go
--Task 1.3.2
Select CompanyName as 'Company name', Country
from Customers
where substring(CompanyName, 1, 1) between 'b' and 'g'
order by Country
go
--Task 1.3.3
Select CompanyName as 'Company name', Country
from Customers
where substring(CompanyName, 1, 1) >= 'b' and substring(CompanyName, 1, 1) <= 'g'
order by Country

