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
=begin
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
def fibonacci(length_of_arr)
  counter = 0
  sum = 0
  fib_arr = []
  until counter == length_of_arr
  if counter == 0
  fib_arr << 0
  elsif counter == 1 
  fib_arr << 1
  elsif
  sum = fib_arr[counter-1] + fib_arr[counter-2]
  fib_arr << sum
  end
  counter += 1
  end
  fib_arr
end

fibonacci(6)
fibonacci(100)[-1]

	
for i the first initialized variable is equual to one and to continue the loop until length(A) is reached.
	j the second intialized variable is assigned to the first variable i
	while j is greater than 0 and the previous index of A is greater than A of j
		swap the current value at  A[j] and the previous value of the last index
		j is equal to j - 1 
		end while
		end for



	
end
=end
def insertion_sort(arr)
  
for i in 1..arr.length-1
j = i

  while (j > 0) && (arr[j-1] > arr[j]) 

  arr[j], arr[j-1] = arr[j-1], arr[j] 
  j -=1
  
  end

end
arr 
end

array= [6,5,4,3,2,1,7]
insertion_sort(array)