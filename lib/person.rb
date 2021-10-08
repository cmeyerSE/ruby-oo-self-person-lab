# your code goes here
class Person

    # attr_accessor :name, :bank_account, :happiness

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene

    end

    def name
        @name
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end

    def bank_account
        @bank_account
    end

    def happiness
        @happiness
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else 
            @happiness = happiness
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10 
        elsif hygiene < 0
            @hygiene = 0 
        else 
            @hygiene =hygiene
        end
    end
    def happy?
        if happiness > 7 
            return true 
        else 
            return false
        end
    end

    def clean? 
        if hygiene > 7 
            true 
        else 
            false 
        end
    end

    def get_paid(salary=100)
        @bank_account += salary
        if @bank_account == 125
            return "all about the benjamins"
        end
    end

    def take_bath
        self.hygiene += 4
        # if @hygiene >= 10
        #     @hygiene = 10
        # end
        return"♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return  "♪ another one bites the dust ♫"
    end

    def call_friend(instance)
        self.happiness += 3
        instance.happiness += 3
        return "Hi #{instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            # binding.pry
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return 'blah blah blah blah blah'
        end
    end
    
end
