--Task 1.1.1
select OrderID as 'Order id', ShippedDate as 'Shipped date', ShipVia as 'Ship via'
from Orders
where ShippedDate >= '1998-05-06' and ShipVia >=2
go
--Task 1.1.2
select OrderID as 'Order id', 
	case
		when ShippedDate is NULL 
		then 'Not Shipped'
	end
	as 'Shipped date'
from Orders
where ShippedDate is NULL
go
--Task 1.1.3
select OrderId as 'Order Number', 
	case
		when ShippedDate is NULL
		then 'Not Shipped'
		else FORMAT ( ShippedDate, 'd', 'en-gb')
	end
	as 'Shipped date'
from Orders
where ShippedDate > '1998.05.06' or ShippedDate is NULL

