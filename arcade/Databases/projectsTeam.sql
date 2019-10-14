/*Please add ; after each select statement*/
CREATE PROCEDURE projectsTeam()
BEGIN
	Select distinct name from projectLog order by name asc;
END