class RemoveChatIdFromRooms < ActiveRecord::Migration[5.2]
  def change
  	remove_column :rooms, :chat_id, :integer
  end
end
