class GameEventSerializer < ActiveModel::Serializer
  attributes :id, :movement, :health
  has_one :user
  has_one :world
end
