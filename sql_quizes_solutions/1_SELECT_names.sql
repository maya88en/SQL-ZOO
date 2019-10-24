---1. Find the country that start with Y

SELECT name FROM world
  WHERE name LIKE 'Y%'

---2. Find the countries that end with y

SELECT name FROM world
  WHERE name LIKE '%Y'

---3. Luxembourg has an x - so does one other country. List them both.
----Find the countries that contain the letter x

SELECT name FROM world
  WHERE name LIKE '%x%'

---4. Iceland, Switzerland end with land - but are there others?
----Find the countries that end with land

SELECT name FROM world
  WHERE name LIKE '%land'

---5. Columbia starts with a C and ends with ia - there are two more like this.
---Find the countries that start with C and end with ia

SELECT name FROM world
  WHERE name LIKE 'c%ia'

---6. Greece has a double e - who has a double o?
---Find the country that has oo in the name

SELECT name FROM world
  WHERE name LIKE '%oo%'

---7. India and Angola have an n as the second character. You can use the underscore as a single character wildcard.

SELECT name FROM world
 WHERE name LIKE '_n%'
ORDER BY name

---Find the countries that have "t" as the second character.

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

---8. Cuba and Togo have four characters names.
----Find the countries that have exactly four characters.

SELECT name FROM world
 WHERE name LIKE '____'

---9. Select the code which gives the name of countries beginning with U

SELECT name
  FROM world
 WHERE name LIKE 'U%'

---10. Select the code which would reveal the name and population of countries in Europe and Asia

SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')

---11. Select the code which would give two rows

SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')

---12. 
SELECT name FROM world
 WHERE continent = 'South America'
   AND population > 40000000

--Brazil
--Colombia