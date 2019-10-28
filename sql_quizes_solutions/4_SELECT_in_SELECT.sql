--1. List each country name where the population is larger than that of 'Russia'.
----- world(name, continent, area, population, gdp)

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

--2. Show the names of countries in Europe with a per capita GDP greater than 'United Kingdom'.

SELECT name
FROM world
WHERE continent = 'Europe' AND
      gdp/population>(
   SELECT gdp/population 
   FROM world WHERE name='United Kingdom'
)

--3. Select the code that shows the countries with population smaller than Russia but bigger than Denmark

SELECT name FROM bbc
 WHERE population < (SELECT population FROM bbc WHERE name='Russia')
   AND population > (SELECT population FROM bbc WHERE name='Denmark')
