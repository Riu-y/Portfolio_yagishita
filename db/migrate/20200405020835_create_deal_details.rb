class CreateDealDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :deal_details do |t|
      t.integer :driver_id, null: false
      t.integer :room_id, null: false
      t.string :prove_image_id, null: false
      t.integer :daily_amount, null: false
      t.integer :transfer_status, null: false, default: 0,limit: 1
      t.string :bank_name, null: false
      t.string :branch_name, null: false
      t.integer :account_type, null: false
      t.integer :account_number, null: false
      t.string :account_name, null: false

      t.timestamps
    end
  end
end
