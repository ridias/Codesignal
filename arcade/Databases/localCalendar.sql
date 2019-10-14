/*Please add ; after each select statement*/
CREATE PROCEDURE localCalendar()
BEGIN
	
    SELECT e.event_id, IF(s.hours = 24, DATE_FORMAT(DATE_ADD(date, INTERVAL s.timeshift MINUTE), '%Y-%m-%d %H:%i') ,DATE_FORMAT(DATE_ADD(date, INTERVAL s.timeshift MINUTE), '%Y-%m-%d %h:%i %p')) as formatted_date
    from events as e, settings as s
    where s.user_id = e.user_id
    order by e.event_id;
    
    #IF(s.hours = 24, FORMAT(DATE_ADD(date, INTERVAL s.timeshift MINUTE), 'YYYY-MM-DD hh:ss tt'), FORMAT(DATE_ADD(date, INTERVAL s.timeshift MINUTE), 'YYYY-MM-DD HH:ss')) as date
                                               
END