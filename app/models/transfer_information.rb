class TransferInformation < ApplicationRecord
	validates :bank_name, presence: true
	validates :branch_name, presence: true
	validates :account_type, presence: true
	validates :account_number, presence: true, length: { in: 5..9}, numericality: true
	validates :account_name, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}


	belongs_to :driver

	enum account_type:{ ordinary: 0, checking: 1 }

	def full_info
		bank_name + "銀行 " + branch_name + "支店 " + account_type_i18n + account_number.to_s + account_name
	end
end