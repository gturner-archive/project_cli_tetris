#10x20 view
#10x24 so the block has space to generate (extra 4 on top)

class Board
  def initialize
    @display=Array.new(24){[]}
  end

  def make_new_block
    block=Block.new
    block.x_coord=[0..9].sample
  end
end