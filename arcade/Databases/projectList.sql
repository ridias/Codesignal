/*Please add ; after each select statement*/
CREATE PROCEDURE projectList()
BEGIN
	Select project_name, team_lead, income FROM Projects Order By internal_id ASC;
END