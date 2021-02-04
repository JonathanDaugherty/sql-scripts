select m.Description as 'Major', avg(s.gpa) as 'AVG GPA' from student s
	join Major M on m.Id = s.MajorId
	group by M.Description
	having avg(s.gpa) >= 3;