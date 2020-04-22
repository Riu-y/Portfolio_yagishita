class DealDetail < ApplicationRecord
	belongs_to :under_deal

	enum account_type:{ ordinary: 0, checking: 1 }
end
