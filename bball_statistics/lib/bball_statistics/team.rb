# each team has a head coach, team record and players
class Team

  attr_accessor :team_name, :team_url, :id

  @@all = []
  @@id = 1

  def initialize(team_name, team_url)
    @team_name = team_name
    @team_url = team_url
    @id = @@id
    @@id += 1
    @@all << self
  end

  def self.all
    @@all
  end 



end
