# This is the Child class of SolarSystem
# Attributes corresponding to Planet object are created in this class


class Planet
attr_accessor :name, :color, :moon_count, :life_forms, :make_up

# Initialize class creates instance variables that can be used
def initialize(name, color, count, form, make_up )
  @name = name
  @color =  color
  @moon_count = count
  @life_forms =  form
  @make_up = make_up
end

# This method prints information about the planets
def to_s
 " \nPlanet name: #{name} \nColor: #{color} \nNumber of Moons: #{moon_count}
Life Forms?: #{life_forms} \nMade of: #{make_up}"
end

end
