class SportsTeams
  attr_reader :team_name, :players, :points

  attr_accessor :coach

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def add_player(player)
    @players << player
  end

  # def check_for_player(player)
  #   for person in @players
  #     if person == player
  #       return true
  #     else
  #       return false
  #     end
  #   end
  # end

#refactored:
  def check_for_player(player)
    @players.index(player) != nil
  end



  def result(outcome)
    result_hash = { "win"=> 3, "draw"=> 1, "lose"=>0}
    @points += result_hash[outcome]
  end

  ##first attempt
  # def result(outcome)
  #   @points += 3 if outcome == "win"
  # end

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach(name)
  #   @coach = name
  # end

end
