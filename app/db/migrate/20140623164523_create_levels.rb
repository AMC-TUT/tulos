class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :type, :default => 1
      t.boolean :decimal, :default => false

      t.timestamps
    end
  end
end
