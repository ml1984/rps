require 'rails_helper'

RSpec.describe Paper, type: :model do

  it "should win over rock" do
    a = Paper.new
    b = Rock.new
    expect(a <=> b).to eq(1)
  end
  
  it "should cats game with paper" do
    a = Paper.new
    b = Paper.new
    expect(a <=> b).to eq(0)
  end

  it "should loose over scissors" do
    a = Paper.new
    b = Scissor.new
    expect(a <=> b).to eq(-1)
  end
end
