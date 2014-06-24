class Number < ActiveRecord::Base
  belongs_to :level

  validates :denominator, :presence => true
end
