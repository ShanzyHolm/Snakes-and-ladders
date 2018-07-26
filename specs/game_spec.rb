require("minitest/autorun")
require("minitest/rg")
# require("pry")
require_relative("../game.rb")
require_relative("../board.rb")
require_relative("../dice.rb")
require_relative("../counter.rb")
require_relative("../player.rb")
require_relative("../sladder.rb")


class GameTest < MiniTest::Test

  def setup()
    @counter_red = Counter.new("Red")
    @counter_yellow = Counter.new("Yellow")
    @ladder = Sladder.new(6, 3)
    @snake = Sladder.new(43, -9)
    @board = Board.new(50, [@ladder, @snake])
    @player1 = Player.new("Joe", @counter_red)
    @player2 = Player.new("Sue", @counter_yellow)
    @dice = Dice.new(6)
    @game = Game.new([@player1, @player2], @board, @dice)
  end

  def test_player_has_won()
    @player1.move_counter(50)
    result = @game.check_winner(@player1)
    assert_equal(true, result)
  end

  def test_game_won()
    @game.start_game()
    assert_equal(true, @game.is_won())
  end

end
