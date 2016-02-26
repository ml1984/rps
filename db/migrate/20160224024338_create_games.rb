class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :player1_name
      t.string :player2_name
      t.string :player1_move
      t.string :player2_move
      t.string :winner

      t.timestamps null: false
    end
  end
end
