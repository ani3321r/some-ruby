class Calculator
  def initialize
    @result = 0
  end

  def add(value)
    @result += value
  end

  def subtract(value)
    @result -= value
  end

  def multiply(value)
    @result *= value
  end

  def divide(value)
    @result /= value
  end

  def result
    @result
  end
end

def calculate(&block)
  calc = Calculator.new
  calc.instance_eval(&block)
  puts "Result: #{calc.result}"
end

# Using the DSL
calculate do
  add 10
  subtract 3
  multiply 2
  divide 7
  add 5
  subtract 1
  divide 2
end