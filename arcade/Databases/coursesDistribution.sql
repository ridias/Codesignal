CREATE PROCEDURE coursesDistribution()
BEGIN
    ALTER TABLE groupcourses ADD FOREIGN KEY (course_id)
    REFERENCES courses(id) on delete cascade;

    ALTER TABLE groupexams ADD FOREIGN KEY (course_id)
    REFERENCES courses(id) on delete cascade;

    DELETE FROM courses WHERE name LIKE '%-toremove';


    SELECT group_id, course_id
      FROM groupcourses
     UNION
    SELECT group_id, course_id
      FROM groupexams
     ORDER BY group_id, course_id;
END