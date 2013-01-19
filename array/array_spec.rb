require './array.rb'
require 'rspec'

describe "#my_uniq" do
  it "returns a new array of unique elements" do
    my_uniq([1,2,2,3,4]).should eq [1,2,3,4]
  end
end

describe "#two_sum" do
  it "returns an array of indexes to find a pair of negatives" do
    two_sum([-1,1,2]).should eq [[0,1]]
  end

  it "returns an array of indexes that are sorted" do
    two_sum([1,2,-2,-1]).should eq [[0,3],[1,2]]
  end

  it "returns an empty array for an empty array" do
    two_sum([]).should eq []
  end

  it "does not find a single zero" do
    two_sum([-1,0,2]).should eq []
  end

  it "finds real pairs of zero" do
    two_sum([0,1,2,0]).should eq [[0,3]]
  end
end