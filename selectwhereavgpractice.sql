select * 
	from Customers
	where sales > (select AVG(sales)from Customers);

 
	