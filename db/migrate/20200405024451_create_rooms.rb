class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :chat_id, null: false
      t.integer :ad_client_id, null: false
      t.integer :driver_id, null: false

      t.timestamps
    end
  end
end
