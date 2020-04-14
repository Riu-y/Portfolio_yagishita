class Chat < ApplicationRecord
	belongs_to :room
	belongs_to :ad_client
	belongs_to :driver

end
