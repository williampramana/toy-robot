require "spec_helper"

RSpec.describe Table do
  subject { Table.new }

  context "inbounds?" do
    it { should be_inbounds(0, 0) }
    it { should_not be_inbounds(5, 5) }
  end
end