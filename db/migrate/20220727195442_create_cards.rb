class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :state, null: false, default: 0
      t.string :name
      t.string :image_name

      t.timestamps
    end
  end
end
