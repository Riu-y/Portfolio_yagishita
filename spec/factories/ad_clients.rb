FactoryBot.define do
  factory :ad_client do
		company_name "株式会社 山田 一郎"
		company_name_kana "カブシキガイシャ ヤマダ"
		postal_code "120000"
		address "千葉県松戸市"
		ceo_name "山田 三郎"
		ceo_name_kana "ヤマダ サブロウ"
		telephone_number "012000111"
		sequence(:email) { |n| "tester_cleint#{n}@rspec.com" }
		password "yamada1"
		registry_image_id "image"
		terms "true"

		trait :with_ads do
			after(:create) { create_list(:ad, 5) }
		end
  end
end
