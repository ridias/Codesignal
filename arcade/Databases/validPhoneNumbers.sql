/*Please add ; after each select statement*/
CREATE PROCEDURE validPhoneNumbers()
BEGIN
	select * from phone_numbers
    where phone_number REGEXP '^1-[0-9]{3}-[0-9]{3}-[0-9]{4}$'
    or phone_number REGEXP '^\\(1\\)[0-9]{3}-[0-9]{3}-[0-9]{4}$'
    order by surname asc;
END