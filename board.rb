#10x20 view
#10x24 so the block has space to generate (extra 4 on top)

class Board
  def initialize
    @display=[]
  end

  def make_new_block
    @block=Block.new
    @block.x_coord=[0..9].sample
    @display << @block
  end

  def hit_bottom?
    # hits the bottom or a dead square
  end

  def kill_block
     hit_bottom?
  end

  def render_grid
  end

  def make_grid
  end

  def validate_move(coordinate)
    coordinate.between(0..9)
  end

  def delete_row
  end

  def full_row?
  end

end