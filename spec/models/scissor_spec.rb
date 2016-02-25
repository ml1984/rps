require 'rails_helper'

RSpec.describe Scissor, type: :model do

  it "should win over paper" do
    a = Scissor.new
    b = Paper.new
    expect(a <=> b).to eq(1)
  end
end
