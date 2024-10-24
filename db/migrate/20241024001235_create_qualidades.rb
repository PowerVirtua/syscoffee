class CreateQualidades < ActiveRecord::Migration[7.2]
  def change
    create_table :qualidades do |t|
      t.string :nome, limit: 150

      t.timestamps
    end
  end
end
