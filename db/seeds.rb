# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# we require 'open-uri' to request the html files
require 'open-uri'
teams = [
  ["Atlanta Hawks", "Skyhawk", "Philips Arena"],
  ["Boston Celtics", "Lucky the Leprechaun", "TD Garden"],
  ["Brooklyn Nets", "BrooklyKnight", "Barclays Center"],
  ["Charlotte Hornets", "Hugo the Hornet", "Spectrum Center"],
  ["Chicago Bulls", "Benny the Bull", "United Center"],
  ["Cleveland Cavaliers", "Moondog", "Quicken Loans Arena"],
  ["Dallas Mavericks", "Champ", "American Airlines Center"],
  ["Denver Nuggets", "Rocky the Mountain Lion", "Pepsi Center"],
  ["Detroit Pistons", "Hooper", "The Palace of Auburn Hills"],
  ["Golden State Warriors", "Thunder", "Oracle Arena"],
  ["Houston Rockets", "Clutch", "Toyota Center"],
  ["Indiana Pacers", "Boomer the Panther", "Bankers Life Fieldhouse"],
  ["Los Angeles Clippers", "Chuck", "Staples Center"],
  ["Los Angeles Lakers", "Jack Nicholson", "Staples Center"],
  ["Memphis Grizzlies", "Griz", "FedExForum"],
  ["Miami Heat", "Burnie", "American Airlines Arena"],
  ["Milwaukee Bucks", "Bango", "BMO Harris Bradley Center"],
  ["Minnesota Timberwolves", "Crunch the Wolf", "Target Center"],
  ["New Orleans Pelicans", "Pierre the Pelican", "Smoothie King Center"],
  ["New York Knicks", "Spike Lee", "Madison Square Garden"],
  ["Oklahoma City Thunder", "Rumble the Bison", "Chesapeake Energy Arena"],
  ["Orlando Magic", "Stuff the Magic Dragon", "Amway Center"],
  ["Philadelphia 76ers", "Franklin the Dog", "Wells Fargo Center Philadelphia"],
  ["Phoenix Suns", "The Suns Gorilla", "Talking Stick Resort Arena"],
  ["Portland Trail Blazers", "Blaze the Trail Cat", "Moda Center"],
  ["Sacramento Kings", "Slamson the Lion", "Golden 1 Center"],
  ["San Antonio Spurs", "The Coyote", "AT&T Center"],
  ["Toronto Raptors", "Raptor", "Air Canada Centre"],
  ["Utah Jazz", "Jazz Bear", "Vivint Smart Home Arena"],
  ["Washington Wizards", "G. Wiz", "Verizon Center"]
]
# Here, we are using the Nokogiri gem (already comes with Rails), to scrape the ESPN website for the list of players.
# For more information on Nokogiri, you can go to their documentation or visit http://www.nokogiri.org/
atlanta_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/atl/atlanta-hawks")).css("td.sortcell")
boston_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/bos/boston-celtics")).css("td.sortcell")
brooklyn_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/bkn/brooklyn-nets")).css("td.sortcell")
charlotte_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/cha/charlotte-hornets")).css("td.sortcell")
chicago_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/chi/chicago-bulls")).css("td.sortcell")
cleveland_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/cle/cleveland-cavaliers")).css("td.sortcell")
dallas_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/dal/dallas-mavericks")).css("td.sortcell")
denver_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/den/denver-nuggets")).css("td.sortcell")
detroit_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/det/detroit-pistons")).css("td.sortcell")
warriors_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/gs/golden-state-warriors")).css("td.sortcell")
houston_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/hou/houston-rockets")).css("td.sortcell")
indiana_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/ind/indiana-pacers")).css("td.sortcell")
clippers_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/lac/la-clippers")).css("td.sortcell")
lakers_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/lal/los-angeles-lakers")).css("td.sortcell")
memphis_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/mem/memphis-grizzlies")).css("td.sortcell")
miami_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/mia/miami-heat")).css("td.sortcell")
milwaukee_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/mil/milwaukee-bucks")).css("td.sortcell")
minnesota_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/min/minnesota-timberwolves")).css("td.sortcell")
nola_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/no/new-orleans-pelicans")).css("td.sortcell")
knicks_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/ny/new-york-knicks")).css("td.sortcell")
okc_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/okc/oklahoma-city-thunder")).css("td.sortcell")
orlando_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/orl/orlando-magic")).css("td.sortcell")
phili_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/phi/philadelphia-76ers")).css("td.sortcell")
phoenix_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/phx/phoenix-suns")).css("td.sortcell")
portland_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/por/portland-trail-blazers")).css("td.sortcell")
sacramento_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/sac/sacramento-kings")).css("td.sortcell")
spurs_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/sa/san-antonio-spurs")).css("td.sortcell")
toronto_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/tor/toronto-raptors")).css("td.sortcell")
utah_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/utah/utah-jazz")).css("td.sortcell")
washington_players = Nokogiri::HTML(open("http://www.espn.com/nba/team/roster/_/name/wsh/washington-wizards")).css("td.sortcell")
players = [
  atlanta_players,
  boston_players,
  brooklyn_players,
  charlotte_players,
  chicago_players,
  cleveland_players,
  dallas_players,
  denver_players,
  detroit_players,
  warriors_players,
  houston_players,
  indiana_players,
  clippers_players,
  lakers_players,
  memphis_players,
  miami_players,
  milwaukee_players,
  minnesota_players,
  nola_players,
  knicks_players,
  okc_players,
  orlando_players,
  phili_players,
  phoenix_players,
  portland_players,
  sacramento_players,
  spurs_players,
  toronto_players,
  utah_players,
  washington_players,
]


