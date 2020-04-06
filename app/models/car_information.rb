class CarInformation < ApplicationRecord
	validates :manufacturer_name, presence: true
	validates :car_name, presence: true
	validates :certificate_image, presence: true
	validates :flame_number, presence: true
	validates :license_plate, presence: true

	belongs_to :driver

	attachment :certificate_image
end
