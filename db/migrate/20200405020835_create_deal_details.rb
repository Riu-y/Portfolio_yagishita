class CreateDealDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :deal_details do |t|
      t.integer :under_deal_id, null: false
      t.integer :payment_amount
      t.integer :transfer_status, null: false, default: 0
      t.string :bank_name, null: false
      t.string :branch_name, null: false
      t.integer :account_type, null: false
      t.integer :account_number, null: false
      t.string :account_name, null: false

      t.timestamps
    end
  end
end
