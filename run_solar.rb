require_relative 'planet'
require_relative 'solarsystem'

#This group feeds values to the attributes in this class and planet
s_one = SolarSystem.new("Shari Galaxy LLC")
planet_one = Planet.new("mars", "red", 0, "confirmed", "rock")
planet_two = Planet.new("earth", "blueish green", 1, "tons", "watery rock")
planet_losers = [Planet.new("pluto", "white", 58, "space dogs", "rock solid"),
 Planet.new("neptune", "aqua", 3, "possible mermaids", "bucket of jello")]

# These statements take the values and use the methods to display information
s_one.build_system(planet_one)
s_one.build_system(planet_two)

s_one.add_planet(planet_losers)


s_one.the_system
s_one.planet_decision
