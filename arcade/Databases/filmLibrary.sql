/*Please add ; after each select statement*/
CREATE PROCEDURE filmLibrary()
BEGIN
	
    set @genre = (SELECT genre from movies group by genre order by count(genre) desc limit 1);
    
    select distinct a.actor, a.age from starring_actors as s, actor_ages as a, movies as m 
    WHERE m.movie = s.movie_name and s.actor = a.actor and m.genre = @genre
    order by a.age desc, a.actor;
END