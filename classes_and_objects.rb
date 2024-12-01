class Person
  # Constructor
  def initialize(name, age)
    @name = name  # Instance variable
    @age = age
  end

  # Instance method
  def introduce
    puts "Hi, I'm #{@name} and I'm #{@age} years old."
  end
end

# Create an object
person = Person.new("Raiden", 150)
person.introduce  

# instance variables start with "@"
# initialize acts as a constructor