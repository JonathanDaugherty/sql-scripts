update student set 
gpa = gpa *1.1
where Id > 0;

select lastname, gpa, gpa * 1.1 from student;