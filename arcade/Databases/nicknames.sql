CREATE PROCEDURE nicknames()
BEGIN
	UPDATE reservedNicknames
    set id = concat("rename - ", id), nickname = concat("rename - ", nickname)
    WHERE LENGTH(nickname) <> 8;

    SELECT * FROM reservedNicknames ORDER BY id;
END
