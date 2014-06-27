class AddLevelTypeFieldToGameLevel < ActiveRecord::Migration
  def change
    add_column :game_levels, :level_type, :integer
  end
end
