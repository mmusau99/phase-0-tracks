# my code should prompt the user for required information and save it within a hash.
# my code should also use symbols as hashes.
# user input should be converted to appropriate data type afterwards.
# Update an existing key, looping not required.
# if user inputs none skip the loop
# if the user requires a key update allow for that.
# make sure to print the latest version of the hash before exiting the program.

int_design_form = {
	name: "mumo",
	age: " ",
	num_children: " ",
	decor_theme: " "
}
choice = nil
choice_2 = nil

puts "What is your name ?"
int_design_form[:name] = gets.chomp
int_design_form[:name].capitalize!

puts"What is your age ?"
int_design_form[:age] = gets.chomp.to_i

puts "How many children do you have ?"
int_design_form[:num_children] = gets.chomp.to_i

puts "What decor theme would you prefer ?"
int_design_form[:decor_theme] = gets.chomp

p int_design_form
puts
until choice == "Y" || choice == "N"
puts "Would you like update your 'name', 'age', 'number of children', or 'decor theme' ? (Y,N) "
choice = gets.chomp
choice.capitalize!

# intial prompt asking for user information

if choice == "Y"
	puts "What value would you like to change ? ('name', 'age', 'number of children', or 'decor theme') "
	choice_2 =gets.chomp

	if choice_2 == "name"
		puts "What is your name ?"
		int_design_form[:name] = gets.chomp
		int_design_form[:name].capitalize!
		puts
		p int_design_form
	elsif choice_2 == "age"
		puts"What is your age ?"
		int_design_form[:age] = gets.chomp.to_i
		puts
		p int_design_form
	elsif choice_2 == "number of children"
		puts "How many children do you have ?"
		int_design_form[:num_children] = gets.chomp.to_i
		puts
		p int_design_form
	elsif choice_2 == "decor theme"
		puts "What decor theme would you prefer ?"
		int_design_form[:decor_theme] = gets.chomp
		puts
		p int_design_form
	
	end

elsif choice == "N"
	puts "Your data is finalized!"
	
end

end
