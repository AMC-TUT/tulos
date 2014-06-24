class Level < ActiveRecord::Base
  belongs_to :world
  has_one :trap, :dependent => :destroy
  has_one :answer, :dependent => :destroy
  has_many :numbers, :dependent => :destroy

  accepts_nested_attributes_for :trap
  validates_associated :trap

  accepts_nested_attributes_for :answer
  validates_associated :answer

  accepts_nested_attributes_for :numbers
  validates_associated :numbers

  validates :level_type, :presence => true
  validates :level_format, :presence => true
end
