#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

#Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
  #Ensuring the first line of games.csv is not read
  if [[ $year != "year" ]]
  then

    WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")

    if [[ -z $WIN_ID ]]
    then
      #Adding winning team to teams table
      WIN_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
      
      if [[ $WIN_RESULT == "INSERT 0 1" ]]
      then
        #Getting new team id:
        WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
        echo "Team added: $winner, id: $WIN_ID"
      fi
    fi

    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

    if [[ -z $OPP_ID ]]
    then
      #Adding opposing team to teams table
      OPP_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
      
      if [[ $OPP_RESULT == "INSERT 0 1" ]]
      then
        #Getting new team id:
        OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
        echo "Team added: $opponent, id: $OPP_ID"
      fi
    fi 

    #Inserting into games table
    INSERT_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $WIN_ID, $OPP_ID, $winner_goals, $opponent_goals)")

    if [[ $INSERT_RESULT == "INSERT 0 1" ]]
    then
      echo "Values added successfully"
    fi
    
  fi
done
