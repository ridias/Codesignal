/*Please add ; after each select statement*/
CREATE PROCEDURE personalHobbies()
BEGIN
	select name from people_hobbies
    where FIND_IN_SET("reading", hobbies) and FIND_IN_SET("sports", hobbies)
    order by name;
END