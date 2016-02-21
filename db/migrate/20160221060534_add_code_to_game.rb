class AddCodeToGame < ActiveRecord::Migration
  def change
    add_column :games, :code, :integer
  end
end
