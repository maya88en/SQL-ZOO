---1. Select the code which produces this table:
--name	population
--Bahrain	1234571
--Swaziland	1220000
--Timor-Leste	1066409

SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000

---2. 
SELECT name,length(name)
FROM world
WHERE length(name)=5 and region='Europe'

--name	length(name)
--Italy	   5
--Malta	   5
--Spain	   5

--3. 
SELECT name, area*2 FROM world WHERE population = 64000

--Andorra	936

--4. Select the code that would show the countries with an area larger than 50000 and a population smaller than 10000000

SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000

--5. Select the code that shows the population density of China, Australia, Nigeria and France

SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')


