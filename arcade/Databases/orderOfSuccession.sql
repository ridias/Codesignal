/*Please add ; after each select statement*/
CREATE PROCEDURE orderOfSuccession()
BEGIN
	select IF(gender = "F", CONCAT("Queen ", Successors.name), CONCAT("King ", Successors.name)) as name from Successors
    order by birthday;
END