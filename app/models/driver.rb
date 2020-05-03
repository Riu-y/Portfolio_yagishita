class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_acceptance_of :terms, allow_nil: false, message: "※会員登録には利用規約への同意が必要です。", on: :create
  validates :driver_name, presence: true
	validates :driver_name_kana, presence: true,format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
	validates :postal_code, presence: true
	validates :address, presence: true
	validates :telephone_number, presence: true
	validates :email, presence: true
	validates :activity_area, presence: true

	validates :driver_license_image, presence: {
		message: -> (rec, data){
			I18n.t('activemodel.errors.message.not_upload')
		}
	}

	attachment :profile_image
	attachment :driver_license_image

	has_many :transfer_informations
	has_many :car_informations
	has_many :favorites, dependent: :destroy

	has_many :chats
	has_many :rooms

	has_many :under_deals

	has_many :follower, class_name: "RelationshipDriver", foreign_key: "follower_id", dependent: :destroy # フォロー取得
	has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy # フォロワー取得

	has_many :following_ad_client, :through => :follower, :source => :followed #自分がフォローしている広告主
	has_many :follower_ad_client, :through => :followed, :source => :follower #自分をフォローしている広告主

	enum user_status: {not_check: 0, checked_indentification: 1, checked_car_indentification: 2,}
	# not_check: 未確認, checked_indentification: 本人確認済み, checked_car_indentification: 車両情報確認済み


	geocoded_by :activity_area
	after_validation :geocode

	 def follow(ad_client_id)
	 	follower.create(followed_id: ad_client_id)
	 end
	 def unfollow(ad_client_id)
	 	follower.find_by(followed_id: ad_client_id).destroy
	 end
	 def following?(ad_client_id)
	 	follower.find_by(followed_id: ad_client_id)
	 end
end
