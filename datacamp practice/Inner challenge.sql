SELECT country_code, size,
  CASE WHEN size > 50000000 THEN 'large'
       WHEN size > 1000000 THEN 'medium'
       ELSE 'small' END
       AS popsize_group
INTO pop_plus       
FROM populations
WHERE year = 2015;

-- Select fields
   Select c.name, c.continent, c.geosize_group, p.popsize_group
-- From countries_plus (alias as c)
   From countries_plus as c
  -- Join to pop_plus (alias as p)
     Join pop_plus as p
    -- Match on country code
     on c.code = p.country_code
-- Order the table    
order by geosize_group;