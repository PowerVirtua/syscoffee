json.extract! cliente, :id, :nome, :sobrenome, :cpf, :celular1, :celular2, :data_cadastro, :rua, :numero, :complemento, :bairro, :cidade, :estado, :email, :observacao, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
