require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper
  attr_accessor :doc, :teams

  def scrape_teams
    url = "https://www.basketball-reference.com/teams/"
    doc = Nokogiri::HTML(open(url))
    @teams = []
    all_teams = doc.css("#all_teams_active tr.full_table")
    all_teams.each do |t|
      team = Team.new(t.css("a").text.strip, t.css("a").attribute("href").value)
      # binding.pry
      @teams << team
    end

    @teams.each {|team| puts team.id.to_s + ") " + team.team_name}

  end

  def scrape_team_data # toronto
    url = "https://www.basketball-reference.com/teams/TOR/2018.html"
    doc = Nokogiri::HTML(open(url))

    team_record = doc.css("div#meta p")[2].text.strip.split(" ")[1].split(",").join() # "59-23,"
    coach_name = doc.css("div#meta p")[4].text.strip.split(" ")[1..2].join(" ") #" Dwane Casey"
    puts "Coach: #{coach_name}"
    puts "Team record: #{team_record}"

  end


  def scrape_players
    url = "https://www.basketball-reference.com/teams/TOR/2018.html"
    doc = Nokogiri::HTML(open(url))
    players = []
    binding.pry
    doc.css("div#div_roster tr").css("tr").css("a").each do |player|
      puts player.text
    end

    player = doc.css("table#roster").css("tbody").css("tr")
    player.each do |a|
      puts a.text
      #92Lucas NogueiraC7-0241July 26, 1992br3
# 17Jonas ValanciunasC7-0265May 6, 1992lt5
# 55Delon WrightPG6-5183April 26, 1992us2University of Utah
# 24Norman PowellSG6-4215May 25, 1993us2University of California, Los Angeles
# 22Malachi RichardsonSG6-6205January 5, 1996us1Syracuse University
# 10DeMar DeRozanSG6-7221August 7, 1989us8University of Southern California
# 42Jakob PoeltlC7-0248October 15, 1995at1University of Utah
    end


  end


  def scrape_season_leaders
    url = "https://www.basketball-reference.com/leagues/NBA_2018_leaders.html"
    doc = Nokogiri::HTML(open(url))
    # binding.pry
    puts "Assists Per Game Leaders"

    puts "- - - - - - - - - - - -"
    assist = doc.css("div#leaders_ast_per_g tr")
    assist.each {|a| puts a.css("td").text}


    # doc.css("div#leaders_ast_per_g tr td").each do |a| #assist leader
    #   puts a.text.strip
    # end
  end

end
