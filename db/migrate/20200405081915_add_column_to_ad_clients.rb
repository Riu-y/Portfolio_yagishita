class AddColumnToAdClients < ActiveRecord::Migration[5.2]
  def change
  	add_column :ad_clients, :terms, :boolean, default: false
  end
end
