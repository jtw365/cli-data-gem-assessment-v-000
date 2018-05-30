# Ask about

  how to store the websites to pass in (for the different teams)
  
  -----
  
  
  
welcome message (have a small timer before displaying teams)

list nba teams
  ask user to select a team
    once a team is selected - show coach & team record for the season
    ask user if they want to see roster
      list roster
        ask user to select a player
          once a player is selected, list player and stats
            ex: Lebron James - 20PPG, 8APG, 7RPG - $20,000,000
            ask user if they want to see player stats or show list of teams
              if player stats
                list roster
              if teams
                list of teams
------
ask user if they want to see nba teams or season stat leaders
if nba teams
  list nba teams
    ask user to select a team
      show coach, team record and roster
      ask user if they want to see nba teams or season stat leaders
        if nba teams
          list nba teams
        elsif season stat leaders
          list season stat leaders
        else
          exit application
        
if season stat leaders
  list season stat leader categories
    user selects which category they want to see the season leaders (Points, Assists, Rebounds, Blocks, Steals, etc)
      list season leaders in that category
        ask user if they want to see more stat categories, nba teams or exit
          if stat categories
            show stat categories
              ask for user input
          if nba teams
            list nba teams
              ask for user input
          if exit
            close the application
      