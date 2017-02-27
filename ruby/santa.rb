class Santa
   reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet","Cupid", "Donner","Blitzen"]
   attr_reader :age, :gender, :ethnicity
	  attr_writer :gender
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"

	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"

	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = rand(140)

	end
	
	def celebrate_birthday
	  age+=1
	end
	
	def get_mad_at(name)
	  @name = name
	  reindeer_ranking << name
	end
	
  
end
santas =[]
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "gender nonconforming","gender variant"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "hype-beast", "clown"]
100.times do 
  santas << Santa.new(genders[rand(genders.length)], ethnicities[rand(genders.length)])
end
Mumo = Santa.new("Male","Black")
santas.each do |santa|

puts
p santa.age
puts
p santa.gender
puts
p santa.ethnicity

end