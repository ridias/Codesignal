/*Please add ; after each select statement*/
CREATE PROCEDURE pastEvents()
BEGIN
    
    set @aux = (select event_date from Events order by event_date desc limit 1);

	select name, event_date from Events where datediff(@aux, event_date) <= 7 and datediff(@aux, event_date) > 0
    order by event_date desc;
END