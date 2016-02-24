class Game < ActiveRecord::Base
  before_save :calculate_winner

  def player_1_object
    if player_1_move == 'a'
      Rock.new
    elsif player_1_move == 's'
      Paper.new
    elsif player_1_move == 'd'
      Scissor.new
    else
      raise "I don't know this object"
    end
  end

  def player_2_object
    if player_2_move == 'j'
      Rock.new
    elsif player_2_move == 'k'
      Paper.new
    elsif player_2_move == 'l'
      Scissor.new
    else
      raise "I don't know this object"
    end
  end

  def calculate_winner
    # exit this method if player_1_move or player_2_move is empty
    return true unless player_1_move.present? && player_2_move.present?

    # compare the two objects
    result = player_1_object <=> player_2_object

    # store the winner's name in winner column
    if result == 1
      self.winner = player_1_name
    elsif result == -1
      self.winner = player_2_name
    else #result == 0
      self.winner = "Cat's game"
    end

    return true
  end
end
