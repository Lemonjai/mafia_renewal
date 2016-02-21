class AddCurrentnumberToGame < ActiveRecord::Migration
  def change
    add_column :games, :current_number, :integer
  end
end
