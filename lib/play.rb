class Play
  attr_reader :table
  attr_reader :robot

  def initialize(table)
    @table = table
  end

  def place(x_position, y_position, orientation)
    return unless @table.inbounds?(y_position, x_position)

    @robot = Robot.new(y_position, x_position, orientation)
  end

  def placed?
    !robot.nil?
  end

  def move
    return unless placed?
    return unless @table.inbounds?(*robot.next_move)

    robot.move
  end

  def turn_left
    return unless placed?
    robot.turn_left
  end

  def turn_right
    return unless placed?
    robot.turn_right
  end

  def report
    return unless placed?
    position = robot.report
    puts "#{position[:position_x]}, #{position[:position_y]}, #{position[:orientation]}"
  end
end