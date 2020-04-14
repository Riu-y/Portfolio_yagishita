class RemoveAdClientIdFromUnderDeal < ActiveRecord::Migration[5.2]
  def change
  	remove_column :under_deals, :ad_client_id, :integer
  end
end
