--Task 2.4.1
Select CompanyName as 'Supplier'
from Suppliers as s
where s.SupplierID in
	( 
	  Select p.SupplierID
	  from Products as p
	  where p.UnitsInStock = 0
	)
--Task 2.4.2
Select concat(e.LastName, ' ', e.FirstName) as 'Employee'
from Employees as e
where e.EmployeeID in 
	( 
	  Select o.EmployeeID
	  from Orders as o
	  group by o.EmployeeID
	  having count(OrderID) > 150
	)
--Task 2.4.3
Select c.CompanyName as 'Customer'
from Customers as c
where not exists
	(
	  Select o.OrderID
	  from Orders as o
	  where o.CustomerID = c.CustomerID
	)