players.each_with_index do |roster, index|
    puts roster
    Team.create(name: teams[index][0],stadium: teams[index][2])
    roster.each do |player|
        Team.last.players.create(name: player.text)
        puts player
        puts player.text
    end
end 


=begin

Active Record created a method to solve the N+1 query problem. 
The *includes* Method allows you to EAGER LOAD the associations that you need. 
Eager loading is saving the associated tables in memory first, to reduce database queries required 
to retrieve any information from those tables. 

Run the following:

players = Player.includes(:team).limit(10).order("RANDOM()")
players.each do |player|
  puts player.team.stadium
end

In this code, Active Record ONLY performs 2 Queries: 

(1) One query to retrieve 10 Random players + a (1) query to retrieve the team information of those players. 
It saves that information in memory, so when we request each player's stadium, Active Record does not 
need to do any queries to the database. It already has that information! 

==================================================================================
QUERY OPTIMIZATION :
==================================================================================

0.a)
all_players0=Player.all
all_players.each {|each| puts each.team.name, each.team.stadium}

0.b) This performs 498*2 + 1 query

1. Retrieve all players, then write a program that will loop through each player and display their team name, 
and stadium:

all_players=Player.includes(:team)
all_players.each {|each| puts each.team.name, each.team.stadium}

2. How many queries have we done? 3

3,4. Retrieve all players and write a program to loop through each player and their team name and stadium 
using .includes:

Done in 1,2

5. Retrieve all players from the 'Chicago Bulls' by using .includes  
team_players = Player.includes(:team).where("teams.name='Chicago Bulls'").references(:team)

6. Retrieve all players along with the team name that play at the 'Staples Center'  
all_players_at = Player.joins(:team).select('players.*','teams.name as "Team name"','teams.stadium').where("teams.stadium='Staples Center'")

7. Retrieve all teams that have any player that start their name with the letter 'Z' by using .includes 
and .joins:

all_these_teams = Team.includes(:players).where('players.name LIKE "Z%"').references(:players)
all_these_teams = Team.joins(:players).where('players.name LIKE "Z%"')

# With .joins, we can also fetch more information. For example, we can retrieve the player's name as well
Team.joins(:players).where("players.name LIKE 'Z%'").select("teams.name as team_name", "teams.*", "players.*")
  OR:
all_these_teams = Team.joins(:players).select("players.name",' teams.name as "Team\'s Name"').where('players.name LIKE "Z%"')



=end