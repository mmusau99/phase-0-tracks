module Shout

def self.yell_angrily(words)
    words + "!!!" + " :("
  end	

  def self.yelling_happily(words)
  	puts "#{words} !!!!!! so much yes bruh  !!! :))))))"
  end

end
puts Shout.yell_angrily("MOTHA")
puts
Shout.yelling_happily("YUSSS!")