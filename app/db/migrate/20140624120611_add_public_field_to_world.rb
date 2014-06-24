class AddPublicFieldToWorld < ActiveRecord::Migration
  def change
    add_column :worlds, :public, :boolean, :default => true
  end
end
