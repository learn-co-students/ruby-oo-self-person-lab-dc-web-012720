require 'pry'

# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    #attr_writer
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    #
    #
    # class methods
    #
    #

    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end
    end

    def hygiene=(num)
        if num > 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        else
            @hygiene = num
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end

    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end

    end

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        var = @hygiene + 4
        self.hygiene=(var)

        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        var = @hygiene - 3
        self.hygiene=(var)
        var2 = @happiness + 2
        self.happiness=(var2)

        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        #friend is another Person object
        me = @happiness + 3
        my_friend = friend.happiness + 3

        self.happiness=(me)
        friend.happiness=(my_friend)

        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        #friend is another Person object; topic is a string

        if topic == "politics"
            me = @happiness - 2
            my_friend = friend.happiness - 2
            self.happiness=(me)
            friend.happiness=(my_friend)

            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            me = @happiness + 1
            my_friend = friend.happiness + 1
            self.happiness=(me)
            friend.happiness=(my_friend)

            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    
    end

end