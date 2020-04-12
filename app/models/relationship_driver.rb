class RelationshipDriver < ApplicationRecord
	belongs_to :follower, class_name: "Driver"
	belongs_to :followed, class_name: "Driver"

	validates :follower_id,presence: true
	validates :followed_id,presence: true
end
