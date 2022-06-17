SELECT name, continent, code, surface_area,
    -- First case
    CASE WHEN surface_area > 2000000 THEN 'large'
        -- Second case
        WHEN surface_area between 350000 and 2000000 THEN 'medium'
        -- Else clause + end
        ELSE 'small' END
        -- Alias name
        AS geosize_group
-- From table
FROM countries;