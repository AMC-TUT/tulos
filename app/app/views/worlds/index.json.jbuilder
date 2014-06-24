json.array!(@worlds) do |world|
  json.extract! world, :id, :title, :description, :player
  json.url world_url(world, format: :json)
end
