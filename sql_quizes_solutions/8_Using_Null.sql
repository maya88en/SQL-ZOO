--1. Note the INNER JOIN misses the teachers with no department and the departments with no teacher.

SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)

--2. 
SELECT name,
       CASE WHEN phone = 2752 THEN 'two'
            WHEN phone = 2753 THEN 'three'
            WHEN phone = 2754 THEN 'four'
            END AS digit
  FROM teacher

----shows following 'digit': 'four' for Throd

--3. List the teachers who have NULL for their department.

SELECT name FROM teacher
WHERE dept IS NULL

--4. Select the code which uses an outer join correctly.

SELECT teacher.name, dept.name FROM teacher LEFT OUTER JOIN dept ON (teacher.dept = dept.id)

--5. 
 SELECT name, 
      CASE 
       WHEN dept 
        IN (1) 
        THEN 'Computing' 
       ELSE 'Other' 
      END 
  FROM teacher

--Shrivell	Computing
--Throd	Computing
--Splint	Computing
--Spiregrain	Other
--Cutflower	Other
--Deadyawn	Other

--6. Using SELECT name, dept, COALESCE(dept, 0) AS result FROM teacher on teacher table will:

---- display 0 in result column for all teachers without department

--7. Select the correct statement that shows the name of department which employs Cutflower -

SELECT dept.name FROM teacher JOIN dept ON (dept.id = teacher.dept) WHERE teacher.name = 'Cutflower'

--8. Select out of following the code which uses a JOIN to show a list of all the departments and number of employed teachers

SELECT dept.name, COUNT(teacher.name) FROM teacher RIGHT JOIN dept ON dept.id = teacher.dept GROUP BY dept.name


