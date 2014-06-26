class CreateGameLevels < ActiveRecord::Migration
  def change
    create_table :game_levels do |t|
      t.integer :level_format
      t.integer :solved
      t.integer :skip
      t.integer :trap
      t.integer :jumps
      t.integer :distance

      t.timestamps
    end
  end
end
