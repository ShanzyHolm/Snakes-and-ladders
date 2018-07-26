class Player

  attr_reader :name, :counter

  def initialize(name, counter)
    @name = name
    @counter = counter
  end

  def roll_dice(dice)
    return dice.roll()
  end

  def move_counter(number_of_spaces_to_move)
    @counter.move(number_of_spaces_to_move)
  end



end
