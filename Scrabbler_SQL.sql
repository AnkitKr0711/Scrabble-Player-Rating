create database scrabble;
use scrabble;
--- understanding the DataFrame

--- Changing Datatype from string to datetime for player_games table column created_at

select * from player_games;

Alter Table player_games ALTER COLUMN created_at datetime;

--- Editing table player_train making the table more comprehensive

select * from player_train;

![sql1](https://user-images.githubusercontent.com/111516810/203348653-393c786f-ae8a-4a8b-b735-0c4df88175e9.jpg)

with tempo as (
select pt1.game_id as game_id, pt1.nickname as Bot_name, pt1.score as Bot_score, pt1.rating as Bot_rating,
pt2.nickname as player_name, pt2.score as player_score, pt2.rating as player_rating
from player_train as pt1 join player_train as pt2 on pt1.game_id = pt2.game_id)
select * from tempo where (Bot_name like '%Bot') and (Bot_name!=player_name)order by game_id

![sql2](https://user-images.githubusercontent.com/111516810/203348921-0ed4597b-79f6-469b-bebd-78330fc118cd.jpg)

--- Editing table player_test making the making the table more comprehensive

select * from player_test;

with tempo as (
select pt1.game_id as game_id, pt1.nickname as Bot_name, pt1.score as Bot_score, pt1.rating as Bot_rating,
pt2.nickname as player_name, pt2.score as player_score, pt2.rating as player_rating
from player_test as pt1 join player_test as pt2 on pt1.game_id = pt2.game_id)
select * from tempo where (Bot_name like '%Bot') and (Bot_name!=player_name)order by game_id

select * from player_turns;



