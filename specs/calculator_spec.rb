require_relative "../calculator.rb"

describe Calculator do
    context "when calculation is done correctly" do
    
        it "should sum up correctly" do
            test_num1 = 10
            test_num2 = 20
            test_operator = "+"
            expect(Calculator.new.calculate_numbers(test_num1,test_num2,test_operator)).to eq 30
        end

        it "should divide correctly to 2 decimals" do
            test_num1 = 100.0
            test_num2 = 3.0
            test_operator = "/"
            expect(Calculator.new.calculate_custom_numbers(test_num1, test_num2, test_operator)).to eq 33.33
        end
    end
end