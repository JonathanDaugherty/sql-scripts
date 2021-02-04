select * from Customers c
left join orders o on o.CustomerId = c.Id
left join OrderLines ol on o.Id = ol.OrdersId 
order by c.Name