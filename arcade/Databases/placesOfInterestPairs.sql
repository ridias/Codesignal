/*Please add ; after each select statement*/
CREATE PROCEDURE placesOfInterestPairs()
BEGIN
	select map1.name as place1, map2.name as place2
    from sights as map1 cross join sights as map2
    where power(map1.x - map2.x, 2) + power(map1.y- map2.y, 2) < 25 and  map1.name < map2.name
    order by place1, place2;
END