/*Please add ; after each select statement*/
CREATE PROCEDURE orderingEmails()
BEGIN
	select id, email_title,
        IF (POW(2, 0) <= size and size < POW(2, 20), CONCAT(FLOOR(size / 1024), " Kb"), CONCAT(FLOOR(size / 1024 / 1024), " Mb"))
    as short_size
    from emails
    order by size desc;
END