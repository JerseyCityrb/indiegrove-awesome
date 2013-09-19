json.array!(@photos) do |photo|
  json.extract! photo, :caption, :private, :user_id
  json.url photo_url(photo, format: :json)
end
