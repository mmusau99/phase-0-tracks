 Favorite_moveies = {
 	adriel: "Arrival",
 	mumo: "Fight_club",
 	sarah: "la la land",
 	mike: "Fences"
 }

Oscar_nominees =[ "Moonlight", "Hidden_Figures", "Lion", "Hacksaw_Ridge"]
deleted_nominees = []

Favorite_moveies.each do |person,movie|
	#puts "#{person}'s favorite move is #{movie}"
	
end

Oscar_nominees.each do |movie|
	puts " #{movie} is an oscar nominated film."
	end
Oscar_nominees.map! do |movie|
	puts "before the modification"
	puts " #{movie}"
puts
	puts "After modification"
	puts movie.upcase


end

deleted_movies = {}
deleted_movies = Favorite_moveies.delete_if {|person, movie| movie[0] == "F" 


}
puts deleted_movies
puts Favorite_moveies


Oscar_nominees.delete_if { |movie| movie[0] == "H"


}
puts Oscar_nominees

Favorite_moveies.keep_if {|person,movie| movie[0] == "F"}
puts Favorite_moveies

Oscar_nominees.keep_if { |movie| movie[0] == "H"}
puts Oscar_nominees

Oscar_nominees.select! { |movie| movie[0] == "M"}
puts Oscar_nominees

Favorite_moveies.select! { |person, movie| movie[0] == "l"}
puts Favorite_moveies


deleted_nominees = Oscar_nominees.drop_while { |movie| movie.length > 5}
puts deleted_nominees

