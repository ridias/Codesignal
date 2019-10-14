/*Please add ; after each select statement*/
CREATE PROCEDURE itemCounts()
BEGIN
	select item_name, item_type, COUNT(item_name) as item_count from availableItems
    group by item_name, item_type
    order by item_type asc, item_name asc;
END