require 'pry'

class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(salary)
         @bank_account += salary
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end
    end

    def check(num)
        if num > 7
            true
        else
            false
        end
    end

    def happy?
        check(self.happiness)
    end

    def clean?
        check(self.hygiene)
    end
  
    def get_paid(salary)
        self.bank_account = (salary)
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 
    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2            
            return "blah blah partisan blah lobbyist"
        end
        if topic == "weather"
            person.happiness +=1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end