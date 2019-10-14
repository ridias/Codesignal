/*Please add ; after each select statement*/
CREATE PROCEDURE suspectsInvestigation2()
BEGIN
	Select id, name, surname
    From Suspect 
    Where height <= 170 and upper(name) not like "B%" and upper(surname) not like "gre_n"; 
END