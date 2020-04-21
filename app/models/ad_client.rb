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
	validates :email, presence: true
	validates :registry_image, presence: {
		message: -> (rec, data){
			I18n.t('activemodel.errors.message.not_upload')
		}
	}

	attachment :profile_image
	attachment :registry_image

	has_many :ads

	has_many :rooms

	has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy # フォロー取得
	has_many :followed, class_name: "RelationshipDriver", foreign_key: "followed_id", dependent: :destroy # フォロワー取得

	has_many :following_driver, :through => :follower, :source => :followed #自分がフォローしているドライバー
	has_many :follower_driver, :through => :followed, :source => :follower #自分をフォローしているドライバー

	def follow(driver_id)
		follower.create(followed_id: driver_id)
	end

	def unfollow(driver_id)
		follower.find_by(followed_id: driver_id).destroy
	end
	def following?(driver_id)
		follower.find_by(followed_id: driver_id)
	end
end

