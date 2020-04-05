class CreateCarInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :car_informations do |t|
      t.integer :driver_id,null: false
      t.string :manufacturer_name,null: false
      t.string :car_name,null: false
      t.string :certificate_image,null: false

      t.timestamps
    end
  end
end
