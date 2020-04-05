class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.integer :genre_id, null: false
      t.string :title, null: false
      t.text :content, null: false
      t.integer :ad_image
      t.integer :ad_fee, null: false
      t.boolean :is_active, null: false, default: true
      t.integer :ad_priod, null: false

      t.timestamps
    end
  end
end
