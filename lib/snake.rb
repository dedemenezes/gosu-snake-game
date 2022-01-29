class Snake
  SIZE = 20
  def initialize
    @x = 0
    @y = 0
    @vel_x = 0
    @vel_y = 0

  end

  def update;end

  def draw
    Gosu.draw_rect(@x, @y, SIZE, SIZE, Gosu::Color::GREEN)
  end
end
