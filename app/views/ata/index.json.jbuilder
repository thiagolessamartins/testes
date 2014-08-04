json.array!(@ata) do |atum|
  json.extract! atum, :id, :titulo, :status, :data, :hora, :atafinal
  json.url atum_url(atum, format: :json)
end
