require './treenode.rb'
require 'rspec'

describe 'TreeNode'  do
  subject(:tree) {TreeNode.new("parent")}
  # it { should be_an(TreeNode) }
  # it "tells you what its parent is" do
  its(:parent) { should eq ("parent") }
    # tree.parent.should == "parent"
  
end