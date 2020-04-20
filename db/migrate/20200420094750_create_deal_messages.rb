class CreateDealMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :deal_messages do |t|
      t.text :comment,null: false
      t.integer :user_type,null: false
      t.integer :under_deal_id,null: false

      t.timestamps
    end
  end
end
