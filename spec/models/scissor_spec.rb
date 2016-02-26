require 'rails_helper'

RSpec.describe Scissor, type: :model do

  it "should win over paper" do
    a = Scissor.new
    b = Paper.new
    expect(a <=> b).to eq(1)
  end

  it "should cats game with Scissor" do
    a = Scissor.new
    b = Scissor.new
    expect(a <=> b).to eq(0)
  end
  
  it "should loose over Rock" do
    a = Scissor.new
    b = Rock.new
    expect(a <=> b).to eq(-1)
  end
end
