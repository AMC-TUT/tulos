class RemoveTypeFromLevel < ActiveRecord::Migration
  def change
    remove_column :levels, :type, :integer
  end
end
