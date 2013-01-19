class TowersOfHanoi
  attr_accessor :stacks

  def self.disks
    # can always make the game harder by changing max value :-)
    (1..3).to_a.reverse
  end

  def initialize
    @stacks = [TowersOfHanoi.disks, [], []]
  end

  def play
    puts "Welcome to towers of Hanoi!"
    puts "Here are your starting piles"
    while !complete?
      display
      puts "Choose pile 1, 2, or 3 to move from."
      from= gets.chomp.to_i
      puts "Choose pile 1, 2, or 3 to move to."
      to= gets.chomp.to_i

      if valid_move?(from, to) 
        move(from, to) 
      else
        puts "You cannot make that move."
      end
    end
    puts "Congratulations, you have beat the Towers of Hanoi!"
  end

  def display
    puts "pile 1: #{@stacks[0]}"
    puts "pile 2: #{@stacks[1]}"
    puts "pile 3: #{@stacks[2]}"
  end

  def move(from_stack, to_stack)
    @stacks[to_stack-1] << @stacks[from_stack-1].pop
  end

  def valid_move?(from_stack, to_stack)
    if @stacks[from_stack-1].empty?
      return false
    elsif @stacks[to_stack-1].empty?
      return true
    elsif @stacks[from_stack-1][-1] > @stacks[to_stack-1][-1]
      return false
    end
    true
  end

  def complete?
    return true if @stacks[1] == TowersOfHanoi.disks || @stacks[2] == TowersOfHanoi.disks
    return false
  end
end

