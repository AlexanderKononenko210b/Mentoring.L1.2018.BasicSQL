--Task 2.2.1
Select count(OrderId) as 'Count orders', YEAR(ShippedDate) as 'Year'
from Orders
group by YEAR(ShippedDate)
go
Select count(OrderID) as 'Total orders'
from Orders
go
--Task 2.2.2
Select count(OrderID) as 'Amount',
	(select LastName + ' ' + FirstName from Employees where  EmployeeID = o.EmployeeID) as 'Seller'
from Orders as o
group by o.EmployeeID
order by count(OrderID) desc
go
--Task 2.2.3
Select (select LastName + ' ' + FirstName from Employees where  EmployeeID = o.EmployeeID) as 'Seller',
	(select CompanyName from Customers where CustomerID = o.CustomerID) as 'Customer',
	count(o.OrderID) as 'Amount'
from Orders as o
where YEAR(ShippedDate) = 1998
group by o.CustomerID, o.EmployeeID
go
--Task 2.2.4
Select CompanyName as 'Customer', 
       concat(LastName, ' ', FirstName) as 'Seller',
	   c.City 
from Customers as c, Employees as e
where c.City = e.City
order by Customer, Seller
go
--Task 2.2.5
Select CompanyName as 'Customer', City
from Customers as c
where City in (select City from Customers
				group by City
				having count(*) > 1)
order by City
go
--Task 2.2.6
Select s.LastName + ' ' + s.FirstName as 'Seller',
	m.LastName + ' ' + m.FirstName as 'Manager'
from Employees as s
	left join Employees as m
	on s.ReportsTo = m.EmployeeID
