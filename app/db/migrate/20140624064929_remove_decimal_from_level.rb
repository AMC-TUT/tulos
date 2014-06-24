class RemoveDecimalFromLevel < ActiveRecord::Migration
  def change
    remove_column :levels, :decimal, :integer
  end
end
