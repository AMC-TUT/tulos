class CreateWorlds < ActiveRecord::Migration
  def change
    create_table :worlds do |t|
      t.string :title
      t.text :description
      t.integer :player

      t.timestamps
    end
  end
end
