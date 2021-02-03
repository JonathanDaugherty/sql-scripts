select * from class c
	join MajorClass mc on c.Id = mc.ClassId
	join major m on m.Id = mc.majorId
	where c.code = 'Mat203'
	order by c.code
	