# require "rock_pape_scis/version"

class RockPapeScis
  def self.play(input)
    player1 = input[:player_1]
    player2 = input[:player_2]

    if player1[:move] == player2[:move]
      return :tie
    end

    case player1[:move]
    when "rock"
      if player2[:move] == "paper"
        return player2[:name]
      elsif player2[:move] == "scissors" 
        return player1[:name]
      else
        puts "invalid move!"
      end
    when "paper"
      if player2[:move] == "scissors"
        return player2[:name]
      elsif player2["move"] == "rock" 
        return player1[:name]
      else
        puts "invalid move!"
      end
    when "scissors"
      if player2[:move] == "rock"
        return player2[:name]
      elsif player2[:move] == "paper" 
        return player1[:name]
      else
        puts "invalid move!"
      end
    else
      puts "invalid move!"
    end
  end
end
