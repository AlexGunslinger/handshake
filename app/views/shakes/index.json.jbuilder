json.array!(@shakes) do |shake|
  json.extract! shake, :id, :title, :shake_url
  json.url shake_url(shake, format: :json)
end
