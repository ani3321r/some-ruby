# blocks
# blocks enable concise iteration and logic
# A block with do...end
[1, 2, 3].each do |num|
  puts num * 2
end

# Block with {}
[1, 2, 3].map { |num| num ** 2 }


# procs
# procs store blocks as objects
my_proc = Proc.new { |name| puts "Hello, #{name}!" }
my_proc.call("Raiden")


# labmdas
# lambdas are procs but stricter with arguments
my_lambda = ->(x, y) { x + y }
puts my_lambda.call(5, 10)