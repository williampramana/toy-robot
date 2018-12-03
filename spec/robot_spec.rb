require "spec_helper"

RSpec.describe Robot do
  subject { Robot.new(0, 0, "NORTH") }

  it 'Move to the left' do
    subject.move_left
    expect(subject.position_x).to eq(-1)
  end

  it 'Move to the left 3 times' do
    3.times { subject.move_left }
    expect(subject.position_x).to eq(-3)
  end

  it 'Move to the right' do
    subject.move_right
    expect(subject.position_x).to eq(1)
  end

  it 'Move to the right 3 times' do 
    3.times { subject.move_right }
    expect(subject.position_x).to eq(3)
  end

  it 'Move Up' do 
    subject.move_up
    expect(subject.position_y).to eq(1)
  end

  it 'Move Up 3 times' do
    3.times { subject.move_up }
    expect(subject.position_y).to eq(3)
  end

  it 'Move Down' do
    subject.move_down
    expect(subject.position_y).to eq(-1)
  end

  it 'Move Down 3 times' do
    3.times { subject.move_down }
    expect(subject.position_y).to eq(-3)
  end

  it 'Turn Left' do
    subject.turn_left
    expect(subject.orientation).to eq("WEST")
  end

  it 'Turn Right' do
    subject.turn_right
    expect(subject.orientation).to eq("EAST")
  end
end