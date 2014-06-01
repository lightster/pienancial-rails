json.array!(@pies) do |pie|
  json.extract! pie, :id, :title, :is_required
end
