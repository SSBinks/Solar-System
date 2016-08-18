# This is the parent class which calls planet the child class
# This program will use attributes from planet to display different information

# This keyword allows this class to access information from Planet
require_relative 'planet'

# The beginning of the of Solarsystem class
class SolarSystem
  attr_accessor :system

# This method sets the attributes
def initialize (system)
  @system = system
  @planet = []
end

# This method should add one planet to the solar system
# But I am not sure if this is correct
def build_system (solar)
 @planet << solar
end

# This method can pass a list of planets to another
def add_planet (solar)
full_list =  @planet.push(*solar)
  return full_list
end

# This displays information about a system
def the_system
  puts "The #{system} system contains: "
  @planet.each_with_index do |planet, i|
    puts " #{planet}"
  end
end

# This needs to be tested :/
# I am trying to use a hash to determine which planet was selected..TBD
# I got this later with the transpose method to create a hash
def planet_decision
  number = ["1", "2", "3", "4"]
  joined = [number, @planet].transpose.to_h
  puts "Welcome to a knock-off planetarium. Which planet are you curious about?
  1. Mars
  2. Earth
  3. Pluto (yes it is a planet)
  4. Mercury
  5. Jupiter"
 choice = gets.chomp
 if joined.has_key?(choice)
   planet_option = joined[choice]
   puts  "You have selected #{choice}! Here are some stats: #{planet_option}: "
 else
  puts "That was not a choice"
 end
end

end
