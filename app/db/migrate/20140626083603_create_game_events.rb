class CreateGameEvents < ActiveRecord::Migration
  def change
    create_table :game_events do |t|
      t.references :user, index: true
      t.references :world, index: true
      t.integer :movement
      t.integer :health

      t.timestamps
    end
  end
end
