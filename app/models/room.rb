class Room < ApplicationRecord
	has_many :chats
	belongs_to :ad
	belongs_to :driver
	belongs_to :ad_client
end
