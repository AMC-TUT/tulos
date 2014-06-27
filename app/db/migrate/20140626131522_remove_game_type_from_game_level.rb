class RemoveGameTypeFromGameLevel < ActiveRecord::Migration
  def change
    remove_column :game_levels, :game_type, :integer
  end
end
