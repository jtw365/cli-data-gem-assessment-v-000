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
    teams
    # binding.pry
  end

end

Scraper.new.scrape_teams
