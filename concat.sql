SELECT s.id as 'ID', concat(s.Firstname, ' ', s.Lastname) as 'Name', 
		s.GPA, s.SAT,  
		m.Description as 'Major'
	From student s
	join Major m
		on s.MajorId = m.Id
	where s.gpa > 3.5 and (s.MajorId = 3 or s.MajorId = 5)
	order by s.gpa desc, s.sat desc;