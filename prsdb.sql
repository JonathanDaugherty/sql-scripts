use sys;

drop database prsdb;

create database prsdb;

use prsdb;

create table users 
(id int primary key auto_increment,
username varchar(30) not null unique,
password varchar(30) not null,
firstname varchar(30) not null,
lastname varchar(30) not null,
phone varchar(12),
email varchar(255),
isreviewer tinyint not null default 0, 
isadmin tinyint not null default 0
);

insert into users
(username, password, firstname, lastname, isreviewer, isadmin)
values
('sa', 'sa', 'System', 'Admin', 1, 1);

create table vendors
(id int primary key auto_increment,
code varchar(10) not null unique,
name varchar(30) not null,
address varchar(30) not null,
city varchar(30) not null,
state varchar(2) not null,
zip varchar(5) not null,
phonenumber varchar(12), 
email varchar(255)
);

insert into vendors
(code, name, address, city, state, zip)
values
('AMAZ', 'Amazon', '1 Amazon Way', 'Seattle', 'WA', '84744'),
('TARG', 'Target', '1 Target Way', 'Minneapolis', 'MN', '84764'),
('MEIJ', 'Meijer', '1 Meijer Way', 'Atlanta', 'MI', '56784');


Create table request
(Id int primary key auto_increment,
description varchar(80) not null,
justification varchar(80) not null,
rejectionreason varchar(80),
deliverymode varchar(20) not null default 'pickup',
status varchar(10) not null default 'NEW',
total decimal(11,2) not null default '0',
dateneeded date not null,
submitteddate datetime not null default current_timestamp,
userID int not null, 
foreign key (userId) references users(id));

insert into request
(description, justification, dateneeded, userID)
values
('1st request', 'Just Because', '2021-03-01', (select id from users where username = 'sa'));

create table products
(Id int primary key auto_increment,
partnumber varchar(30) not null unique,
name varchar(30) not null,
price decimal(11,2) not null,
unit varchar(30) not null,
photopath varchar(255),
vendorID int not null, 
foreign key (vendorId) references vendors(id));

insert into products
(partnumber, name, price, unit, vendorid)
values
('ECHO', 'Echo', 100, 'EXS200', (select id from vendors where code = 'AMAZ')),
('SPOON', 'Spoon', 25, 'SP100', (select id from vendors where code = 'TARG')),
('SWEEP', 'Sweeper', 600, 'SW2000', (select id from vendors where code = 'MEIJ'));

create table lineitems
(Id int primary key auto_increment,
requestid int not null, foreign key (requestid) references request(id),
productid int not null, foreign key (productid) references products(id),
quantity int not null default 1,
constraint requestid_productid unique (requestId, ProductId));

insert lineitems
(requestid, productid, quantity)
values
((select Id from request where Id = 1), (select id from products where partnumber = 'ECHO'), 3),
((select Id from request where Id = 1), (select id from products where partnumber = 'SPOON'), 2);