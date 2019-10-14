DROP FUNCTION IF EXISTS response;
CREATE FUNCTION response(name VARCHAR(40)) RETURNS VARCHAR(200) DETERMINISTIC
BEGIN
    SET @mayus = TRUE;
    SET @i = 1;
    SET name = LOWER(name);
    
    WHILE @i <= LENGTH(name) do
        IF @mayus = TRUE THEN
            SET name = CONCAT(SUBSTRING(name, 1, @i - 1), UPPER(SUBSTRING(name, @i, 1)), SUBSTRING(name, @i+1, LENGTH(name)));
            SET @mayus = FALSE;
        ELSEIF SUBSTRING(name, @i, 1) = " " THEN
            SET @mayus = True;
        END IF;
        SET @i = @i + 1;
    END WHILE;

    RETURN CONCAT("Dear ", name, "! We received your message and will process it as soon as possible. Thanks for using our service. FooBar On! - FooBarIO team.");
END;

CREATE PROCEDURE customerMessages()
BEGIN
    SELECT id, name, response(name) AS response
    FROM customers;
END;