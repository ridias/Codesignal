/*Please add ; after each select statement*/
CREATE PROCEDURE volleyballResults()
BEGIN
	Select * From results order by wins asc;
END