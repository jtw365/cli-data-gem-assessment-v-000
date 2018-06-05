require 'pry'
class BballStatistics::CLI

  def call
    Scraper.new.scrape_teams
    # puts "------------"
    # Scraper.new.scrape_team_data
    # puts "------------"
    # Scraper.new.scrape_players
    # Scraper.new.scrape_season_leaders

  end


end
