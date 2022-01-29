require 'gosu'
require_relative 'snake'
require_relative 'fruit'
require_relative 'border_limit'

class GameWindow < Gosu::Window
  MAX_WIDTH = 32 * Snake::SIZE
  MAX_HEIGHT = 24 * Snake::SIZE
  def initialize
    super(MAX_WIDTH, MAX_HEIGHT, false)
    self.caption = "snake_game"

    @snake = Snake.new
    @fruit = Fruit.new
    @fruits = []
    @border_limit = BorderLimit.new(MAX_WIDTH, MAX_HEIGHT)
  end

  def update
    @snake.update
    @snake.restart_position if @border_limit.check_penalty(@snake.x, @snake.y)
  end

  def draw
    @snake.draw
    @fruit.draw if @fruits.empty?
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
