class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.references :course, null: false, foreign_key: true
      t.integer :num_players
      t.integer :user_id

      t.timestamps
    end
  end
end
