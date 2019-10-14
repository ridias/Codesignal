CREATE PROCEDURE restaurantInfo()
BEGIN
    ALTER TABLE restaurants 
    ADD COLUMN description VARCHAR(100) default "TBD",
    ADD COLUMN active TINYINT(1) default 1;

    SELECT * FROM restaurants ORDER BY id;
END
