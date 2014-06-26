class AddGameTypeFieldToGameLevel < ActiveRecord::Migration
  def change
    add_column :game_levels, :game_type, :integer
  end
end
