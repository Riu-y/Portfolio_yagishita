class Ad < ApplicationRecord




	def date_cannot_be_in_the_past
	  if date.present? && date < Date.today
	    errors.add(:date, ": 過去の日付は使用できません")
	  end
	end

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
