class AddColumnToDriver < ActiveRecord::Migration[5.2]
  def change
  	add_column :drivers, :activity_area, :string
		add_column :drivers, :latitude, :float
		add_column :drivers, :longitude, :float
  end
end
