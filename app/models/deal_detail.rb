class DealDetail < ApplicationRecord
	belongs_to :under_deal

	enum account_type:{ ordinary: 0, checking: 1 }
	enum transfer_status:{not_transfer: 0, transferred: 1, checked: 2 }
end
