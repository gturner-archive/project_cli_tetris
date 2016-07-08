#10x20 view
#10x24 so the block has space to generate (extra 4 on top)

class Board
  def initialize
    @grid = Array.new(24){Array.new(10)}
  end

  def make_new_block
    @block = LiveBlock.new
  end

  def move_block(move)
    case move
    when "a"
      @block.move_left
    when "d"
      @block.move_right
    when "s"
      @block.quick_fall
    #rotate case later here
    end
  end


  def change_blocks
    # all live blocks on board are changed to blocks
    @grid.each do |row|
      row.map! do |space|
        space = Block.new if space.class == LiveBlock
      end
    end
  end

  def 

  def next_empty_space(current_column)
    get_columns(current_column).each_with_index { |block, index| return index if block.nil? }
  end

  def get_columns(column_num)
    @grid.map { |row| row[column_num] }
  end

  def live_blocks
    temp_array = []
    @grid.each_with_index do |row, row_num|
      row.each_with_index { |piece, col_num| temp_array << [row_num, col_num]  if piece.class == LiveBlock }
    end
    temp_array
  end

  def kill_block
    if hit_bottom?
      @blocks.push(DeadBlock.new(@block.x, @block.y))
      @blocks.select { |i| i.class == DeadBlock }
    end
  end

  def render_grid
    @display=Array.new(10){Array.new(20){" "}}
    @blocks.each do |b|
      @display[b.x][b.y]=:x
    end
    print @display.transpose.reverse
  #put all the blocks in an array
  end

  def validate_move(coordinate)
    coordinate.between(0..9)
  end

  def delete_row
  end

  def full_row?
  end

end
