require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper
  attr_accessor :doc
  #
  # def initialize(url)
  #   @doc = Nokogiri::HTML(open(url))
  # end

  def scrape_teams
    url = "https://www.basketball-reference.com/"
    doc = Nokogiri::HTML(open(url))
    teams = []
    doc.css("ul .division a").each do |team|
      puts team.text
    end
    puts teams
    # binding.pry
  end

  def scrape_team_data # toronto
    url = "https://www.basketball-reference.com/leagues/NBA_2018_leaders.html"
    doc = Nokogiri::HTML(open(url))
    binding.pry
    
    
    team_record = doc.css("div#meta p")[2].text.strip.split(" ")[1].split(",").join() # "59-23,"
    coach_name = doc.css("div#meta p")[4].text.strip.split(" ")[1..2].join(" ") #" Dwane Casey"
    puts "Coach: #{coach_name}"
    puts "Team record: #{team_record}"
    # binding.pry

  end


  def scrape_players
    url = "https://www.basketball-reference.com/teams/TOR/2018.html"
    doc = Nokogiri::HTML(open(url))
    players = []
    binding.pry # closest I can get is doc.css("div#all_per)game")
    doc.css("div#div_roster tr").css("tr").css("a").each do |player|
      puts player.text
    end # player name
    puts players

  end


  def scrape_season_leaders
    url = "https://www.basketball-reference.com/leagues/NBA_2018_leaders.html"
    doc = Nokogiri::HTML(open(url))
    binding.pry
    
    assist = doc.css("div#leaders_ast_per_g tr")
    assist.each {|a| puts a.css("td").text}
    
    puts "Assists Per Game Leaders"
    doc.css("div#leaders_ast_per_g tr td").each do |a| #assist leader
      puts a.text.strip
    end
  end
  
end

# Scraper.new.scrape_teams
puts "------------"
# Scraper.new.scrape_team_data
puts "------------"
# Scraper.new.scrape_players
Scraper.new.scrape_season_leaders
