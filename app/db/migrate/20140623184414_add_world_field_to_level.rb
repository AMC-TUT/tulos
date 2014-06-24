class AddWorldFieldToLevel < ActiveRecord::Migration
  def change
    add_reference :levels, :world, index: true
  end
end
