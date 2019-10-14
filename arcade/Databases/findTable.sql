/*Please add ; after each select statement*/
CREATE PROCEDURE findTable()
BEGIN
	#SELECT * FROM INFORMATION_SCHEMA.COLUMNS order by TABLE_NAME; 
    
    SELECT TABLE_NAME as tab_name, COLUMN_NAME as col_name, DATA_TYPE as data_type 
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME REGEXP '^e.*s$'
    order by TABLE_NAME, COLUMN_NAME;
END