-- 6.
-- To JOIN game with eteam you could use either
-- game JOIN eteam ON (team1=eteam.id) or game JOIN eteam ON (team2=eteam.id)

-- Notice that because id is a column name in both game and eteam you must specify eteam.id instead of just id

-- List the the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.

SELECT x.mdate, teamname
FROM game as x
JOIN eteam as y
ON x.team1 = y.id
WHERE y.coach LIKE '%Fernando Santos%'

-- 7.
-- List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'

select x.player
from goal as x
join game as y
on y.id = x.matchid
where stadium like '%National Stadium%' or 
stadium like '% Warsaw%'

-- 8.
-- The example query shows all goals scored in the Germany-Greece quarterfinal.
-- Instead show the name of all players who scored a goal against Germany.

-- HINT
-- Select goals scored only by non-German players in matches where GER was the id of either team1 or team2.

-- You can use teamid!='GER' to prevent listing German players.

-- You can use DISTINCT to stop players being listed twice.
select distinct y.player
from game as x join goal as y
on x.id = y.matchid
where (x.team1 like '%GER%' or x.team2 like '%GER%')
and y.teamid not like '%GER%'

-- 9.
-- Show teamname and the total number of goals scored.
-- COUNT and GROUP BY
SELECT teamname, count(*)
  FROM eteam JOIN goal ON id=teamid
GROUP BY teamname

SELECT x.teamname, count(*)
FROM eteam as x
JOIN goal as y 
ON x.id=y.teamid
GROUP BY teamname

-- 10.
-- Show the stadium and the number of goals scored in each stadium.
select stadium, count(*) 
from game as x
join goal as y
on x.id = y.matchid
where (x.team1 = y.teamid) or (x.team2 = y.teamid)
group by stadium

-- 11.
-- For every match involving 'POL', show the matchid, date and the number of goals scored.
SELECT y.matchid, x.mdate, count(y.matchid)
from game x 
join goal y 
on y.matchid = x.id
where (x.team1 = 'POL') or (x.team2 = 'POL')
group by matchid, mdate

-- 12.
-- For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'
select y.matchid, x.mdate, count(matchid)
from game as x
join goal as y
on x.id = y.matchid
where teamid = 'GER'
group by matchid, mdate

-- 13.
-- List every match with the goals scored by each team as shown. This will use "CASE WHEN" which has not been explained in any previous exercises.
-- mdate team1 score1  team2 score2
-- 1 July 2012 ESP 4 ITA 0
-- 10 June 2012  ESP 1 ITA 1
-- 10 June 2012  IRL 1 CRO 3
-- ...
-- Notice in the query given every goal is listed. If it was a team1 goal then a 1 appears in score1, otherwise there is a 0. You could SUM this column to get a count of the goals scored by team1. Sort your result by mdate, matchid, team1 and team2.

SELECT x.mdate, 
  x.team1, sum(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  x.team2, sum(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game as x
  LEFT JOIN goal as y ON x.id = y.matchid
  group by mdate,matchid, team1, team2

