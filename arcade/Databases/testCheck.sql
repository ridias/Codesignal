CREATE PROCEDURE testCheck()
    SELECT id, IF (given_answer is null, "no answer", if(correct_answer = given_answer, "correct", "incorrect")) AS checks
    FROM answers
    ORDER BY id;
