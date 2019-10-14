/*Please add ; after each select statement*/
CREATE PROCEDURE sunnyHolidays()
BEGIN
	select holidays.holiday_date as ski_date from holidays inner join weather on holidays.holiday_date = weather.sunny_date;
END