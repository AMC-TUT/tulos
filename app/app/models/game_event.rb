class GameEvent < ActiveRecord::Base
  belongs_to :user
  belongs_to :world

  has_many :game_levels, :dependent => :destroy

  accepts_nested_attributes_for :game_levels, :reject_if => lambda { |l| l[:level_type].blank? }, :allow_destroy => true
  validates_associated :game_levels

  validates :movement, :presence => true
  validates :health, :presence => true
end
