class ChangeDataAdPriodToAds < ActiveRecord::Migration[5.2]
  def change
  	change_column :ads, :ad_priod, :string
  end
end
