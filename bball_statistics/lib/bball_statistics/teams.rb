# each team has a head coach, team record and players
class Teams

  attr_accessor :name
  attr_reader :head_coach, :team_record, :players

  @@all = []

  def initialize(team_name)
    @team_name = team_name
    @head_coach = head_coach
    @team_record = team_record
    @players = players
  end

  
end
