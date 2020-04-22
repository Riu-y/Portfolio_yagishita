class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.integer :genre_id, null: false
      t.string :title, null: false
      t.string :heading,null: false
      t.text :content, null: false
      t.string :ad_image_id
      t.integer :ad_fee, null: false
      t.boolean :is_active, null: false, default: true
      t.string :start_date, null: false
      t.string :end_date, null: false
      t.integer :ad_client_id,null: false
      t.string :heading,null: false
      t.timestamps
    end
  end
end