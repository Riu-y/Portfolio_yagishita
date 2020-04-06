class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_acceptance_of :terms, allow_nil: false, message: "※会員登録には利用規約への同意が必要です。", on: :create
  validates :driver_name, presence: true
	validates :driver_name_kana, presence: true
	validates :postal_code, presence: true
	validates :address, presence: true
	validates :telephone_number, presence: true
	validates :email, presence: true

	attachment :profile_image

	has_many :transfer_informations

end
