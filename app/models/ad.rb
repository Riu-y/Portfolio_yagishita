class Ad < ApplicationRecord
	belongs_to :ad_client

	belongs_to :genre

	has_many :rooms

	has_many :under_deals
	attachment :ad_image
	has_many :favorites, dependent: :destroy

	def favorited_by?(driver)
		favorites.where(driver_id: driver.id).exists?
	end
end
