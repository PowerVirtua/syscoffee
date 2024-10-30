json.extract! movimentacao, :id, :codigo_lote, :tipo, :cliente_id, :quantidade_sacas, :peso_total, :localizacao, :qualidade_id, :data_cadastro, :embalagem_id, :observacao, :created_at, :updated_at
json.url movimentacao_url(movimentacao, format: :json)
