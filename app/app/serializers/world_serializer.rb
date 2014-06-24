class WorldSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :player
end
