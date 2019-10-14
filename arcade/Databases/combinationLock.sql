/*Please add ; after each select statement*/
CREATE PROCEDURE combinationLock()
BEGIN
	select ROUND(EXP(SUM(log(CHAR_LENGTH(characters))))) as combinations from discs;
END