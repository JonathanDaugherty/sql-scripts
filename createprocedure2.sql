-- DROP PROCEDURE Adduser;

DELIMITER //	

CREATE PROCEDURE Adduser(IN uname varchar(30), IN pword varchar(30), 
						IN fname varchar(30), IN lname varchar(30))
    
    Begin 
    insert into users (username, password, firstname, lastname, isreviewer, isadmin)
    Values
    (uname, pword, fname, lname, false, false);
    End//
    
    DELIMITER ; 
    
    CALL Adduser('rv', 'rv', 'system', 'reviewer');
