class AddAdIdToRooms < ActiveRecord::Migration[5.2]
  def change
  	add_column :rooms, :ad_id, :integer
  end
end
