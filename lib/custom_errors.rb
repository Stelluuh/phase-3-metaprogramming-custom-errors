class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person) 
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      #if the objected passed into this method as an argument is NOT an instance of the person class, we will begin our error handling.
      begin
        raise PartnerError #first we raise our Partner error
      rescue PartnerError => error # then we rescue our PartnerError. The rescue method creates an instance of the PartnerError Class and puts out the result of calling message on that instance.
        puts error.message
      end
    end
  end

  class PartnerError < StandardError
    def message
      "you must give the give_married method an argument of an instance of the person class!"
    end
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




