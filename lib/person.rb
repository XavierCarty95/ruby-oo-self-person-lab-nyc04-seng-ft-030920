# your code goes here
require 'pry'
class Person
   
  attr_accessor :account,  :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
     @name = name
     @account = account
     @happiness = 8
     @hygiene = 8
     @bank_account = 25
  end 

  def happiness=(happiness)
     
   if  happiness > 10 
       @happiness = 10
   elsif happiness < 0 
       @happiness = 0
   else 
       @happiness = happiness
    end 
     
  end 
 
  def hygiene=(hygiene)
    if  hygiene > 10 
        @hygiene = 10
    elsif hygiene < 0 
        @hygiene = 0
    else 
        @hygiene = hygiene
     end 
 end 

 def happy?
   self.happiness > 7 ? true : false
 end 

 def clean?
    self.hygiene > 7 ? true : false
 end 

 def get_paid(amount)
    self.bank_account += amount
    return "all about the benjamins"
end 

def take_bath 
   self.hygiene += 4 unless self.hygiene >= 10 
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.happiness += 2
    self.hygiene -= 3
  return  "♪ another one bites the dust ♫"
end 

def call_friend(person)
  self.happiness += 3
  person.happiness += 3
  return "Hi #{person.name}! It's #{self.name}. How are you?"
end 

def start_conversation(person, topic)
    if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
      return 'blah blah sun blah rain'
    else
      return "blah blah blah blah blah"
    end


end 

end