require 'pry'
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

def new_meal(customer_obj,total,tip=0)
  Meal.new(self, customer_obj, total, tip)
end

def meals
  Meal.all.select{|m| m.waiter == self}
end

def best_tipper
  best=0
  meals.each{|m| best = m.tip if best < m.tip}
  best
end

end