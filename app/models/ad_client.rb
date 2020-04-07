class AdClient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_acceptance_of :terms, allow_nil: false, message: "※会員登録には利用規約への同意が必要です。", on: :create
	validates :company_name, presence: true
	validates :company_name_kana, presence: true,format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
	validates :ceo_name, presence: true
	validates :ceo_name_kana, presence: true
	validates :address, presence: true
	validates :ceo_name_kana, presence: true
	validates :telephone_number, presence: true
	validates :profile_image, presence: true
	validates :registry_image_id, presence: true
	validates :email, presence: true

	attachment :profile_image

	has_many :ads


end
