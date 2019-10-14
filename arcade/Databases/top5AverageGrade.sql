/*Please add ; after each select statement*/
CREATE PROCEDURE top5AverageGrade()
BEGIN
	select TRUNCATE(sum(total) / 5, 2) as average_grade 
    from (select grade as total from students order by grade desc limit 5) t1;
END