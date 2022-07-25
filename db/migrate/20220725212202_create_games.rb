class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :num_players
      t.integer :num_pairs

      t.timestamps
    end
  end
end
