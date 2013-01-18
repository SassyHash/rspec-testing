require './array.rb'
require 'rspec'

describe "#my_uniq" do
  it "returns a new array of unique elements" do
    my_uniq([1,2,2,3,4]).should eq [1,2,3,4]
  end
end