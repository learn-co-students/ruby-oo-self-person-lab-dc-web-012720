# your code goes here
class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

def initialize(name)
	@name = name
	@bank_account = 25
	@happiness = 8
	@hygiene = 8
end


def clean?
	@hygiene > 7 
end

def happy?
	@happiness > 7 
end



def happiness=(happiness)
    #! create first order method
    happiness > 10 ? @happiness = 10 : happiness < 0 ? @happiness = 0 : @happiness = happiness

end

def hygiene=(hygiene)
    #! create first order method
    hygiene > 10 ? @hygiene = 10 : hygiene < 0 ? @hygiene = 0 : @hygiene = hygiene

end

def get_paid(amount)
    @bank_account += amount
    return "all about the benjamins"
end

def take_bath

    self.hygiene = (self.hygiene + 4)

    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
 
    self.hygiene = (self.hygiene - 3)
    self.happiness = (self.happiness + 2)

    return "♪ another one bites the dust ♫"

end

def call_friend(friend)
	self.happiness=(self.happiness + 3)
	friend.happiness=(friend.happiness+3)
	return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend,topic)
	if topic == "politics"
		self.happiness=(self.happiness-2)
		friend.happiness=(friend.happiness-2)
		return "blah blah partisan blah lobbyist"
	elsif topic == "weather"
		self.happiness=(self.happiness+1)
		friend.happiness=(friend.happiness+1)
		return "blah blah sun blah rain"
	else
		"blah blah blah blah blah"
	end
end

end