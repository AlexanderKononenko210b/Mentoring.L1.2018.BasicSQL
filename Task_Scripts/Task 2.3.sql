--Task 2.3.1
Select distinct concat(e.LastName, ' ', e.FirstName) as 'Employee'
from Employees as e
	Join EmployeeTerritories as et
	on e.EmployeeID = et.EmployeeID
	Join Territories as t
	on et.TerritoryID = t.TerritoryID
	Join Region as r
	on t.RegionID = r.RegionID
where r.RegionDescription = 'Western'
go
--Task 2.3.2
Select c.CustomerID as 'Customer', 
	   count(o.OrderID) as 'Total orders'
from Customers as c
	Join Orders as o
	on c.CustomerID = o.CustomerID
group by c.CustomerID
