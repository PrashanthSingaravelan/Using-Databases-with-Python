## Question-1
select name from world
where continent like '%Europe%' and  (gdp/population) > 
(select gdp/population from world 
where name like '%United Kingdom%')

## Question-2
select name from world
where continent like '%Europe%' and  gdp/population > 
(select gdp/population from world 
where name like '%United Kingdom%')


## Question-3
select name, continent from world 
where continent in
(select continent from world
where name in ('Argentina', 'Australia'))
order by name

## Question-4
select name, population from world
where population > (select population from world where name = 'United Kingdom')
and population < (select population from world where name = 'Germany')

## Question-5
SELECT name, 
CONCAT(ROUND(100* population/(SELECT population FROM world 
                              WHERE name = 'Germany'))
                , '%')
FROM world
WHERE continent = 'Europe'

## Question-6
select name from world
where gdp >= all(select gdp from world where gdp>=0 and continent = 'Europe')
and continent!='Europe'

## Question-7  Correlated/Sunchronized Sub Query
SELECT continent, name, area 
FROM world x
  WHERE area >= ALL (SELECT area FROM world y
                     WHERE y.continent=x.continent
                     AND area>0)

## Question-8

## Question-9

## Question-10

25500100
80716000
