--1. 
SELECT name, continent, population FROM world

--name	     continent	population
--Afghanistan	Asia	25500100
--Albania	Europe	2821977
--Algeria	Africa	38700000
--Andorra	Europe	76098
--Angola	Africa	19183590
--Bahamas	Caribbean	351461
--Bahrain	Asia	1234571
--Bangladesh	Asia	156557000
--Barbados	Caribbean	285000
--Bosnia and Herzegovina	Europe	3791622
--Burundi	Africa	9420248
--Cambodia	Asia	15184116
--Cameroon	Africa	20386799
--Canada	North America	35427524
--Congo, Democratic Republic of	Africa	69360000
--Denmark	Europe	5634437
--Djibouti	Africa	886000


--2. Show the name for the countries that have a population of at least 200 million.

SELECT name FROM world
WHERE population > 200000000

--3. Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, gdp/population
FROM world
WHERE population > 200000000

--4. Show the name and population in millions for the countries of the continent 'South America'. 
-----Divide the population by 1000000 to get population in millions.

SELECT name, population/1000000
  FROM world
 WHERE continent IN ('South America')

--4. Show the name and population for France, Germany, Italy

SELECT name, population FROM world
 WHERE name IN ('France', 'Germany', 'Italy')

--5. Show the countries which have a name that includes the word 'United'

SELECT name
  FROM world
 WHERE name LIKE '%United%'

--6. Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.

--Show the countries that are big by area or big by population. Show name, population and area.

SELECT name, population, area
  FROM world
 WHERE area > 3000000 OR population > 250000000

--7. Exclusive OR (XOR). Show the countries that are big by area or big by population but not both. Show name, population and area.

--Australia has a big area but a small population, it should be included.
--Indonesia has a big population but a small area, it should be included.
--China has a big population and big area, it should be excluded.
--United Kingdom has a small population and a small area, it should be excluded.

SELECT name, population, area
  FROM world
 WHERE area > 3000000 --XOR population > 250000000

 --8. Show the name and population in millions for the countries of the continent 'South America'. 
 -----Use the ROUND function to show the values to two decimal places.

 SELECT name,
       ROUND(population/1000000,1)
  FROM world
 WHERE continent IN ('South America')



