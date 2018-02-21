# require_relative 'board.rb'
require_relative 'cursor.rb'
require 'colorize'
require_relative 'piece.rb'

class Display
  attr_reader :cursor, :board
  def initialize(board)
    @cursor = Cursor.new([0, 0], board)
    @board = board
  end

  def render
      @board.grid.each do |row|
        new_str = ""
        row.each do |col|
          if col.nil?
            new_str += "[ ]"
          else
            new_str += "[#{col}]"
          end
        end
        puts new_str
      end

    true
  end
end
