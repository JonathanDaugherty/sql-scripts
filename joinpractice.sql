select ol.product, ol.Description, ol.Quantity, ol.Price, o.Date, o.Description, c.Name, c.City, c.State, c.Sales from OrderLines OL
	join orders o on o.id = ol.OrdersId
	join Customers c on c.id = o.CustomerId
	order by price desc;