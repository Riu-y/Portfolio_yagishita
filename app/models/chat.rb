class Chat < ApplicationRecord
	belongs_to :room

	enum user_type: {driver: 0, ad_client: 1, admin: 3}
end
