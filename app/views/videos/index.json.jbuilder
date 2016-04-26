json.array!(@videos) do |video|
  json.extract! video, :id, :name, :description, :view, :user_id
  json.url video_url(video, format: :json)
end
