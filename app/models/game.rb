class Game < ActiveRecord::Base
  before_save :calculate_winner

  def player_1_object
    if player1_move == 'KeyA'
      Rock.new
    elsif player1_move == 'KeyS'
      Paper.new
    elsif player1_move == 'KeyD'
      Scissor.new
    else
      raise "I don't know this object"
    end
  end

  def player_2_object
    if player2_move == 'KeyJ'
      Rock.new
    elsif player2_move == 'KeyK'
      Paper.new
    elsif player2_move == 'KeyL'
      Scissor.new
    else
      raise "I don't know this object"
    end
  end

  def calculate_winner
    # exit this method if player1_move or player2_move is empty
    return true unless player1_move.present? && player2_move.present?

    # compare the two objects
    result = player_1_object <=> player_2_object

    # store the winner's name in winner column
    if result == 1
      self.winner = player1_name
    elsif result == -1
      self.winner = player2_name
    else #result == 0
      self.winner = "Cat's game"
    end

    return true
  end
end
