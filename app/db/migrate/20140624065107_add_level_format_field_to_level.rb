class AddLevelFormatFieldToLevel < ActiveRecord::Migration
  def change
    add_column :levels, :level_format, :integer
  end
end
