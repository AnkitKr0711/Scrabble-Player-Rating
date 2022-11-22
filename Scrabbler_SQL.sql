create database scrabble;
use scrabble;
--- understanding the DataFrame

--- Changing Datatype from string to datetime for player_games table column created_at

select * from player_games;

Alter Table player_games ALTER COLUMN created_at datetime;

--- Editing table player_train making the table more comprehensive

select * from player_train;

with tempo as (
select pt1.game_id as game_id, pt1.nickname as Bot_name, pt1.score as Bot_score, pt1.rating as Bot_rating,
pt2.nickname as player_name, pt2.score as player_score, pt2.rating as player_rating
from player_train as pt1 join player_train as pt2 on pt1.game_id = pt2.game_id)
select * from tempo where (Bot_name like '%Bot') and (Bot_name!=player_name)order by game_id

--- Editing table player_test making the making the table more comprehensive

select * from player_test;

with tempo as (
select pt1.game_id as game_id, pt1.nickname as Bot_name, pt1.score as Bot_score, pt1.rating as Bot_rating,
pt2.nickname as player_name, pt2.score as player_score, pt2.rating as player_rating
from player_test as pt1 join player_test as pt2 on pt1.game_id = pt2.game_id)
select * from tempo where (Bot_name like '%Bot') and (Bot_name!=player_name)order by game_id

select * from player_turns;



