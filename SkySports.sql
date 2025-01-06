create database SkySports;
use SkySports;
show tables;

1.	Import both the .CSV files in Dbeaver under the database name Sky_Sports

select *from sky_sports;
select *from sports;

2.	Write an sql query to show all the UNIQUE team names 

select distinct team from sports;

select distinct team from sky_sports;

3.	Write an SQL query to show name of team which has rank 1 from group 7 

select team 
from sky_sports 
where 'rank' ='1' 
and 'group' ='7';

4.	Write an sql query to show count of all teams 

select count(team) as total
from sky_sports;

5.	Write an SQL query to show matches_played by each team

select distinct team, matches_played
from sky_sports;

6.	Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent

select *from sky_sports;

select team, (wins*100.0/matches_played) as wins_percent
from sky_sports;

select team, 100.0*(wins/matches_played) as wins_percent
from sky_sports;

7.	Write an SQL query to show which team has maximum goals_scored and their count

select team,goals_scored
from sky_sports
where goals_scored = (select max(goals_scored) from sky_sports);

8.	 Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team

select *from sky_sports;

select team,draws,matches_played,(100.0* draws/matches_played) as percent_draws
from sky_sports;

select team, round(100.00* (draws/matches_played), 2)
from sky_sports;

9.	 Write an SQL query to show which team has minimum goals_scored and their count

select team, goals_scored
from sky_sports 
where goals_scored = (select min(goals_scored) from sky_sports);

10.	 Write an SQL query to show percent of losses with respect to matches_played by each team in ascending 
 order by losses and name the resulting column as losses_percent

select team,matches_played,losses, (100.0* losses/matches_played) as losses_percent
from sky_sports;
 
11.	Write an SQL query to show the average goal_difference 

select *from sky_sports;

select avg(goal_difference)
from sky_sports;

12.	 Write an SQL query to show name of the team where points are 0 

select team, points
from sky_sports
where points = 0;

13.	Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded

select * from sky_sports
where expected_goal_scored < exp_goal_conceded;

14.	Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5

select team, exp_goal_difference 
from sky_sports 
where exp_goal_difference between -0.5 and 0.5;

15.	Write an SQL query to show all data in ascending order by exp_goal_difference_per_90

select exp_goal_difference_per_90
from sky_sports
order by exp_goal_difference_per_90 asc;

16.	Write an SQL query to show team which has maximum number of players_used

select *from sports;

select team, players_used
from sports
order by players_used desc limit 1;

select team, players_used
from sports
where players_used = (select max(players_used) from sports);


17.	Write an SQL query to show each team name and avg_age in ascending order by avg_age

select team,avg_age
from sports
order by avg_age asc;

18.	Write an sql query to show average possession of teams 

select avg(possession)
from sports;

19.	Write a SQL query to show team which has played atleast 5 games

select team,games
from sports 
where games >=5;

20.	Write an SQL query to show all data for which minutes is greater than 600

select *from sports
where minutes >600;

21.	Write an SQL query to show team, goals, assists in ascending order by goals

select team,goals,assists
from sports 
order by goals asc;

22.	Write an SQL query to show team, pens_made, pens_att in descending order by pens_made

select team,pens_made,pens_att
from sports 
order by pens_made desc;

23.	Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 

select *from sports;

select team,cards_yellow,cards_red
from sports
where cards_red =1
order by cards_yellow asc;

24.	Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 

select team,goals_per90,goals,assists_per90,goals_assists_per90
from sports
order by goals_assists_per90 desc;

25.	Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 
 
select team,goals_pens_per90,goals_assists_pens_per90
from sports 
order by goals_assists_pens_per90 asc;

26.	Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 
30 in ascending order by shots_on_target_pct 
 
select team,shots, shots_on_target,shots_on_target_pct
from sports 
where shots_on_target_pct <30
order by shots_on_target_pct asc;

27.	Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium

