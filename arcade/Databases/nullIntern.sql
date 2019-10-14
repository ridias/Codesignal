/*Please add ; after each select statement*/
CREATE PROCEDURE nullIntern()
BEGIN
    select count(*) as number_of_nulls from departments  
    where TRIM(LOWER(description)) = "null" or TRIM(LOWER(description)) = "nil" or TRIM(LOWER(description)) = "-" or description is null;
END