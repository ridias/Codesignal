/*Please add ; after each select statement*/
CREATE PROCEDURE dateFormatting()
BEGIN
	select str_to_date(date_str, "%Y-%m-%d") as date_iso from documents;
END