/*Please add ; after each select statement*/
CREATE PROCEDURE mischievousNephews()
BEGIN
    Select Weekday(mischief_date) as weekday, mischief_date, author, title From mischief
    Order by weekday, FIELD(author, "Huey", "Dewey", "Louie"), mischief_date, LEFT(title, 5);
END