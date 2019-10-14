/*Please add ; after each select statement*/
CREATE PROCEDURE newsSubscribers()
BEGIN
	select distinct subscriber 
    from full_year
    where newspaper like "Daily%" or newspaper like "%Daily%" or newspaper like "%Daily"
    UNION
    select distinct subscriber 
    from half_year
    where newspaper like "Daily%" or newspaper like "%Daily%" or newspaper like "%Daily"
    order by subscriber asc;
END