class AddColumnToAdmins < ActiveRecord::Migration[5.2]
  def change
  	add_column :admins, :admin_name, :string
  	add_column :admins, :admin_name_kana, :string
  end
end
