class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.integer :denominator
      t.integer :numerator
      t.references :level, index: true

      t.timestamps
    end
  end
end
