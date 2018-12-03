class Table
  attr_reader :x_range
  attr_reader :y_range

  def initialize
    @x_range = Range.new(0, 4)
    @y_range = Range.new(0, 4)
  end

  def inbounds?(x_position, y_position)
    @x_range.cover?(x_position) && 
    @y_range.cover?(y_position)
  end
end