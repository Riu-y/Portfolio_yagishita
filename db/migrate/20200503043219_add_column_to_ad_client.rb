class AddColumnToAdClient < ActiveRecord::Migration[5.2]
  def change
  	add_column :ad_clients, :latitude, :float
  	add_column :ad_clients, :longitude, :float
  end
end
