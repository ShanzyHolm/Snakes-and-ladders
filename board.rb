class Board

  attr_reader :number_of_squares

  def initialize(number_of_squares, snakes_ladders)
    @number_of_squares = number_of_squares
    @snakes_ladders = snakes_ladders
  end

  def check_snake_or_ladder(counter_position)
    @snakes_ladders.each do |sladder|
      if sladder.start_position() == counter_position
        return sladder.spaces_to_travel()
      end
    end
    return nil
    # return 0
  end

end
