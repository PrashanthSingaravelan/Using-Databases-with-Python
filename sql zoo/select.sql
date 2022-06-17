SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

## Large Countries
SELECT name FROM world
WHERE population >= 200000000

## Per capita GDP
select name, gdp/population as 'per capita GDP'
from world
where population >= 200000000

## South America In millions
select name, population/1000000 as 'population (millions)'  from world
where continent like 'South America'

## France, Germany, Italy
select name, population from world
where name in ('France', 'Germany', 'Italy')

## United
select name from world
where name like '%United%'