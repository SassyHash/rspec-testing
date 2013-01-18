class TowersOfHanoi
  # def self.disks
  #   # can always make the game harder by changing max value :-)
  #   (1..3).to_a.reverse
  # end
  attr_accessor :stacks

  def initialize
    @stacks = [[], [], []]
  end
end