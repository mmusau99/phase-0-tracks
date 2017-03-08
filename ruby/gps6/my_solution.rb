# Virus Predictor

# I worked on this challenge with Mumo Musau.
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to access another file by providing its relative path (rather than a full filepath).
# since my_solution.rb and state_data.rb are in the same folder, we can use require_relative and the file name to link the two.

require_relative 'state_data'

class VirusPredictor

# initialize method runs when a new instance of the VirusPredictor class is create.
# it assigns attributes using instance variables and three arguments passed in (state, population density, population)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# virus_effects method calls predicted_deaths and speed_of_spread methods (defined below)
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

# predicted_deaths method calculates the predicted number of deaths based on a state's population density and population, using various ranges and if/else logic.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    return number_of_deaths
  end

# speed_of_spread method calculates the predicted speed (in # of months) for the virus to spread across a state based on population density, using various ranges and if/else logic.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    return speed
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  new_state = VirusPredictor.new(state, data[:population_density], data[:population])
  new_state.virus_effects
end


#=======================================================================
# Reflection Section
=begin
  
the first synatax using the hash rocket uses a string data type, so the value can be called.
require_relative allows you to call a file relative to the directory, instead of having to specify the file path using
require.
you can iterate through a hash using a block of code. specifying the hash_key and value. or using a loop, the easies way
is using the .each method. 

the virus_effects variables passed on the parameters were attributes already assigned during initailization. 
they did not require to be passed along, because those values remain constant throughtout the scope of the method.

I solidified my perspective on multidimensional hashes during this challenge. coneptually multidimensional arrays I understand,
but I needed to touch up on key value pairs of hashes. 

also recognizing that two different actions were being processed within those methods, and learning to split up the print statements.

  
=end


