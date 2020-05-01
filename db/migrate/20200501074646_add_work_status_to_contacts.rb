class AddWorkStatusToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :work_status, :integer, default: 0, null:false
  end
end
