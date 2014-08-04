json.array!(@reuniaos) do |reuniao|
  json.extract! reuniao, :id, :titulo, :data, :horaInicio, :horaFim, :status, :local_id, :ata_id, :pauta_id, :categoria
  json.url reuniao_url(reuniao, format: :json)
end
