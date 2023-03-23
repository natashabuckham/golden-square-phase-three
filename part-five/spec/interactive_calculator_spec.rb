require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "subtracts two user-given numbers and returns the solved sum" do
    io = double :io
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:puts).with("Here is your result:")
    expect(io).to receive(:puts).with("7 - 3 = 4")
    expect(io).to receive(:gets).and_return("7")
    expect(io).to receive(:gets).and_return("3")

  interactive_calculator = InteractiveCalculator.new(io)
  interactive_calculator.run
  end
end
