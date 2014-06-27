class GameLevelAnswer < ActiveRecord::Base
  belongs_to :game_level

  validates :x, :presence => true
  validates :accuracy, :presence => true
  validates :solved, :presence => true
end
