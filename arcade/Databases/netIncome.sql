/*Please add ; after each select statement*/
CREATE PROCEDURE netIncome()
BEGIN
	select YEAR(date) as year, quarter(date) as quarter, sum(profit) - sum(loss) as net_profit
    from accounting
    group by 1,2;
END