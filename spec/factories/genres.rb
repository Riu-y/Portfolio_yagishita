FactoryBot.define do
  factory :genre do
    sequence(:id) { |n| "#{n}" }
		genre_name "保険"
		flag_active "true"
  end
end
