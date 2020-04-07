class RenameAdImageColumnToAds < ActiveRecord::Migration[5.2]
  def change
  	rename_column :ads, :ad_image, :ad_image_id
  end
end
