class CreateTrabajadors < ActiveRecord::Migration
  def change
    create_table :trabajadors do |t|
      t.string :nombre
      t.string :email

      t.timestamps null: false
    end
  end
end
