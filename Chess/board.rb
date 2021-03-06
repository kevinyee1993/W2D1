require_relative 'piece'
require_relative 'null_piece'
require_relative 'display'
require_relative 'queen'

class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8){Array.new(8)}
    queen = Piece.new(self, [0,0])

    @grid[0][0] = queen
  end

  def valid_move?(start_pos, end_pos)
    raise "No piece there" if self[start_pos].nil?
    raise "Piece already there" unless self[end_pos].nil?
    raise "You are out of bounds!" if start_pos.first > 8 ||
    start_pos.last > 8
    raise "You are out of bounds!" if end_pos.first > 8 or end_pos.last > 8
    raise "You are out of bounds!" if first_pos.first < 0 or first_pos.last < 0
    raise "You are out of bounds!" if end_pos.first < 0 or end_pos.last < 0

  end

  def populate
    @grid[1].each_index do |i|
      @grid[1][i] = "p" # Queen.new
      @grid[6][i] = "p"
    end
  end


  def move_piece(start_pos, end_pos)



    temp = self[start_pos]
    self[start_pos] = nil
    self[end_pos] = temp

  end

  def []=(pos, piece)
    row, col = pos
    @grid[row][col] = piece
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end



end

b = Board.new
b.populate
d = Display.new(b)

d.render
# puts "hello "
# puts "-----------------------------"
