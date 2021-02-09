# drop procedure getallusers;

DELIMITER //

Create PROCEDURE GetAllUsers()

BEGIN 
	select id, username, firstname, lastname, phone, email, isreviewer, isadmin
		from users;
END//

DELIMITER ;

call getallusers();