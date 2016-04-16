class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.string :num_serie
      t.int :tamanio
      t.text :descripcion

      t.timestamps null: false
    end
    add_index :inventarios, :num_serie, unique: true
  end
end
