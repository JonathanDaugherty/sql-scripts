select s.Firstname, s.Lastname, c.Subject, c.section 
	from Student s
	join StudentClass sc on sc.StudentId = s.Id
	join Class c on c.id = sc.ClassId
	where c.subject = 'english' 