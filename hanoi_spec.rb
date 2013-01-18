require './hanoi.rb'
require 'rspec'

describe 'TowersOfHanoi' do
  subject(:towers) {TowersOfHanoi.new}
  it "should start with three stacks" do
    towers.stacks.length.should eq 3
    # (:stacks).length.should be 3
  end
end