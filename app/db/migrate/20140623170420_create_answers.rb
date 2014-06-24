class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :denominator
      t.integer :numerator
      t.references :level, index: true

      t.timestamps
    end
  end
end
