class Block
  attr_accessor :x, :y
  def initialize(x_coord)
    @x = x_coord
    @y = 20
  end

  def coordinates
    [@x, @y]
  end

  def move_left
    x -= 1 if @board.validate_move(x - 1)
  def move_right
    x += 1 if @board.validate_move(x + 1)
  # def rotate
  def quick_fall
    # fall until you hit bottom
  end
  def fall
    y -= 1 unless @board.hit_bottom?
  end

end



top section
|**| = 20-23
|  |
|  | = 1-19
|__|
bottom row = 0