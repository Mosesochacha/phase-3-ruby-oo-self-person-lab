class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end
  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    else
      @happiness = value
    end
  end

  def hygiene=(value)
    if value > 10
      @hygiene = 10
    elsif value < 0
      @hygiene = 0
    else
      @hygiene = value
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end
  
  def take_bath
     
      self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
   
  end

  def work_out
    self.happiness +=2
    self.hygiene -=3
    "♪ another one bites the dust ♫"

    
  end

      def call_friend(friend)
             friend.happiness +=3 
             self.happiness +=3
             "Hi Felix! It's Stella. How are you?"
      end

end
