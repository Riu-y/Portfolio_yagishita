class DealMessage < ApplicationRecord
		belongs_to :under_deal
		enum user_type: {driver: 0, ad_client: 1, admin: 3}
end
