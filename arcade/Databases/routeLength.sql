/*Please add ; after each select statement*/
CREATE PROCEDURE routeLength()
BEGIN
	SELECT Round(Sum(ST_Distance(Point(result.x, result.y), Point(result.x2, result.y2))), 9) as total
    
    FROM (Select c1.x, c1.y, c2.x as x2, c2.y as y2 from cities as c1 inner join cities as c2 on c1.id = c2.id + 1) as result;
END