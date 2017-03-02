class Puppy
  def initialize
    p "initializing new puppy instance..."
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