class AddGameLevelFieldToGameLevelAnswer < ActiveRecord::Migration
  def change
    add_reference :game_level_answers, :game_level, index: true
  end
end
