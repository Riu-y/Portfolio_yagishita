FactoryBot.define do
  factory :driver do
		driver_name "山田 一郎"
		driver_name_kana "ヤマダ イチロウ"
		postal_code "120000"
		address "東京都立川市"
		activity_area "東京都立川市"
		telephone_number "07011112222"
		sequence(:email) { |n| "tester#{n}@erspec.com" }
		password "yamada1"
		driver_license_image_id "image"
		terms "true"
  end
end
