require './treenode.rb'
require 'rspec'

describe 'TreeNode'  do
  subject(:grandpa) {TreeNode.new(70)}
  let(:mom) {TreeNode.new(35)}
  let(:uncle) {TreeNode.new(40)}
  let(:john) {TreeNode.new(18)}
  let(:sarah) {TreeNode.new(15)}
  let(:max) {TreeNode.new(13)}
  let(:abby) {TreeNode.new(27)}

  before do
    grandpa.set_child(mom, :left)
    grandpa.set_child(uncle, :right)
    mom.set_child(john, :left)
    mom.set_child(sarah, :right)
    uncle.set_child(abby, :left)
    uncle.set_child(max, :right)
  end

  it "sets the left child" do
    grandpa.left_child.should be mom
  end

  it "sets the right child" do
    grandpa.right_child.should be uncle
  end

  it "sets the grandchildren" do
    grandpa.left_child.left_child.should be john
  end

  it "finds max with an age of 13" do
    grandpa.bfs(13).should be max
  end

end

