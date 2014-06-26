class CreateGameLevelAnswers < ActiveRecord::Migration
  def change
    create_table :game_level_answers do |t|
      t.integer :solved
      t.integer :accuracy
      t.integer :x

      t.timestamps
    end
  end
end
