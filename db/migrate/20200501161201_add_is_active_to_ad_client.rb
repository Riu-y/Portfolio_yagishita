class AddIsActiveToAdClient < ActiveRecord::Migration[5.2]
  def change
    add_column :ad_clients, :is_active, :boolean, null: false, default: true
  end
end
