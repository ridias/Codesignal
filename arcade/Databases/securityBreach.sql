/*Please add ; after each select statement*/
CREATE PROCEDURE securityBreach()
BEGIN
	select first_name, second_name, attribute
    from users
    where attribute REGEXP CONCAT(".%", BINARY(first_name), '_', BINARY(second_name), "%") 
    order by attribute;
END