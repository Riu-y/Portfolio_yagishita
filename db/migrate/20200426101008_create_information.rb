class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :viewer_type,default: 0, null:false

      t.timestamps
    end
  end
end
