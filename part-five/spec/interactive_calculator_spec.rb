require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "subtracts two user-given numbers and returns the solved sum" do
    io = double :io
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(io).to receive(:puts).with("Please enter a number").ordered
    expect(io).to receive(:gets).and_return("7").ordered
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return("3").ordered
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("7 - 3 = 4").ordered

  interactive_calculator = InteractiveCalculator.new(io)
  interactive_calculator.run
  end
end
