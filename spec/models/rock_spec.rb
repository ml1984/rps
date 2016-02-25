require 'rails_helper'

RSpec.describe Rock, type: :model do

  it "should win over scissor" do
    a = Rock.new
    b = Scissor.new
    expect(a <=> b).to eq(1)
  end
end
