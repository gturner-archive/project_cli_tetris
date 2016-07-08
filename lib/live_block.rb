class LiveBlock < Block

  def initialize(x_coord)
    super(x_coord,20)
  end

  def coordinates
    [@x, @y]
  end

  def move_left
    x -= 1 if @board.validate_move(x - 1)
  end
  def move_right
    x += 1 if @board.validate_move(x + 1)
  end
  # def rotate
  def quick_fall
    # fall until you hit bottom
  end
  def fall
    y -= 1 unless @board.hit_bottom?
  end

end
