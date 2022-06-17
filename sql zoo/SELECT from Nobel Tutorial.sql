## Question-1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

## Question-2
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'

## Question-3
select yr, subject from nobel
where winner like 'Albert Einstein'

## Question-4
select winner from nobel
where subject like 'peace' and yr >= 2000

## Question-5
select * from nobel
where yr between 1980 and 1989 and subject like 'Literature'

## Question-6
SELECT * FROM nobel
where winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                 'Barack Obama'
)

## Question-7
select winner from nobel
WHERE winner LIKE 'John%'

## Question-8
select yr, subject, winner from nobel 
where (subject like 'physics' and yr = 1980)
or (subject like 'chemistry' and yr = 1984)

## Question-9
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 AND subject NOT LIKE 'Chemistry' AND subject NOT LIKE 'Medicine'

## Question-10
select yr, subject, winner from nobel 
where subject like 'Medicine' and yr < 1910  
or subject like 'Literature' and yr >= 2004

## Question-11
select * from nobel
where winner like 'Peter Grünberg'