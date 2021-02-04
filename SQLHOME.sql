select concat(s.lastname, ', ',  s.firstname) 'Student Name', sc.classgradevalue, s.gpa, s.sat from class c
	join StudentClass sc on sc.ClassId = c.Id
	join student s on s.Id = sc.StudentId
	order by GPA desc;
	