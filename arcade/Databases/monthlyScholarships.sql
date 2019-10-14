/*Please add ; after each select statement*/
CREATE PROCEDURE monthlyScholarships()
BEGIN
	Select id, scholarship / 12 as scholarship from scholarships;
END