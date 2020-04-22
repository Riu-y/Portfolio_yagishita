class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :ad_client_id, null: false
      t.integer :driver_id, null: false
      t.integer :ad_id, null: false

      t.timestamps
    end
  end
end
