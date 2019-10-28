--1. List the films where the yr is 1962 [Show id, title]

SELECT id, title
 FROM movie
 WHERE yr=1962

--2. 
 SELECT title, yr 
   FROM movie, casting, actor 
  WHERE name='Robert De Niro' AND movieid=movie.id AND actorid=actor.id AND ord = 3

  --A Bronx Tale	1993
----Bang the Drum Slowly	1973
----Limitless	2011

--3. There are two sensible ways to connect movie and actor. They are:

--link the director column in movies with the primary key in actor
--connect the primary keys of movie and actor via the casting table

--4. Select the statement that lists all the actors that starred in movies directed by Ridley Scott who has id 351

SELECT name
  FROM movie JOIN casting ON movie.id = movieid
  JOIN actor ON actor.id = actorid
WHERE ord = 1 AND director = 351

--5. Select the correct example of JOINing three tables

SELECT *
  FROM actor JOIN casting ON actor.id = actorid
  JOIN movie ON movie.id = movieid

--6. Select the statement that shows the list of actors called 'John' by order of number of movies in which they acted

SELECT name, COUNT(movieid)
  FROM casting JOIN actor ON actorid=actor.id
 WHERE name LIKE 'John %'
 GROUP BY name ORDER BY 2 DESC

--7. 
 SELECT title 
   FROM movie JOIN casting ON (movieid=movie.id)
              JOIN actor   ON (actorid=actor.id)
  WHERE name='Paul Hogan' AND ord = 1

--"Crocodile" Dundee
--Crocodile Dundee in Los Angeles
--Flipper
--Lightning Jack