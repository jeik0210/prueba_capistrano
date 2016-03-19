class CreateEditorials < ActiveRecord::Migration
  def change
    create_table :editorials do |t|
      t.string :name
      t.string :pais
      t.string :direccion

      t.timestamps null: false
    end
  end
end
