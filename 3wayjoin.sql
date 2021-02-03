select * 
	from Major m
	join majorclass mc on mc.MajorId = m.Id
	join class c on c.id = mc.ClassId
	join instructor i on i.Id = c.InstructorId
