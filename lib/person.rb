# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness= (value)
        @happiness =  value.clamp(0, 10)
    end
    def hygiene= (value)
        @hygiene =  value.clamp(0, 10)
    end
    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end
    def call_friend(bestie)
        self.happiness += 3
        bestie.happiness += 3
        "Hi #{bestie.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(bestie, topic)
        if topic == "politics"
            self.happiness -= 2
            bestie.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            bestie.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else         
            'blah blah blah blah blah'
        end
    end
end
