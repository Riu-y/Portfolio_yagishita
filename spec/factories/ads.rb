FactoryBot.define do
  factory :ad do
		ad_client_id1
		genre_id "7"
		title "大手保険会社の広告ポスター"
		heading "リブランディングに伴い弊社の広告ポスターを宣伝していただきます。"
		content "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。"
		ad_image "image"
		ad_fee "3000"
		is_active "true"
		start_date "2020-06-1"
	  end_date "2020-06-30"
	  association :ad_client
	  association :genre
  end
end


