require 'gosu'
require_relative 'snake'

class GameWindow < Gosu::Window
  def initialize
    super(32 * Snake::SIZE, 24 * Snake::SIZE, false)
    self.caption = "snake_game"

    @snake = Snake.new
  end

  def update
    @snake.update
  end

  def draw
    @snake.draw
  end

  def button_down(id)
    case id
    when Gosu::KB_UP then @snake.move_up
    when Gosu::KB_LEFT then @snake.move_left
    when Gosu::KB_DOWN then @snake.move_down
    when Gosu::KB_RIGHT then @snake.move_right
    else
    end
  end
end

GameWindow.new.show
