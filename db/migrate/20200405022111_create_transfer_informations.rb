class CreateTransferInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :transfer_informations do |t|
      t.integer :driver_id,null: false
      t.string :bank_name,null: false
      t.string :branch_name,null: false
      t.integer :account_type,null: false
      t.integer :account_number,null: false
      t.string :account_name,null: false

      t.timestamps
    end
  end
end
