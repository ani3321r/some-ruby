# dynamic method creation and execution
class Greeting
  def self.create_methods(*method_names)
    method_names.each do |method_name|
      define_method(method_name) do
        puts "#{method_name.to_s.capitalize}, Hello"
      end
    end
  end

  create_methods :raiden, :liu
end

greet = Greeting.new
greet.raiden
greet.liu


# intercepting undefined method calls
class DynamicMethods
  def method_missing(method_name, *args)
    puts "Method '#{method_name}' was called with arguments: #{args.join(', ')}"
  end
end

obj = DynamicMethods.new
obj.unknown_method(1, 2, 3)


# just one more feature, self navigation "&."
user = nil
puts user&.name # instead of error output nothing