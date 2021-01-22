require 'pry'# your code goes here


class Person


    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0, 10)
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account = salary + 25
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=
        @hygiene = (hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=
        @happiness + 2
        self.hygiene=
        @hygiene = (hygiene - 3)
         "♪ another one bites the dust ♫"
    end

    def manage_happiness(friend, operator, num)
        [self, friend].each{|person| person.happiness = person.happiness.send(operator.to_sym, num)}
    end
    def call_friend(friend)
        manage_happiness(friend, "+", 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend,topic)
        if topic == "politics"
            manage_happiness(friend, "-", 2)
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            manage_happiness(friend, "+", 1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end








end
