require 'gosu'
require_relative 'snake'

class GameWindow < Gosu::Window
  def initialize
    super(32 * Snake::SIZE, 24 * Snake::SIZE, false)
    self.caption = "snake_game"

    @snake = Snake.new
  end

  def update
  end

  def draw
    @snake.draw
  end
end

GameWindow.new.show
