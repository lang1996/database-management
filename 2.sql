SELECT DISTINCT P.CNO FROM PREREQUISITE P
WHERE P.CNO IN
(SELECT CNO FROM CLASS INNER JOIN PROFESSOR
ON CLASS.INSTRUCTOR = PROFESSOR.EID
WHERE PROFESSOR.DEPT = "COMPUTER SCIENCE")
AND
P.PREREQ IN
(SELECT CNO FROM CLASS INNER JOIN PROFESSOR
ON CLASS.INSTRUCTOR = PROFESSOR.EID
WHERE PROFESSOR.DEPT <> "COMPUTER SCIENCE");
