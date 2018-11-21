require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :happiness
  attr_reader :hygiene
  attr_reader :name
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  
  def happiness=(value)
    if value > 10 
      @happiness = 10
    elsif value < 0 
      @happiness = 0
    else
      @happiness = value
  end
end

def hygiene=(value)
  if value > 10 
      @hygiene = 10
    elsif value < 0 
      @hygiene = 0
    else
      @hygiene = value
    end
end
  
  def happy?
    if self.happiness > 7
      return TRUE
    else
      return FALSE
    end
end

def clean?
  if self.hygiene > 7
    return TRUE
  else
    return FALSE
  end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end


  def take_bath
    self.hygiene += 4
    #hygiene=(4)
    #self calls setter method 
  #   @hygiene += 4
  # if self.hygiene > 10
  #   @hygiene = 10
  # end
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    friend.self.happiness += 3
end

end