# write a method that takes in a name as input and creates a fake name
# swapping the first and last name
# changing all of the voewls (a,e,i,o, or u) to the next voewl in (aeiou) to the next consonant in the alpabet
# a -> e and u-> a and d would become 'f'
def swap(first_n, last_n) 
	new_first_n = last_n
	new_last_n = first_n
	new_name = new_first_n + " " + new_last_n

end

def vowels(new_name)
	count = 0
	vowel_count = 0
	vowel_list = "aeiou"
	vowel_split = vowel_list.split('')
	until count == new_name.length
		if new_name[count] == "a" || new_name[count] == "e" || new_name[count] == "i" || 
		new_name[count] == "o"
		  vowel_count = vowel_split.index(new_name[count])
		 vowel_count.to_i
		  new_name[count] = vowel_split[vowel_count+=1]
		  
		count +=1
	  elsif new_name[count] == "u"
	  new_name[count] = "a"
	  count+=1
	else
	  count+=1
	end
	end
	
	
 
 new_name
end

def consonates(new_name)
	count = 0
	vowel_list = "aeiou"
	vowel_split = vowel_list.split('')
	name_mixer = new_name
	until count == new_name.length
		if vowel_split.include?(new_name[count]) == false && new_name[count] != ' '
		new_name[count] = new_name[count].next
		count +=1
		else
		  count += 1
		end
		
		end
	
new_name
end
first_name_alias = nil 
last_name_alias = nil
until first_name_alias == "Exit" || last_name_alias == "Exit"
puts "Enter the first name you would like to create an alias out of (Type 'exit' to escape)"
first_name_alias = gets.chomp
first_name_alias.capitalize!
if first_name_alias == "Exit"
break;
end
puts 
puts "Enter the last name you would like to create an alias out of. (Type 'exit' to escape)"
last_name_alias = gets.chomp
last_name_alias.capitalize!
if last_name_alias == "Exit"
  break;
end
converted_name = consonates(vowels(swap(first_name_alias,last_name_alias)))
puts
puts "your new alias is #{converted_name} "
end
