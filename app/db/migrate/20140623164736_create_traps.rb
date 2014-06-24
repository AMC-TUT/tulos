class CreateTraps < ActiveRecord::Migration
  def change
    create_table :traps do |t|
      t.integer :denominator
      t.integer :numerator
      t.references :level, index: true

      t.timestamps
    end
  end
end
