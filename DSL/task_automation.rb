class TaskManager
  def initialize
    @tasks = {}
  end

# The task method registers tasks, and the block defines what each task does.
  def task(name, &block)
    @tasks[name] = block
  end

  def run(name)
    if @tasks[name]
      puts "Running task: #{name}"
      @tasks[name].call
    else
      puts "Task '#{name}' not found!"
    end
  end
end

# Define the DSL
manager = TaskManager.new
# instance_eval allows you to write tasks in a clean, declarative style.
manager.instance_eval do
  task :hello do
    puts "Hello, Raiden"
  end

  task :goodbye do
    puts "Goodbye, Raiden"
  end
end

# Run tasks
manager.run(:hello)
manager.run(:goodbye)