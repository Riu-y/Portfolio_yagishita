class AddColumnToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :terms, :boolean, default: false
  end
end
