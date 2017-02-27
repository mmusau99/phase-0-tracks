class Santa
   reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet","Cupid", "Donner","Blitzen"]
   
	  
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
		@age = 0

	end
	
	def celebrate_birthday
	  age+=1
	end
	
	def get_mad_at(name)
	  @name = name
	  reindeer_ranking << name
	end
	
	def age
	  @age
	end
	def gender
	  @gender
	end
	def ethnicity
	  @ethnicity
  end
  def gender=(new_gender)
    @gender = gender
  end
end
santas =[]
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "gender nonconforming","gender variant"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "hype-beast", "clown"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end
Mumo = Santa.new("Male","Black")
Mumo.age
Mumo.gender = "BLMale"
Mumo.ethnicity