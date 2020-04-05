class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :company_name
      t.string :telephone_number, null: false
      t.string :email, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
