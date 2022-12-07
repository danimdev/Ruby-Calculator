class Calculator

    attr_accessor :num1, :num2, :operator, :input_operator
    def initialize
    
        @num1 = 0.0
        @num2 = 0.0
        @operator = ""
        @input_operator = ""
    end

    def input_nums
    
        print "num1: "
        @num1 = gets.chomp.to_f

        print "operator(+, -, /, *):"
        @input_operator = gets.chomp

        print "num2: "
        @num2 = gets.chomp.to_f
    end

    def main_calculation

        loop do

            input_nums

            puts "result: " + calculate_custom_numbers(@num1, @num2, @input_operator).to_s
        end
    end

    def calculate_custom_numbers(num1, num2, operator)
    
        return calculate_numbers(num1, num2, operator).round(2)
    end

    def calculate_numbers(num1, num2, operator)

        if operator == "+"
            return num1 + num2
        elsif operator == "-"
            return num1 - num2
        elsif operator == "*" 
            return num1 * num2
        elsif operator == "/"
            return num1 / num2
        end
    end
end