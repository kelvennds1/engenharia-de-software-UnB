class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  
  player1, player2 = game
  strategy_player1, strategy_player2 = player1[1].upcase, player2[1].upcase
  valid_strategies = ["R", "P", "S"]

  unless valid_strategies.include?(strategy_player1) && valid_strategies.include?(strategy_player2)
    raise NoSuchStrategyError
  end

  return player1 if strategy_player1 == strategy_player2

  winning_rules = {"R" => "S", "S" => "P", "P" => "R"}

  if winning_rules[strategy_player1] == strategy_player2
    player1
  else
    player2
  end
end

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a? String
    return rps_game_winner(tournament)
  end

  winner_a = rps_tournament_winner(tournament[0])
  winner_b = rps_tournament_winner(tournament[1])

  rps_game_winner([winner_a, winner_b])
end

# print(rps_tournament_winner([ 
#         [
#         [ ["Kristen", "P"], ["Dave", "S"] ],
#         [ ["Richard", "R"], ["Michael", "S"] ],
#         ],
#         [
#         [ ["Allen", "S"], ["Omer", "P"] ],
#         [ ["David E.", "R"], ["Richard X.", "P"] ]
#         ]
#       ])
#     )