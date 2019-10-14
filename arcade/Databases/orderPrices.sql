DROP FUNCTION IF EXISTS get_total;
CREATE FUNCTION get_total(items VARCHAR(45)) RETURNS INT DETERMINISTIC
BEGIN
    SET @i = 1;
    SET @num = "";
    SET @total = 0;
    WHILE @i <= LENGTH(items) do
        
        while @i <= LENGTH(items) and SUBSTRING(items, @i, 1) != ";" do
            SET @num = CONCAT(@num, SUBSTRING(items, @i, 1));
            SET @i = @i + 1;
        END WHILE;
        
        IF SUBSTRING(items, @i, 1) = ";" THEN
                SET @calc = (SELECT price from item_prices WHERE id = @num);
                SET @total = @total + @calc; 
                set @num = "";
        END IF;

        SET @i = @i + 1;

        
    END WHILE;
    
    IF LENGTH(@num) > 0 THEN
        SET @calc = (SELECT price from item_prices WHERE id = @num);
        SET @total = @total + @calc;  
    END IF;
    RETURN @total;
END;

CREATE PROCEDURE orderPrices()
BEGIN
    SELECT id, buyer, get_total(items) AS total_price
    FROM orders
    ORDER BY id;
END;