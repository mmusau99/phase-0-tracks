# first we need to write our encript method.
# this will advance every letter of a string one letter forward. ex: "abc" => "bcd"
# ensure that tevery letter is lowercase and space characters remain space characters.
# we will also need to write a decript method that reverses the effect of our encrypt method.
#def encrypt(str)
	#count = 0
	
#until count == str.length

#str[count] = str[count].next
#count+=1
#end
#puts str
#end
#encrypt("zed")

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
puts str

	end
		
end

 def decrypt(str)
 	count = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	# match the str to the alphabet var's index

	until count == str.length
	a_count = alphabet.index(str[count])
	str[count] = alphabet[a_count-=1]
	count +=1
	end

puts str
end
decrypt("bcd")