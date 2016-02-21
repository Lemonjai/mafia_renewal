class CreateMafiaGames < ActiveRecord::Migration
  def change
    create_table :mafia_games do |t|
      t.integer :max
      t.integer :min

      t.timestamps null: false
    end
  end
end
