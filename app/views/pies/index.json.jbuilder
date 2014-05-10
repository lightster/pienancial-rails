json.array!(@pies) do |py|
  json.extract! py, :id, :user_id, :title, :is_required
  json.url py_url(py, format: :json)
end
