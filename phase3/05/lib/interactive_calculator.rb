class InteractiveCalculator
    def initialize(terminal)
        @terminal = terminal
    end

    def run
        @terminal.puts "Hello. I will subtract two numbers."
        @terminal.puts "Please enter a number"
        number = @terminal.gets.chomp.to_i
        @terminal.puts "Please enter another number"
        number2 = @terminal.gets.chomp.to_i
        @terminal.puts "Here is your result:"
        @terminal.puts "#{number} - #{number2} = #{number - number2}"
    end
end

interactive_calculator = InteractiveCalculator.new(Kernel)
interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1