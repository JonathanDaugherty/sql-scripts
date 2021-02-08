delete from student
	where Id in (
		select Id from student where 
        gpa = 4.07 and 
        lastname = 'Daugherty' 
        and firstname = 'Jonathan');

insert student 
(firstname, lastname, SAT, GPA, MajorId)
Values
('LeBron', 'James', 1500, 2.6, 
	(select Id from Major where description = 'Engineering')); 
