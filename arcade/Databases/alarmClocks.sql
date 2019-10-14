/*Please add ; after each select statement*/
CREATE PROCEDURE alarmClocks()
BEGIN
	SET @initial_date = (SELECT input_date from userInput);
    DROP TABLE IF EXISTS output;
    
    CREATE TEMPORARY TABLE output(alarm_date datetime);
    
    set @next_year = (YEAR(@initial_date) + 1);
    while YEAR(@initial_date) < @next_year do
        INSERT INTO output values(@initial_date);
        SET @initial_date = DATE_ADD(@initial_date, INTERVAL 7 DAY);
    END WHILE;
    
    SELECT * FROM output;
        
END