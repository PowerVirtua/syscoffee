class CreateMovimentacoes < ActiveRecord::Migration[7.2]
  def change
    create_table :movimentacoes do |t|
      t.string :codigo_lote
      t.string :tipo
      t.references :cliente, null: false, foreign_key: true
      t.integer :quantidade_sacas
      t.float :peso_total
      t.string :localizacao
      t.references :qualidade, null: false, foreign_key: true
      t.date :data_cadastro
      t.references :embalagem, null: false, foreign_key: true
      t.text :observacao

      t.timestamps
    end
  end
end
