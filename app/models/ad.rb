class Ad < ApplicationRecord
	belongs_to :ad_client

	has_many :genre

	attachment :ad_image
	has_many :favorites, dependent: :destroy
	def favorited_by?(driver)
		favorites.where(driver_id: driver.id).exists?
	end
end
