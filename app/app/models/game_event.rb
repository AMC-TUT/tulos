class GameEvent < ActiveRecord::Base
  belongs_to :user
  belongs_to :world
end
