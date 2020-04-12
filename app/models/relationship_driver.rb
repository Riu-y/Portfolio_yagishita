class RelationshipDriver < ApplicationRecord
	belongs_to :follower, class_name: "AdClient"
	belongs_to :followed, class_name: "AdClient"

	validates :follower_id,presence: true
	validates :followed_id,presence: true
end
