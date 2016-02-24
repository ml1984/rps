class Scissor

  def <=>(b)
    if b.is_a?(Paper)
      1
    elsif b.is_a?(Rock)
      -1
    elsif b.is_a?(Scissor)
      0
    end
  end
end
