--Task 2.1.1
Select SUM(UnitPrice * Quantity * (1 - Discount)) as 'Total'
from [Order Details]
go
--Task 2.1.2
Select count(*) - count(ShippedDate) as 'Not shipped order'
from Orders
go
--Task 2.1.3
Select count(distinct CustomerId) as 'Customers'
from Orders