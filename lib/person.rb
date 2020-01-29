require "pry"

class Person 
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name 
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
        return @hygiene
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def clean?
        return @hygiene > 7
    end

    def happy?
        return @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        newHygiene = @hygiene + 4
        self.hygiene = newHygiene
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        newHygiene = @hygiene - 3
        newHappiness = @happiness + 2
        self.hygiene = newHygiene
        self.happiness = newHappiness
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        call_happiness = @happiness + 3
        call_friend_happiness = friend.happiness + 3
        friend.happiness = call_friend_happiness
        self.happiness = call_happiness
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self_sad = @happiness - 2
            friend_sad = friend.happiness - 2
            self.happiness = self_sad
            friend.happiness = friend_sad
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self_happy = @happiness + 1
            friend_happy = friend.happiness + 1
            self.happiness = self_happy
            friend.happiness = friend_happy
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end

Lauren = Person.new"Lauren"
p Lauren
p Lauren.hygiene=12
p Lauren.hygiene
p Lauren