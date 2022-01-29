require 'pry-byebug'

class Snake
  SIZE = 20
  attr_reader :x, :y

  def initialize
    @x = 0
    @y = 0
    @vel_x = 0
    @vel_y = 0
    @tail = []
    @speed = 1
  end

  def update
    @x += @vel_x
    @y += @vel_y
  end

  def draw
    # @x = (@x + @vel_x * SIZE) % GameWindow::MAX_WIDTH
    # @y = (@y + @vel_y * SIZE) % GameWindow::MAX_HEIGHT
    Gosu.draw_rect(@x, @y, SIZE, SIZE, Gosu::Color::GREEN)
  end

  def move_up
    @vel_x = 0
    @vel_y = @speed * -1
  end

  def move_left
    @vel_x = @speed * -1
    @vel_y = 0
  end

  def move_down
    @vel_x = 0
    @vel_y = @speed * 1
  end

  def move_right
    @vel_x = @speed * 1
    @vel_y = 0
  end

  def restart_position
    center(GameWindow::MAX_WIDTH / 2, GameWindow::MAX_HEIGHT / 2)
  end

  private

  def center(width, height)
    @x = width
    @y = height
  end

end
