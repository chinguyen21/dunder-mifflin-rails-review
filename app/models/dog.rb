class Dog < ApplicationRecord
  has_many :employees

  def self.sort_dogs
    hash = {}
    self.all.each {|dog| hash[dog] = dog.employees.length}
    hash.sort_by {|k,v|v}.map {|a| a[0]}
  end
end
