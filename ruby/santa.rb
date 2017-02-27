class Santa
   reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet","Cupid", "Donner","Blitzen"]
   age = 0
	  
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

	end
	
	
end
santas =[]
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "gender nonconforming","gender variant"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "hype-beast", "clown"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end