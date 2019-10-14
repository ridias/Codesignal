/*Please add ; after each select statement*/
CREATE PROCEDURE userCountries()
BEGIN
	select users.id, coalesce(cities.country, 'unknown') as country from users left join cities on cities.city = users.city
    order by users.id asc;
END