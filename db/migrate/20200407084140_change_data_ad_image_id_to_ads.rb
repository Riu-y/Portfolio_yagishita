class ChangeDataAdImageIdToAds < ActiveRecord::Migration[5.2]
  def change
  	change_column :ads, :ad_image_id, :string
  end
end
