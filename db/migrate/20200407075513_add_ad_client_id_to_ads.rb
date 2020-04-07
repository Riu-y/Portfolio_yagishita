class AddAdClientIdToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :ad_client_id, :integer
  end
end
