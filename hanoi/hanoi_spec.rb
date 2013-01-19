require './hanoi.rb'
require 'rspec'

describe 'TowersOfHanoi' do
  subject(:towers) {TowersOfHanoi.new}

  it "should start with three stacks" do
    towers.stacks.length.should eq 3
  end

  it "should start with disks on stack 1" do
    towers.stacks[0].should == [3,2,1]
  end

  it "moves a tile from a stack to another stack" do
    towers.move(1,2)
    towers.stacks[0].should eq ([3,2])
    towers.stacks[1].should eq [1]
  end

  it "can't move disk that doesn't exist" do
    towers.valid_move?(2,1).should_not be_true
  end

  context "when small piece is moved" do
    before do
      towers.move(1,2)
    end

    it "cannot move big piece on top" do
        # towers.move(1,2)
        towers.valid_move?(1,2).should_not be_true
    end
  end

  context "when the game is over" do
    before do
      towers.stacks[1] = [3,2,1]
    end

    it "ends the game when a tower is filled" do
      towers.complete?.should be_true
    end
  end
end

