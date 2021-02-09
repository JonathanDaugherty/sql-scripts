use sys; 

drop database NBAdata;

create database NBAdata;

use NBAdata;

create table Teams
(Id int primary key auto_increment,
Location varchar(30) not null,
Name varchar(30) not null,
yrfounded int(4) not null,
ticketprice decimal(10,2) not null);

insert teams
(Location, Name, yrfounded, ticketprice)
values
('Indiana', 'Pacers', 1950, 50.75),
('Chicago', 'Bulls', 1935, 80.57),
('Miami', 'Heat', 1960, 67.45),
('Boston', 'Celtics', 1924, 74.32);

create table keyplayers
(Id int primary key auto_increment,
firstname varchar(30) not null,
lastname varchar(30) not null,
yrspro int(2) not null,
teamid int not null, 
foreign key (teamid) references teams(id));

insert keyplayers
(firstname, lastname, yrspro, teamid)
values
('Lebron', 'James', 11, (select id from teams where Id = '3')),
('Jimmy', 'Butler', 6, (select id from teams where Id = '2')),
('Paul', 'George', 4, (select id from teams where Id = '1')), 
('Kevin', 'Garnett', 16, (select id from teams where Id = '4'));

select kp.firstname, kp.lastname, kp.yrspro, t.location, t.name from keyplayers kp
join teams t on t.id = kp.teamid; 








