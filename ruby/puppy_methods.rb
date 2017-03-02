=begin

class Puppy

  def initialize
    p "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
 
  def speak(how_many_times)
    how_many_times.times do
    puts "Woof!"
    end
  end

  def roll_over
    puts  "*rolls over*"
  end

def dog_years(human_years)
   human_years/7
 end
 
 def play_dead
   puts "*plays dead*"
 end
 
end

zeus = Puppy.new
zeus.fetch("ball")
zeus.speak(3)
zeus.roll_over
zeus.dog_years(14)
zeus.play_dead

=end
class Movie

  def initialize
  end

  def watched_movie(answer)
    if answer == "yes"
      watched_movie = true
    else
      watched_movie = false
    end
  end

  def times_watched(int)
    if int == 1
      p "I've watched this movie #{int} time"
    else
      p "I've watched this movie #{int} times"
    end
  end

end

#moonlight = Movie.new

#moonlight.watched_movie("no")
#moonlight.times_watched(4)

movie_list = []

count = 1
50.times do
  new_movie = Movie.new
  # new_movie = "Movie #{count}"
  movie_list << new_movie
  count += 1
end

movie_list.each do |movie|
  movie.watched_movie("yes")
  movie.times_watched(5)
end