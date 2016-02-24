class Rock < ActiveRecord::Base
  belongs_to :Game

  def <=>(b)
    if b.is_a?(Scissor)
      1
    elsif b.is_a?(Paper)
      -1
    elsif b.is_a?(Rock)
      0
    end
  end
end
