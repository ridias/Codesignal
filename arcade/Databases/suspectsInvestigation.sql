/*Please add ; after each select statement*/
CREATE PROCEDURE suspectsInvestigation()
BEGIN
	Select id, name, surname
    From Suspect 
    Where height <= 170 AND (name LIKE "B%" or name like "b%") 
    AND ((surname like "Gre%n" or surname like "gre%n") AND 5 = LENGTH(surname))
    order by id asc;
END