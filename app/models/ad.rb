class Ad < ApplicationRecord
	validates :genre_id, presence: true
	validates :title, presence: true
	validates :heading, presence: true
	validates :content, presence: true
	validates :ad_image, presence: true
	validates :ad_fee, presence: true
	validates :start_date, presence: true
	validates :end_date, presence: true


	def date_cannot_be_in_the_past
	  if date.present? && date < Date.today
	    errors.add(:date, ": 過去の日付は使用できません")
	  end
	end

	belongs_to :ad_client
	belongs_to :genre

	has_many :rooms
	has_many :under_deals
	has_many :favorites, dependent: :destroy

	attachment :ad_image

	def favorited_by?(driver)
		favorites.where(driver_id: driver.id).exists?
	end
end
