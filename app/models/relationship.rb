class Relationship < ApplicationRecord
	belongs_to :follower, class_name: "AdClient"
	belongs_to :followed, class_name: "AdClient"

	belongs_to :follower_ad_clients, class_name: "Driver"
	belongs_to :followed_ad_clients, class_name: "Driver"

	validates :follower_id,presence: true
	validates :followed_id,presence: true
end
