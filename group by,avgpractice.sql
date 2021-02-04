select city as City, count(City) as 'Nbr of Customers', sum(sales) as 'Sales', 
			avg(sales) as 'Average Sale'
	from Customers
	group by City;