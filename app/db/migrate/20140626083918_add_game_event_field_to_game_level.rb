class AddGameEventFieldToGameLevel < ActiveRecord::Migration
  def change
    add_reference :game_levels, :game_event, index: true
  end
end
