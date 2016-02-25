require 'rails_helper'

RSpec.describe Paper, type: :model do

  it "should win over rock" do
    a = Paper.new
    b = Rock.new
    expect(a <=> b).to eq(1)
  end
end
