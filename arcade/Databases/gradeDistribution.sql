/*Please add ; after each select statement*/
CREATE PROCEDURE gradeDistribution()
BEGIN
	select Name, ID from Grades
    where ((Final) > (Midterm1 * 0.25 + Midterm2 * 0.25 + Final * 0.50)) 
        or ((Final) > (Midterm1 * 0.50 + Midterm2 * 0.50))
    order by left(Name, 3) asc, Id asc;
END