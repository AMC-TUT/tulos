class GameLevel < ActiveRecord::Base
  has_many :game_level_answers, :dependent => :destroy
  belongs_to :game_event

  accepts_nested_attributes_for :game_level_answers, :reject_if => lambda { |a| a[:x].blank? }, :allow_destroy => true
  validates_associated :game_level_answers

  validates :level_format, :presence => true
  validates :level_type, :presence => true
end
