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
	validates :registry_image, presence: true
	validates :email, presence: true

	attachment :profile_image
	attachment :registry_image

	has_many :ads

	has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy # フォロー取得
	has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy # フォロワー取得

	has_many :following_ad_clients, through: :follower, source: :followed #自分がフォローしているドライバー
	has_many :follower_drivers, through: :followed, source: :follower #自分をフォローしているドライバー

	def follow(ad_client_id)
		follower.create(followed_id: ad_client_id)
	end
	def unfollow(ad_client_id)
		follower.find_by(followed_id: ad_client_id).destroy
	end
	def following?(driver)
		following_drivers.include?(driver)
	end
end

