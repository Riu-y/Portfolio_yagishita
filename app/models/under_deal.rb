class UnderDeal < ApplicationRecord
	belongs_to :driver
	belongs_to :ad
	has_one :room
end
