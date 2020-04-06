class CarInformation < ApplicationRecord
	validates :manufacturer_name, presence: true
	validates :car_name, presence: true
	validates :certificate_image_id, presence: true

	belongs_to :driver
end

:manufacturer_name, :car_name, :certificate_image_id, 
