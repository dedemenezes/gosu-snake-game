class BorderLimit
  def initialize(max_width, max_height)
    @max_width = max_width
    @max_height = max_height
  end

  def check_penalty(snake_x, snake_y)
    axis_x(snake_x) || axis_y(snake_y)
  end

  private

  def axis_x(snake_x)
    snake_x > @max_width || snake_x < 0
  end

  def axis_y(snake_y)
    snake_y > @max_height || snake_y < 0
  end
end
