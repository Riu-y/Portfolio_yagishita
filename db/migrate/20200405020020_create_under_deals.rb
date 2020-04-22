class CreateUnderDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :under_deals do |t|
      t.integer :ad_id,null: false
      t.integer :driver_id,null: false
      t.integer :work_status,null: false , default: 0, limit: 1
      t.string :installation_image_id

      t.timestamps
    end
  end
end
