require 'pry-byebug'

class Fruit
  SIZE = 20

  attr_reader :x, :y
  def initialize
    @x = ((rand * GameWindow::MAX_WIDTH).to_i * SIZE) % GameWindow::MAX_WIDTH
    @y = ((rand * GameWindow::MAX_HEIGHT).to_i * SIZE) % GameWindow::MAX_HEIGHT
  end

  def update
  end

  def draw
    Gosu.draw_rect(@x, @y, SIZE, SIZE, Gosu::Color::RED)
  end
end
