class BoundingBox
  attr_reader :x_coordinate, :y_coordinate, :width, :height

  def initialize(x_coordinate, y_coordinate, width, height)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @width = width
    @height = height
  end

  def width
    @width
  end

  def height
    @height
  end

  def left
    @x_coordinate
  end

  def right
    @x_coordinate + @width
  end

  def top
    @y_coordinate + @height
  end

  def bottom
    @y_coordinate
  end

  def contains_point?(x,y)
    (x >= @x_coordinate && x <= right) && (y >= @y_coordinate && y <= top)
  end
end
