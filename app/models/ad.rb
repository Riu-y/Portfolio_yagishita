class Ad < ApplicationRecord
	belongs_to :ad_client

	has_many :genre

	attachment :ad_image
end
