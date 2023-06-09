class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    first_num = @io.gets.chomp
    @io.puts "Please enter another number"
    second_num = @io.gets.chomp
    @io.puts "Here is your result:"
    @io.puts "#{first_num} - #{second_num} = #{first_num.to_i - second_num.to_i}"
  end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
