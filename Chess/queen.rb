require_relative 'piece'
require_relative 'modules'
require_relative 'board'


class Queen < Piece
  attr_reader :directions, :current_pos
  include SlidingPiece

  def initialize
    super("q")
    @current_pos = [0,0]
  end

  def moves
    pos_moves = []
    @directions = self.horizon_array + self.diagonal_array

    track = @current_pos

    @directions.each do |dir|
        track = @current_pos

        until out_of_bounds?(track)
          track = [track.first + dir.first, track.last + dir.last]
          pos_moves << track if in_bounds?(track)
        end
        
      end

      pos_moves
    end


  def grow_unblocked(x,y)
  end

  def in_bounds?(pos)
    row, col = pos
    (row <= 7 && row >= 0) && (col <= 7 && col >= 0)
  end

  def out_of_bounds?(pos)
    row, col = pos
    row > 7 || col > 7 || row < 0 || col < 0
  end
end

queen = Queen.new
p queen.moves


# a = Queen.new
#
# p a.move_dirs
