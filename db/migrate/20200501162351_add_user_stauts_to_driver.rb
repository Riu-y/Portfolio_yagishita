class AddUserStautsToDriver < ActiveRecord::Migration[5.2]
  def change
  	add_column :drivers, :user_status, :integer, null: false, default: 0
  end
end
