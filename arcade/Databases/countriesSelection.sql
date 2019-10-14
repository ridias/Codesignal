/*Please add ; after each select statement*/
CREATE PROCEDURE countriesSelection()
BEGIN
	Select name, continent, population from countries where continent="Africa";
END