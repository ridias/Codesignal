/*Please add ; after each select statement*/
CREATE PROCEDURE placesOfInterest()
BEGIN
    Select country, 
    sum(IF (leisure_activity_type = "Adventure park", number_of_places, 0)) as adventure_park,
    sum(IF (leisure_activity_type = "Golf", number_of_places, 0)) as golf,
    sum(IF (leisure_activity_type = "River cruise", number_of_places, 0)) as river_cruise,
    sum(IF (leisure_activity_type = "Kart racing", number_of_places, 0)) as kart_racing
    from countryActivities
    group by country
    order by country;
END