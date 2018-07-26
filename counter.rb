require("pry")

class Counter

attr_reader :colour, :position

  def initialize(colour)
    @colour = colour
    @position = 0
  end

  def move(number_of_spaces_to_move)
    # binding.pry
    @position += number_of_spaces_to_move
  end

end
