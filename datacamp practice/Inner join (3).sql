'''
Joining two tables

select c.code, c.name, c.region, p.year, p.fertility_rate
from countries as c
inner join populations as p
on  c.code = p.country_code

'''


'''
Joining two tables with the third one

-- Select fields
SELECT c.code, c.name, c.region, e.year, p.fertility_rate, e.unemployment_rate
  -- From countries (alias as c)
  FROM countries AS c
  -- Join to populations (as p)
  INNER JOIN populations AS p
    -- Match on country code
    ON c.code = p.country_code

  -- Join to economies (as e)
  INNER JOIN economies as e 
    -- Match on country code
    ON c.code = e.code

'''

''' Final '''

-- Select fields
SELECT c.code, name, region, e.year, fertility_rate, unemployment_rate
  -- From countries (alias as c)
  FROM countries AS c
  -- Join to populations (as p)
  INNER JOIN populations AS p
    -- Match on country code
    ON c.code = p.country_code
  -- Join to economies (as e)
  INNER JOIN economies AS e
    -- Match on country code and year
    ON c.code = e.code and e.year = p.year

