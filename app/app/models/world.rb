class World < ActiveRecord::Base
  has_many :levels, :dependent => :destroy

  accepts_nested_attributes_for :levels #, :reject_if => lambda { |l| l[:type].blank? }, :allow_destroy => true
  validates_associated :levels

  validates :title, :presence => true, :length => { :minimum => 5, :maximum => 255 }
  validates :description, :presence => true
end
