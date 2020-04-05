class RenameCompanyNameKanaColumnToAdClients < ActiveRecord::Migration[5.2]
  def change
  	rename_column :ad_clients, :company_nam_kana, :company_name_kana
  end
end
