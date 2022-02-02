# your code goes here
class Person
    attr_reader :name # name cant be changed
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
# maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
    def happiness=(num)  #this is a setter method, need the (=)!!
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

#The clean? and happy? methods are pretty similiar: they should return true if the happiness or hygiene points exceed seven. Otherwise they should return false.
    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

#The get_paid method should accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".
    def get_paid(salary)
        self.bank_account+= salary
        "all about the benjamins"
    end

# The take_bath method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".
    def take_bath
        self.hygiene+= 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

# The work_out method should increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".
    def work_out
        self.happiness+= 2
        self.hygiene-= 3
        "♪ another one bites the dust ♫"
    end

#The call_friend method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
    def call_friend(friend)
        [self, friend].each do |o| o.happiness +=3 end
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        puts topic
        if topic == "politics"
            [self, friend].each do |o| o.happiness -=2 end
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, friend].each do |o| o.happiness +=1 end
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end

hannah = Person.new("Hannah")
felix = Person.new("Felix")
hannah.start_conversation(felix, "weather")
