module Shout

=begin def self.yell_angrily(words)
    words + "!!!" + " :("
  end 

  def self.yelling_happily(words)
    puts "#{words} !!!!!! so much yes bruh  !!! :))))))"
  end
=end
  def yell_smoothly(words)
  puts "#{words}............foshizzle"
  end
  def yell_in_dbz(power_level)
    puts " Aahahahahah!?!?!?!? his power level is over #{power_level}!!!!!!!!!!!! (gasp) "
  end
end
class Wavy
  include Shout
end
class Nerdy
  include Shout
end

=begin puts Shout.yell_angrily("MOTHA")
puts
Shout.yelling_happily("YUSSS!")
=end

snoop_dog = Wavy.new
snoop_dog.yell_smoothly("hello")
puts
vegeta = Nerdy.new
vegeta.yell_in_dbz(9000)

