/*Please add ; after each select statement*/
CREATE PROCEDURE importantEvents()
BEGIN
	select * from events order by weekday(event_date) asc, participants desc;
END