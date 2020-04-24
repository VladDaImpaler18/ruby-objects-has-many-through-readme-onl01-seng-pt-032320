class Waiter
attr_accessor :years
@@all = []

def initialize(years_of_experience)
  @years = years_of_experience
  @@all << self
  
end

def self.all
  @@all
end

end