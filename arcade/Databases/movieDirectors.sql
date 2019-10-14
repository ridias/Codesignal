/*Please add ; after each select statement*/
CREATE PROCEDURE movieDirectors()
BEGIN
	select distinct director from moviesInfo where year > 2000
    group by director
    having SUM(oscars) > 2
    order by director asc;
END