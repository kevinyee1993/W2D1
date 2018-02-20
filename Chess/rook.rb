require_relative 'board.rb'
require_relative 'piece.rb'
require_relative 'modules.rb'


class Rook < Piece
  include SlidingPiece

  attr_reader :current_pos, :directions

  def initialize
    super('r')
    @current_pos = [0,0]
    
  end

  def move
    @directions = self.horizon_array
    all_pos = []

    track = @current_pos
    @directions.each do |dir|
      track = @current_pos

      until out_of_bounds?(track)
        track = [track.first + dir.first, track.last + dir.last]
        all_pos << track if in_bounds?(track)
      end
    end
    all_pos


  end

  def out_of_bounds?(pos)
    row, col = pos
    row > 7 || row < 0 || col > 7 || col < 0
  end

  def in_bounds?(pos)
    row, col = pos
    row <= 7 && col >= 0 && row >= 0 && col <= 7
  end

end

r = Rook.new
p r.move
