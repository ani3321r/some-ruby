# models are used for namespacing and mixins
# they are containers for method and constants

module MathUtils
  PI = 3.14159

  def self.circle_area(radius)
    PI * radius ** 2
  end
end

puts MathUtils.circle_area(5)


# mixins
module Greetings
  def greet
    puts "Hello from raiden"
  end
end

class Person
  include Greetings
end

person = Person.new
person.greet

# to add instance methods we use "include"
# to add methods to the class itself we have to use extend