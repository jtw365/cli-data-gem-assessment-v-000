# each team has a head coach, team record and players
class Teams

  attr_accessor :name

  @@all = []

  def initialize(team_name, head_coach, team_record, players_names)
    @team_name = team_name
    @head_coach = head_coach
    @team_record = team_record
  end

  def team

  end
end
