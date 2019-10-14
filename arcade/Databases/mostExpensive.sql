/*Please add ; after each select statement*/
CREATE PROCEDURE mostExpensive()
BEGIN
	Select name 
    From Products 
    Order by quantity * price desc, name asc
    limit 1;
END