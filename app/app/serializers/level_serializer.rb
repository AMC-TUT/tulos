class LevelSerializer < ActiveModel::Serializer
  attributes :id, :world_id, :level_type, :level_format
end
