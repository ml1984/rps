require 'rails_helper'

RSpec.describe Rock, type: :model do

  it "should win over scissor" do
    a = Rock.new
    b = Scissor.new
    expect(a <=> b).to eq(1)
  end

  it "should cats game with Rock" do
    a = Rock.new
    b = Rock.new
    expect(a <=> b).to eq(nil)
  end
  
  it "should loose over Paper" do
    a = Rock.new
    b = Paper.new
    expect(a <=> b).to eq(-1)
  end
end
