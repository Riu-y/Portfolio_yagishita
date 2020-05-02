class AddUserStautsToAdClient < ActiveRecord::Migration[5.2]
  def change
  	add_column :ad_clients, :user_status, :integer, null: false, default: 0
  end
end
