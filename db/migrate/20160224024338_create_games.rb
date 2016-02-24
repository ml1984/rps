class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :player_1_name
      t.string :player_2_name
      t.string :player_1_move
      t.string :player_2_move
      t.string :winner

      t.timestamps null: false
    end
  end
end