select *from sports;

select team,shots_per90,shots_on_target_per90
from sports
where team='Belgium';

28.	 Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, 
average_shot_distance in descending order by average_shot_distance 

select team,goals_per_shot,goals_per_shot_on_target,average_shot_distance
from sports 
order by average_shot_distance desc;

29.	Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 

select team,errors,touches
from sports 
where errors = 0 and touches <1500;

30.	Write an SQL query to show team, fouls which has maximum number of fouls

select team,fouls
from sports 
where fouls = (select max(fouls) as max from sports);

31.	Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20

select team,offsides
from sports 
where offsides <10 or offsides >20;

32.	Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct 

select team, aerials_won,aerials_lost, aerials_won_pct
from sports 
order by aerials_won_pct desc;

33.	Write an SQL query to show number of teams each group has!

select distinct team,players_used
from sports; 

34.	Write a SQL query to show team names group 6 has

select *from sky_sports;

select team,'group'
from sky_sports 
where 'group'=6;

35.	Write an SQL query to show Australia belongs to which group 

select team,'group'
from sky_sports ss 
where team='Australia';

36.	Write an SQL query to show group, average wins by each group 

select *from sky_sports;
 
select 'group',avg(wins)as avgwin
from sky_sports;

37.	Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored

select distinct 'group', max(expected_goal_scored) as maxgoal
from sky_sports 
group by 'group'
order by maxgoal asc;

38.	Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 

select 'group', min(exp_goal_conceded) as mingoal
from sky_sports 
group by exp_goal_conceded  
order by exp_goal_conceded desc;

39.	Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90

select *from sky_sports;

select 'group', avg(exp_goal_difference_per_90) as avggoaldiff90
from sky_sports
group by exp_goal_difference_per_90 
order by exp_goal_difference_per_90 asc;

40.	Write an SQL query to show which team has equal number of goals_scored and goals_against 

select team,goals_scored,goals_against
from sky_sports 
where goals_scored = goals_against;


41.	Write an SQL query to show which team has maximum players_used 

select team, max(players_used) as maxplayer
from sports
group by team
order by team asc limit 1;

select team, players_used
from sports 
where players_used = (select max(players_used) as maxplayer from sports);

42.	Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 

select *from sports;

select team,players_used,avg_age,games,minutes
from sports s where minutes <500 and minutes >200;

43.	Write an SQL query to show all data of group_stats in ascending order BY points

select *from sports
order by points_per_game asc;

select *from sky_sports
order by points asc;

44.	Write an SQL query to show ALL UNIQUE team in ascending order by team

select distinct team
from sports
order by team asc;

45.	 Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 

select ss.`group`,avg(s.avg_age) as age
from sports s join sky_sports ss 
group by ss.`group`
order by age desc;


46.	Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.

select ss.`group`,sum( s.fouls) Total_fouls  from sky_sports ss join sports s 
on s.team=ss.team 
group by `group`
order by total_fouls;

47.	Write an SQL query to show total number of games for each group and arrange it in descending order by games. 

select ss.`group`, sum(s.games) as Total_game from sports s join sky_sports ss  on s.team=ss.team group by ss.`group` order by  Total_game desc;

48.	Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 

select ss.`group`, sum(s.players_used) as Total_Players from sports s join sky_sports ss on s.team=ss.team group by ss.`group` order by Total_players;

49.	Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.

select ss.`group`, sum(s.offsides) as Total_Offsides from sports s join sky_sports ss on s.team=ss.team group by ss.`group` order by  Total_Offsides;

50.	Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.

select ss.`group`, avg(s.passes_pct) as avgpasses from sports s join sky_sports ss on s.team=ss.team group by ss.`group` order by  avgpasses desc;

51.	Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.

select ss.`group`, avg(s.goals_per90) as avggoals from sports s join sky_sports ss on s.team=ss.team group by ss.`group` order by  avggoals;
