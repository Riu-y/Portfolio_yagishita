class AddColumnToCarInformations < ActiveRecord::Migration[5.2]
  def change
  	add_column :car_informations, :flame_number, :string
  	add_column :car_informations, :license_plate, :string
  end
end
