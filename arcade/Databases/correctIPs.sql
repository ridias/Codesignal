/*Please add ; after each select statement*/
CREATE PROCEDURE correctIPs()
BEGIN
	select * from ips
    where (ip REGEXP '^[0-9]{1,4}.[0-9]{1,4}.[0-9]{2}.[0-9]{1,4}$' 
    or ip REGEXP '^[0-9]{1,4}.[0-9]{1,4}.[0-9]{1,4}.[0-9]{2}$') 
    and IS_IPV4(ip)
    order by id asc;
END