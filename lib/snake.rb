require 'pry-byebug'

class Snake
  SIZE = 20

  def initialize
    @x = 0
    @y = 0
    @vel_x = 0
    @vel_y = 0
    @tail = []

    @speed = 0.1
    p @speed
  end

  def update
    @x += @vel_x
    @y += @vel_y
  end

  def draw
    Gosu.draw_rect(@x, @y, SIZE, SIZE, Gosu::Color::GREEN)
  end

  def move(direction = {})
    p direction
    set_direction
    update
  end

  def move_up
    @vel_x = 0
    @vel_y = -1
  end

  def move_left
    @vel_x = -1
    @vel_y = 0
  end

  def move_down
    @vel_x = 0
    @vel_y = 1
  end

  def move_right
    @vel_x = 1
    @vel_y = 0
  end

  def set_direction
    moving_axis = [@vel_y, @vel_x].select { |vel| vel != 0 }.first
    p moving_axis
  end
end
