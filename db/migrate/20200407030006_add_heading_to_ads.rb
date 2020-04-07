class AddHeadingToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :heading, :string
  end
end
