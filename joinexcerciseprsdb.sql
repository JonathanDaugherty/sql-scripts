select r.id, r.description, r.status, r.total, u.lastname, v.name as 'company', li.productid, p.name, p.price, li.quantity, p.price * li.quantity as 'line total' 
from request r
join users u on u.id = r.userid
join lineitems li on li.requestid = r.id
join products p on p.id = li.productid
join vendors v on v.id = p.vendorID