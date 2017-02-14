def hamsters (str)
	puts "whats your hamsters name ?"
	h_name = gets.chomp
	puts "volume level from 1-10 ?"
	v_level = gets.to_i
	puts "what is the fur color ?"
	fur_color = gets.chomp
	puts "is it a good candidate for adoption (y/n) ?"
	candidate = gets.chomp
	candidate.capitalize!
	if candidate == "Y"
		candidate = true
		
	elsif candidate =="N"
		candidate = false

	end

	puts "What is its estimated age ?"

	age = gets.to_i
	if age == 0
		age = nil

	end

puts "Hamster name: #{h_name}" 
puts "Volume level: #{v_level}" 
puts "fur color is: #{fur_color}"
puts "candidate for adoption: #{candidate}"
puts "and the hamsters age is: #{age}"



end
hamsters("hammy")