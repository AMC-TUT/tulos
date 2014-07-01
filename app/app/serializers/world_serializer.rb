class WorldSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :user_id, :title, :description, :player, :public, :created_at
  has_many :levels
end
