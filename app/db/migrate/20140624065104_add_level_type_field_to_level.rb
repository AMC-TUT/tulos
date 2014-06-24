class AddLevelTypeFieldToLevel < ActiveRecord::Migration
  def change
    add_column :levels, :level_type, :integer
  end
end
