--1. The total population and GDP of Europe.

SELECT SUM(population), SUM(gdp)
  FROM bbc
  WHERE region = 'Europe'

--2. What are the regions?

SELECT DISTINCT region FROM bbc

--3. Show the name and population for each country with a population of more than 100000000. Show countries in descending order of population.

SELECT name, population
  FROM bbc
  WHERE population > 100000000
  ORDER BY population DESC

--4. Show the total population of the world.

SELECT SUM(population)
FROM world

--SUM(population)
--7118632738

--5. Select the statement that shows the sum of population of all countries in 'Europe'

SELECT SUM(population) FROM bbc WHERE region = 'Europe'

--6. Select the statement that shows the number of countries with population smaller than 150000

SELECT COUNT(name) FROM bbc WHERE population < 150000

--7. Select the list of core SQL aggregate functions

---   AVG(), COUNT(), MAX(), MIN(), SUM()

--8.  Select the statement that shows the average population of 'Poland', 'Germany' and 'Denmark'

SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark')

--9. 
 SELECT region, SUM(area) 
   FROM bbc 
  GROUP BY region 
  HAVING SUM(area)<= 20000000

  --Americas	732240
--Middle East	13403102
--South America	17740392
--South Asia	9437710

--10. Select the statement that shows the name and population density of the country with the largest population

SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc)

--11. Select the statement that shows the medium population density of each region

SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region
