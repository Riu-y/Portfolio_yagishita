class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :driver_id
      t.integer :ad_id

      t.timestamps
    end
  end
end
