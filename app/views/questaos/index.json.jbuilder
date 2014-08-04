json.array!(@questaos) do |questao|
  json.extract! questao, :id, :titulo, :data, :status, :solucao, :pauta_id
  json.url questao_url(questao, format: :json)
end
