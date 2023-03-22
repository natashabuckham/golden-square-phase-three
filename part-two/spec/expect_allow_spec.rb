# As a double
RSpec.describe "example" do
  it "example 1" do
    # This creates the double
    fake_object = double(:fake_object)
    # This creates a 'stub' (fake method) on the double
    allow(fake_object).to receive(:greet).with("Kay").and_return("Hello, Kay!")

    # This is just to show you what it can now do
    expect(fake_object.greet("Kay")).to eq "Hello, Kay!"
    # fake_object.greet("Henry") # This will throw an error
  end
end

RSpec.describe "example" do
  it "example 2" do
    # This creates the double
    fake_object = double(:fake_object)
    # This creates a 'stub' (fake method) on the double
    # But using 'expect' means the test will fail unless it is called.
    expect(fake_object).to receive(:greet).with("Kay").and_return("Hello, Kay!")

    # This is just to show you what it can now do
    expect(fake_object.greet("Kay")).to eq "Hello, Kay!"
    # fake_object.greet("Henry") # This will throw an error
    # If you comment out the above two lines, the test will fail.
  end
end
