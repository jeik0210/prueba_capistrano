class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :paternal
      t.string :maternal
      t.date :date_nac
      t.boolean :sexo
      t.references :editorial, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
