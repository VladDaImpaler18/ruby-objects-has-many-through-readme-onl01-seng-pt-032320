class Waiter
attr_accessor :name, :years
@@all = []

def initialize(name, years_of_experience)
  @name = name
  @years = years_of_experience
  @@all << self
  
end

def self.all
  @@all
end

end