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
	vowel_list = "aeiou"
	vowel_split = vowel_list.split('')
	until count == new_name.length
		if new_name[count] == vowel_split[0..-1]
		end
	end
	



	


end

def consonates(new_name)
	count = 0
	vowel_list = "aeiou"
	vowel_split = vowel_list.split('')
	name_mixer = new_name
	until count == new_name.length
		if vowel_split.include?(new_name[count]) == false
		new_name[count] = new_name[count].next
		count +=1
		else
		  count += 1
		end
		
		end
	
new_name
end

consonates(swap("Mumo","Musau"))