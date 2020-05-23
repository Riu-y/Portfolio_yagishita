FactoryBot.define do
  factory :ad do
  	sequence(:genre_id) { |n| "#{n}" }
		title "大手保険会社の広告ポスター"
		heading "リブランディングに伴い弊社の広告ポスターを宣伝していただきます。"
		content "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。"
		ad_image_id "image"
		ad_fee "3000"
		is_active "true"
		sequence(:start_date) { |n| "2020-6-#{n}" }
		sequence(:end_date) { |n| "2020-6-#{n}" }

	 	association :ad_client
	  association :genre
  end
end


