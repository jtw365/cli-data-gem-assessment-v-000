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


  def scrape_players
    url = "https://www.basketball-reference.com/teams/TOR/2018.html"
    doc = Nokogiri::HTML(open(url))
    players = []
    doc.css("div#div_roster tr").css("tr").css("a").each do |player|
      puts player.text
    end # player name
    puts players

  end

end

# Scraper.new.scrape_teams
Scraper.new.scrape_players
