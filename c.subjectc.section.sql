select c.Subject, c.Section, 
concat(i.Lastname, ', ', i.Firstname) 'Name', i.YearsExperience, i.IsTenured
	from Class c
	join Instructor i 
	on c.instructorid = i.Id
	where i.YearsExperience > 9
	order by i.lastname, c.subject;