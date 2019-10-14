/*Please add ; after each select statement*/
CREATE PROCEDURE salaryDifference()
BEGIN

    set @min = (
        SELECT sum(salary)
        from employees
        WHERE salary = (Select min(salary) as min_salary from employees)
    );
    
    set @max = (
        SELECT sum(salary)
        from employees
        WHERE salary = (Select max(salary) as max_salary from employees)
    );
	
    IF @max is NULL THEN
        SET @max = 0.00;
    END IF;
    
    IF @min is NULL THEN
        SET @min = 0.00;
    END IF;
    
    SELECT distinct TRUNCATE(@max - @min, 0) as difference;
END