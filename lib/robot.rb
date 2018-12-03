class Robot
  attr_reader :position_x, :position_y, :orientation

  def initialize(position_x = 0, position_y = 0, orientation = "NORTH")
    @position_x = position_x
    @position_y = position_y
    @orientation = orientation
  end

  def move
    case @orientation
    when "NORTH"
      move_up
    when "SOUTH"
      move_south
    when "EAST"
      move_right
    when "WEST"
      move_left
    end
  end

  def report
    {
      position_x: position_x,
      position_y: position_y,
      orientation: orientation
    }
  end

  def move_left
    @position_x -= 1
  end

  def move_right
    @position_x += 1
  end

  def move_up
    @position_y += 1
  end

  def move_down
    @position_y -= 1
  end

  def turn_left
    @orientation = case @orientation
    when "NORTH" then "WEST"
    when "WEST" then "SOUTH"
    when "SOUTH" then "EAST"
    when "EAST" then "NORTH"
    end
  end

  def turn_right
    @orientation = case @orientation
    when "NORTH" then "EAST"
    when "EAST" then "SOUTH"
    when "SOUTH" then "WEST"
    when "WEST" then "NORTH"
    end
  end

  def next_move
    case @orientation
    when "NORTH"
      [@position_x, @position_y + 1]
    when "SOUTH"
      [@position_x, @position_y - 1]
    when "EAST"
      [@position_x + 1, @position_y]
    when "WEST"
      [@position_x - 1, @position_y]
    end
  end
end