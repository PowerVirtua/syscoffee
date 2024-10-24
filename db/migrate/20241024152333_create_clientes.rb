class CreateClientes < ActiveRecord::Migration[7.2]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :sobrenome
      t.string :cpf
      t.string :celular1
      t.string :celular2
      t.date :data_cadastro
      t.string :rua
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :email
      t.text :observacao

      t.timestamps
    end
  end
end
