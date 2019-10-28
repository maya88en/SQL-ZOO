--1.. Change the query shown so that it displays Nobel prizes for 1950.

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

--- yr	subject	    winner
--1950	Chemistry	Kurt Alder
--1950	Chemistry	Otto Diels
--1950	Literature	Bertrand Russell
--1950	Medicine	Philip S. Hench
--1950	Medicine	Edward C. Kendall
--1950	Medicine	Tadeus Reichstein
--1950	Peace	    Ralph Bunche
--1950	Physics	    Cecil Powell 

--2. Show who won the 1962 prize for Literature.

SELECT winner
FROM nobel
WHERE yr = 1962
    AND subject = 'Literature'

--3. Show the year and subject that won 'Albert Einstein' his prize.

SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

--4. Give the name of the 'Peace' winners since the year 2000, including 2000.

SELECT winner
FROM nobel
WHERE yr = 2000
    AND subject = 'Peace'

--5. Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.

SELECT yr, subject, winner
FROM nobel
WHERE yr BETWEEN 1980 and 1989
    AND subject = 'Literature'

--6. The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.

-----Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.

SELECT winner, subject
FROM nobel
WHERE yr=1984
--ORDER BY subject IN ('physics','chemistry'),subject,winner


--7. Select the code which shows the years when a Medicine award was given but no Peace or Literature award was

SELECT DISTINCT yr
FROM nobel
WHERE subject='Medicine'
    AND yr NOT IN(SELECT yr
    FROM nobel
    WHERE subject='Literature')
    AND yr NOT IN (SELECT yr
    FROM nobel
    WHERE subject='Peace')

--8. Pick the code which shows the name of winner's names beginning with C and ending in n

SELECT winner
FROM nobel
WHERE winner LIKE 'C%' AND winner LIKE '%n'

--9. Select the code that shows how many Chemistry awards were given between 1950 and 1960

SELECT COUNT(subject)
FROM nobel
WHERE subject = 'Chemistry'
    AND yr BETWEEN 1950 and 1960

--10. Pick the code that shows the amount of years where no Medicine awards were given

SELECT COUNT(DISTINCT yr)
FROM nobel
WHERE yr NOT IN (SELECT DISTINCT yr
FROM nobel
WHERE subject = 'Medicine')

--11.
SELECT subject, winner FROM nobel WHERE winner LIKE 'Sir%' AND yr LIKE '196%'


--Medicine	Sir John Eccles
--Medicine	Sir Frank Macfarlane Burnet

--12. Select the code which would show the year when neither a Physics or Chemistry award was given

SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT yr 
                   FROM nobel
                 WHERE subject IN ('Chemistry','Physics'))

--13. 
 SELECT subject, COUNT(subject) 
   FROM nobel 
  WHERE yr ='1960' 
  GROUP BY subject

--Chemistry	    1
--Literature	1
--Medicine	    2
--Peace	        1
--Physics	    1