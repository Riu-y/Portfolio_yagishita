class AddInstallationImageIdToUnderDeal < ActiveRecord::Migration[5.2]
  def change
  	add_column :under_deals, :installation_image_id, :string
  end
end
