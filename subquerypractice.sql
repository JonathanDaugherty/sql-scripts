Select * from customers
where sales > (Select avg(sales)
from Customers)
order by sales desc;



