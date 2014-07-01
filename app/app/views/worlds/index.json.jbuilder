json.array!(@worlds) do |world|
  json.extract! world, :id, :title, :description, :player
end
