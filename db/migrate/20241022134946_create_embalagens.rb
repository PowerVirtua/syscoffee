class CreateEmbalagens < ActiveRecord::Migration[7.2]
  def change
    create_table :embalagens do |t|
      t.string :nome, limit: 150

      t.timestamps
    end
  end
end
