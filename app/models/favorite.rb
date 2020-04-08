class Favorite < ApplicationRecord
	belongs_to :driver
	belongs_to :ad
end
