
# require_relative 'board.rb'
require_relative 'piece.rb'

module SlidingPiece

  def horizon_array
    return [[1,0],[0,1],[-1,0],[0,-1]]
end

  def diagonal_array
    return [[-1,-1],[1,1],[1,-1],[-1,1]]
  end


  def moves()
  end

  def move_dirs
  end

  def grow_unblocked(x,y)
  end



end
