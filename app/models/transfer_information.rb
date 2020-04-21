class TransferInformation < ApplicationRecord
	validates :bank_name, presence: true
	validates :branch_name, presence: true
	validates :account_type, presence: true
	validates :account_number, presence: true
	validates :account_name, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}


	belongs_to :driver

	enum account_type:{ ordinary: 0, checking: 1 }

end