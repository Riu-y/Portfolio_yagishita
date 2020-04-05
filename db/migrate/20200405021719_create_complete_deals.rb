class CreateCompleteDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :complete_deals do |t|
      t.integer :deal_details_id,null: false
      t.integer :ad_id,null: false
      t.integer :payment_amount,null: false

      t.timestamps
    end
  end
end
