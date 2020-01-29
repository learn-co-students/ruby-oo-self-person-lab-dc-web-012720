require 'pry'

class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(person_name)
        @name = person_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 
    def happiness=(happiness_input) 
      if happiness_input > 10
        @happiness = 10
      elsif happiness_input < 0
        @happiness = 0
      else 
        @happiness = happiness_input
      end
    end 
    def hygiene=(hygiene_input)
        if hygiene_input > 10
            @hygiene = 10
          elsif hygiene_input < 0
            @hygiene = 0
          else 
            @hygiene = hygiene_input
        end 
    end 
    def happy?
        if @happiness > 7
            true
        else
            false
        end 
    end 
    def clean?
        if @hygiene > 7
            true
        else
            false
        end 
    end 
    def get_paid(salary)
        @bank_account += salary 
        return "all about the benjamins"
    end 

    def take_bath
       self.hygiene=(@hygiene += 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(new_friend)
        self.happiness=(@happiness + 3)
        new_friend.happiness=(new_friend.happiness + 3)
        return "Hi #{new_friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(new_friend, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            new_friend.happiness=(new_friend.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            new_friend.happiness=(new_friend.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end 