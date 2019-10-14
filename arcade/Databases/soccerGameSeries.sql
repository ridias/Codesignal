/*Please add ; after each select statement*/

/* winner if more games won than the other team */
/* if same number of wins then better goal difference */

/* if same number of goal difference, the team who has more goals as visited*/

CREATE PROCEDURE soccerGameSeries()
BEGIN
	SET @teamOneWins = (SELECT count(*) from scores where first_team_score > second_team_score);
    SET @teamTwoWins = (SELECT count(*) from scores where first_team_score < second_team_score);
    SET @differenceGoalsTeamOne = (SELECT sum(first_team_score - second_team_score) from scores);
    SET @differenceGoalsTeamTwo = (SELECT sum(second_team_score - first_team_score) from scores);
    SET @goalsVisitTeamOne = (SELECT sum(first_team_score) from scores where match_host = 2);
    SET @goalsVisitTeamTwo = (Select sum(second_team_score) from scores where match_host = 1);
    
    SET @winner = 0;
    
    IF @teamOneWins > @teamTwoWins THEN
        SET @winner = 1;
    ELSEIF @teamOneWins < @teamTwoWins THEN
        SET @winner = 2;
    ELSEIF @teamOneWins = @teamTwoWins and @differenceGoalsTeamOne > @differenceGoalsTeamTwo THEN
        SET @winner = 1;
    ELSEIF @teamOneWins = @teamTwoWins and @differenceGoalsTeamOne < @differenceGoalsTeamTwo THEN
        SET @winner = 2;
    ELSEIF @teamOneWins = @teamTwoWins and @differenceGoalsTeamOne = @differenceGoalsTeamTwo and @goalsVisitTeamOne > @goalsVisitTeamTwo THEN
        SET @winner = 1;
    ELSEIF @teamOneWins = @teamTwoWins and @differenceGoalsTeamOne = @differenceGoalsTeamTwo and @goalsVisitTeamOne < @goalsVisitTeamTwo THEN
        SET @winner = 2;
    
    END IF;
    
    select @winner as winner;
END