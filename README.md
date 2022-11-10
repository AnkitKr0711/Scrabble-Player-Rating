# Scrabble Player Rating

The dataset is combination of 3 tables name as game turns and train/test includes information about 73,000 Scrabble games played by three bots on Woogles.io: bot can be set for beginner intermediate and advanced level The games are between the bots and their opponents who are regular registered users. by using metadata about the games as well as turns in each game (players' racks and where and what they played) to predict the rating of the player

![OIP](https://user-images.githubusercontent.com/111516810/201037135-d8bbadb3-f640-46ff-8a81-bb297b3fce0d.jpg)


MetaData

games.csv - metadata about games (e.g., who went first, time controls)

Following are th feature inside  games table

  game_id :- Unique id for the game
  
  first :- Which player went first
  
  time_control_name :- Name of time control used ("regular", "rapid", or "blitz")
  
  game_end_reason :- How the game ended
  
  winner :- Who won the game
  
  created_at :- When the game was created
  
  lexicon :- English lexicon used in the game ("CSW19", "NWL20", "CSW21")
  
  initial_time_seconds :- Time limit each player has in the game (defines the time control name)
  
  increment_seconds :- Time increment each player gets each time they play a turn
  
  rating_mode :- Whether the game counts towards player ratings or not ("RATED", "CASUAL")
  
  max_overtime_minutes :- How far past the initial time limit players can go before they timeout
  
  game_duration_seconds :- How long the game lasted
  
turns.csv - all turns from start to finish of each game

  game_id:- Unique id for the game
  
  turn_number:- The turn number in the game
  
  nickname:- Player's username on woogles.io
  
  rack:- Player's current rack
  
  location:- Where the player places their turn on the board (NA for games in the test set or if the player didn't make a play, e.g., if they exchanged)
  
  move:- Tiles the player laid (NA for games in the test set; "--" if the turn_type was "Pass"; "(challenge)" if the turn_type was "Challenge"; "-" plus tiles exchanged if the turn_type was "Exchange"; at the end of the game, remaining tiles in a player's rack are in parentheses)
  
  points:- Points the player earned (or lost) in their turn
  
  score:- Player's total score at the time of the turn
  
  turn_type:- Type of turn played ("Play", "Exchange", "Pass", "Six-Zero Rule" (i.e., a game that ends when players pass 3 turns in a row each), "Challenge")
  
train.csv/test.csv - final scores and ratings for each player in each game; ratings for each player are as of BEFORE the game was played

  game_id:- Unique id for the game
  nickname:- Player's username on woogles.io
  score:- Final score for each player for each game.
  rating:- Player's rating on woogles.io BEFORE the game was played; 
