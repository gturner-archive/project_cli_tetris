class Tetris
  def initialize
    @player = Player.new
    @board = Board.new
  end

  def play
    until lose
      @player.get_input
      @board.make_grid
      @board.render_grid
    end

  def lose
# if block is in top 4 rows after landing
  end


end


#different class for blocks once they hit the ground
