DROP PROCEDURE IF EXISTS orderAnalytics;
CREATE PROCEDURE orderAnalytics()
BEGIN

    CREATE OR REPLACE VIEW order_analytics AS
    Select id, YEAR(order_date) as year, QUARTER(order_date) as quarter, type, quantity * price as total_price
    from orders;

    SELECT *
    FROM order_analytics
    ORDER by id;
END;