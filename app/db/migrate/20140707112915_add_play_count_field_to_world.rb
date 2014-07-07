class AddPlayCountFieldToWorld < ActiveRecord::Migration
  def change
    add_column :worlds, :play_count, :integer, index: true, :default => 0
  end
end
