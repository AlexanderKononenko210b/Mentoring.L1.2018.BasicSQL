--Task 1.1.1
select OrderID as 'Order id', ShippedDate as 'Shipped date', ShipVia as 'Ship via'
from Orders
where ShippedDate >= '1998-06-06' or ShipVia >=2
go
--Task 1.1.2
select OrderID as 'Order id', 
	case
		when ShippedDate is NULL 
		then 'Not Shipped'
		else 'Shipped:' + FORMAT ( ShippedDate, 'd', 'en-gb' )
	end
	as 'Shipped date'
from Orders
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
where ShippedDate > '1998.06.06' or ShippedDate is NULL

