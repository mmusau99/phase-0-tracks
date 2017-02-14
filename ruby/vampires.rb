
def Vampire(str)
	age_right = true
	like_garlic_bread = true
	signup_ins = true

	puts "What is your name ?"
	names = gets.chomp
	puts"How old are you ?"
	age = gets.to_i
	if age > 104 || age < 0
		age_right = false
	end
	puts"What year were you born ?"
	date_of_birth =  gets.to_i
	if date_of_birth < 1912 || date_of_birth > 2017
		age_right = false
	end
	puts"Our company cafeteria serves garlic bread. Should we order some for you ?"
	garlic_bread = gets.chomp
	garlic_bread.capitalize!
	if garlic_bread == "No"
		like_garlic_bread = false
	end
	puts"Would you like to enroll in the company’s health insurance ?"
	health_insurance = gets.chomp
	health_insurance.capitalize!
	if health_insurance == "No"
		signup_ins = false
	end
if (age_right == true && like_garlic_bread == true) || signup_ins == true 
	puts "Probably not a vampire."

elsif (age_right == false && like_garlic_bread == false) || signup_ins == false
	puts "Probably a vampire."

elsif (age_right == false && like_garlic_bread == false) && signup_ins == false
	puts "Almost certainly a vampire."
elsif names == "Drak Cula" || names == "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end



end
Vampire("Mumo")
