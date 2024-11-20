json.extract! administrador, :id, :tipo, :nome, :sobrenome, :identificacao, :celular1, :celular2, :telefone_fixo, :razao_social, :nome_fantasia, :representante_legal, :data_cadastro, :rua, :numero, :complemento, :bairro, :cidade, :estado, :email, :senha, :confirmar_senha, :created_at, :updated_at
json.url administrador_url(administrador, format: :json)
