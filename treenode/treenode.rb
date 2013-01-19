class TreeNode
  attr_accessor :value
  attr_reader :parent

  def initialize(value = nil)
    @parent = parent
    @value = value
    @children = [nil, nil]
  end

  def left_child
    @children[0]
  end

  def right_child
    @children[1]
  end

  def children
    @children.dup
  end

  def set_child(child, side)
    case side
    when :left 
      @children[0].parent = nil if !@children[0].nil?
      @children[0] = child
    when :right
      @children[1].parent = nil if !@children[1].nil?
      @children[1] = child
    end
    set_parent(child)
  end

  def set_parent(child)
    child.parent = self
  end


  def bfs(target)
    array = [self]
    until array.empty?
      object = array.shift

      return object if object.value == target

      self.children.each {|child| array << child unless child.nil? }
    end
    nil
  end

  def parent=(parent)
    @parent = parent
  end

end

# grandpa = TreeNode.new(70)
# mom = TreeNode.new(35)
# uncle = TreeNode.new(40)
# john = TreeNode.new(18)
# sarah = TreeNode.new(15)
# max = TreeNode.new(13)
# abby = TreeNode.new(27)

# mom.parent = grandpa
# uncle.parent = grandpa
# mom.set_child(john, :left)
# mom.set_child(sarah, :right)
# uncle.set_child(abby, :left)
# uncle.set_child(max, :right)



