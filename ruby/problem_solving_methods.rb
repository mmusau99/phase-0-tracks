=begin
	
we want our method to accept two parameters(ar, num)
search through the array for the number
loop through each item using each, 
using array .include? to search through the array
if array.include? == true return the index of that item
else return nil

loop through using .each_index if the AR[i] == num return index of i

returnan index of that item
	
=end
AR = [1,2,3,4,5,6,7]
def search_index(ar, integer)
  return_index = nil
  counter = 0
	ar.each do |num| 
	  if  ar[counter] == integer
	    return_index = counter
	  else
			counter+=1
  	end
	end
p return_index
end
search_index(AR,6)