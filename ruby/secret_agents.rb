# first we need to write our encript method.
# this will advance every letter of a string one letter forward. ex: "abc" => "bcd"
# ensure that tevery letter is lowercase and space characters remain space characters.
# we will also need to write a decript method that reverses the effect of our encrypt method.
#def encrypt(str)
	#count = 0
	


def encrypt(str)
	count = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	if str[count] == alphabet[0]
		until count == str.length
		str[count] = str[count].next
		count +=1
		end
		
	puts str
	elsif str[count] == alphabet[25]
		str[count] = alphabet[0]
		count+=1
		until count == str.length
		str[count] = str[count].next
		count+=1
		end
		
	else
	  until count == str.length
		str[count] = str[count].next
		count +=1
		end
		
		
 str

	end
		
end
def decrypt(str)
 	count = 0
 	a_count = 0
 	
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	# match the str to the alphabet var's index

	until count == str.length
	a_count = alphabet.index(str[count])
	str[count] = alphabet[a_count-=1]
	count +=1
	end
puts str
 str
end


# create a interface that asaks the user if they would like to decrypt or encrypt a message
# then after the first choice it asks the user for a password
# then conducts selected method  and prints the result to the screen
choice = ""
until choice == "Decrypt" || choice == "Encrypt"
puts "Would you like to 'Decrypt' or 'Encrypt' a password ? type [Decrypt] or [Encrypt]"
 choice = gets.chomp
 choice.capitalize!
end
 if choice == "Decrypt"
puts "What is the password you want to decrypt ? "
 password = gets.chomp
 puts
 puts"The password you encrypted is"
 decrypt(password)

elsif choice == "Encrypt"
puts "What is the password you want to encrypt? "
 password = gets.chomp
 puts
 puts"The password you encrypted is"
 encrypt(password)
end

 	
 


