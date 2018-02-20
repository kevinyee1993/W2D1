require_relative 'modules'


class Piece
attr_reader :symbol

def initialize(symbol)
  @symbol = symbol
end

def inspect
  @symbol
end

def move
end

def test
  print "hello"
end

end
