
def Vampire(str)
	age_right = true
	like_garlic_bread = true
	signup_ins = true
	count = 0
	allergies = nil
puts "How many employees will be processed ?"
employees = gets.to_i
 until count == employees do

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
	until allergies == "done"
	puts "Could you name any allergies ? Type 'done' when finished"
	allergies = gets.chomp
	end

if (age_right == true && like_garlic_bread == true) || signup_ins == true 
	puts "Probably not a vampire."
	count+=1

elsif (age_right == false && like_garlic_bread == false) || signup_ins == false
	puts "Probably a vampire."
	count+=1

elsif (age_right == false && like_garlic_bread == false) && signup_ins == false
	puts "Almost certainly a vampire.\n"
	count+=1
elsif names == "Drak Cula" || names == "Tu Fang"
	puts "Definitely a vampire."
	count+=1
else
	puts "Results inconclusive."
	count+=1
end


end
puts
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end
Vampire("Mumo")
