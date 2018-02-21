require_relative 'modules'
# require_relative 'board'


class Piece
  attr_reader :board, :current_pos

  def initialize(board, current_pos)
    @board = board
    @current_pos = current_pos
  end

  # def inspect
  #   @symbol
  # end

  def move
  end



end
