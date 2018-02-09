require 'pry'
require_relative 'mountain.rb'
require_relative 'skiiers.rb'
require_relative 'team.rb'

sugarbush = Mountain.new("sugarbush")
katehansen = Skiier.new("Kate Hansen", "United States")
katehansen.add_mountain(sugarbush)
shaun = Skiier.new("Shaun White", "United States")
killington = Mountain.new("Killington")
melissa = Skiier.new("Melissa Sames", "United States")
chris = Skiier.new("Chris Diep", "Vietnam")
melissa.add_mountain(killington)
chris.add_mountain(sugarbush)
shaun.add_mountain(killington)
Skiier.find_or_create_by_name("Shaun White")
wolves = Team.new("Wolves")
wolves.add_skiier("Shaun White")
kill_teams = killington.list_teams

binding.pry

"helo"
