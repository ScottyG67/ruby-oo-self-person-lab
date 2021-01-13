# your code goes here
require 'pry'
class Person
    attr_reader :name, :happiness
    attr_accessor :bank_account
    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    end
    def happy_write(happy)
        @happiness = happy.clamp(0,10)
    end
    def hygene
        @hygiene = @hygiene.clamp(0,10)
    end

    def clean?
        @hygiene > 7
    end
    def happy?
        @happiness > 7
    end
    def get_paid(salary)
        @bank_account += salary
        p "all about the benjamins"
    end
    def take_bath
        @hygiene += 4
        @hygiene = @hygiene.clamp(0, 10)
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def call_friend(friend)
        @happiness += 3
        @happiness = @happiness.clamp(0, 10)
        p "Hi #{friend.name}! It's #{self.name} How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            p "blah blah partisan blah lobbyist"
            self.happy_write(self.happiness - 1)
            friend.happy_write(friend.happiness - 1)
            @happiness = @happiness.clamp(0,10)
            #friend.happiness = friend.happiness.clamp(0,10)

        elsif topic == "weather"
            binding.pry
            happy_test = self.happiness + 1
            binding.pry
            p "blah blah sun blah rain"
            self.happy_write(happy_test)
            binding.pry
            friend.happy_write(friend.happiness + 1)
        else 
            p "blah blah blah blah blah"
        end
    end
    def work_out
        @happiness += 2
        @happiness = @happiness.clamp(0,10)
        @hygiene -= 3
        @hygiene = @hygiene.clamp(0,10)
        p "♪ another one bites the dust ♫"
    end
    #def min_max(stat)
     #stat.clamp(0,10)
        
    #end

end