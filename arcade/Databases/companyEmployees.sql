/*Please add ; after each select statement*/
CREATE PROCEDURE companyEmployees()
BEGIN
	Select * from departments CROSS JOIN employees
    order by dep_name, emp_name;
END