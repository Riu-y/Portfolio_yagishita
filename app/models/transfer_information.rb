class TransferInformation < ApplicationRecord
	validates :bank_name,, presence: true
	validates :branch_name, presence: true
	validates :account_type, presence: true
	validates :account_number, presence: true
	validates :account_name, presence: true


	belongs_to :driver
end