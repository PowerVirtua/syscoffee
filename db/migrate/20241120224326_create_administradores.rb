class CreateAdministradores < ActiveRecord::Migration[7.2]
  def change
    create_table :administradores do |t|
      t.string :tipo
      t.string :nome
      t.string :sobrenome
      t.string :identificacao
      t.string :celular1
      t.string :celular2
      t.string :telefone_fixo
      t.string :razao_social
      t.string :nome_fantasia
      t.string :representante_legal
      t.date :data_cadastro
      t.string :rua
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :email
      t.string :senha
      t.string :confirmar_senha

      t.timestamps
    end
  end
end
