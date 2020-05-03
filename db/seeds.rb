# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
				id: 1,
				email: 'admin1@dmm.com',
				admin_name: "マスター", admin_name_kana:"マスター",
				password: "admin1",
				password_confirmation: "admin1",
				)

AdClient.create!(
				id: 1,
				email: 'client1@dmm.com',
				company_name: "安井総合保険株式会社", company_name_kana:"ヤスイソウゴウホケンカブシキガイシャ",
				ceo_name: "安井康平", ceo_name_kana:"ヤスイコウヘイ",
				postal_code: "1203749",
				address: "東京都新宿区",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client1.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client1",
				password_confirmation: "client1",
				)

AdClient.create!(
				id: 2,
				email: 'client2@dmm.com',
				company_name: "一般社団法人 遊とうきょう", company_name_kana:"イッパンシャダンホウジン ユウトウキョウ",
				ceo_name: "中谷淳", ceo_name_kana:"ナカタニアツシ",
				postal_code: "",
				address: "東京都目黒区",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client2.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client2",
				password_confirmation: "client2",
				)

AdClient.create!(
				id: 3,
				email: 'client3@dmm.com',
				company_name: "株式会社 グッドサウンド", company_name_kana:"カブシキガイシャグッドサウンド",
				ceo_name: "浅谷裕樹	", ceo_name_kana:"アサタニユウキ",
				postal_code: "",
				address: "東京都渋谷区",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client3.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client3",
				password_confirmation: "client3",
				)

AdClient.create!(
				id: 4,
				email: 'client4@dmm.com',
				company_name: "JT株式会社", company_name_kana:"ジェイティーカブシキガイシャ",
				ceo_name: "大河内泰久", ceo_name_kana:"オオコウチヤスヒサ",
				postal_code: "1202239",
				address: "東京都墨田区",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client4.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client4",
				password_confirmation: "client4",
				)

AdClient.create!(
				id: 5,
				email: 'client5@dmm.com',
				company_name: "EMEOS株式会社", company_name_kana:"エメオスカブシキガイシャ",
				ceo_name: "山田浩三", ceo_name_kana:"ヤマダコウゾウ",
				postal_code: "12038479",
				address: "東京都中央区",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client5.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client5",
				password_confirmation: "client5",
				)

AdClient.create!(
				id: 6,
				email: 'client6@dmm.com',
				company_name: "DMM エアーラインズ株式会社", company_name_kana:"ディーエムエムエアーラインズカブシキガイシャ",
				ceo_name: "亀梨清隆", ceo_name_kana:"カメナシキヨタカ",
				postal_code: "1209480",
				address: "東京都新宿区",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client6.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client6",
				password_confirmation: "client6",
				)

AdClient.create!(
				id: 7,
				email: 'client7@dmm.com',
				company_name: "OPEN SPACE", company_name_kana:"オープンスペース",
				ceo_name: "家長充", ceo_name_kana:"イエナガミツル",
				postal_code: "1814239",
				address: "東京都渋谷区",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client7.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client7",
				password_confirmation: "client7",
				)

AdClient.create!(
				id: 8,
				email: 'client8@dmm.com',
				company_name: "ZUMER MART株式会社", company_name_kana:"ズーマーマートカブシキガイシャ",
				ceo_name: "山井豊", ceo_name_kana:"ヤマイユタカ",
				postal_code: "3847293",
				address: "東京都江東区",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client8.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client8",
				password_confirmation: "client8",
				)

AdClient.create!(
				id: 9,
				email: 'client9@dmm.com',
				company_name: "VARTCANO", company_name_kana:"バートカート",
				ceo_name: "中川正道", ceo_name_kana:"ナカガワマサミチ",
				postal_code: "1239789",
				address: "神奈川県横浜市",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client9.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client9",
				password_confirmation: "client9",
				)

AdClient.create!(
				id: 10,
				email: 'client10@dmm.com',
				company_name: "長野製菓株式会社", company_name_kana:"ナガノセイカカブシキガイシャ",
				ceo_name: "山下浩一郎", ceo_name_kana:"ヤマシタコウイチロウ",
				postal_code: "34691874",
				address: "長野県長野市",
				telephone_number: "01201112222",
				profile_image: File.open("./app/assets/images/ad_clients/client10.png"),
				registry_image: File.open("./app/assets/images/license_image.png") ,
				terms: true,
				password: "client10",
				password_confirmation: "client10",
				)



Driver.create!(
				id: 1,
				email: 'driver1@dmm.com',
				driver_name: "柳下龍介", driver_name_kana:"ヤギシタリュウスケ",
				postal_code: "1111111",
				address: "神奈川県小田原市",
				telephone_number: "0900000111",
				profile_image: File.open("./app/assets/images/drivers/driver1.jpg"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				terms: true,
				activity_area: "神奈川県小田原市"
				password: "driver1",
				password_confirmation: "driver1",
				)

Driver.create!(
				id: 2,
				email: 'driver2@dmm.com',
				driver_name: "田中アンソニー", driver_name_kana:"タナカアンソニー",
				postal_code: "2228797",
				address: "東京都港区",
				telephone_number: "09022221111",
				profile_image: File.open("./app/assets/images/drivers/driver2.png"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				activity_area: "東京都港区"
				terms: true,
				password: "driver2",
				password_confirmation: "driver2",
				)

Driver.create!(
				id: 3,
				email: 'driver3@dmm.com',
				driver_name: "タンビルシャヘド", driver_name_kana:"タンビルシャヘド",
				postal_code: "1112736",
				address: "東京都中野区",
				telephone_number: "09022223333",
				profile_image: File.open("./app/assets/images/drivers/driver3.png"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				activity_area: "東京都中野区"
				terms: true,
				password: "driver3",
				password_confirmation: "driver3",
				)

Driver.create!(
				id: 4,
				email: 'driver4@dmm.com',
				driver_name: "近藤隆", driver_name_kana:"コンドウタカシ",
				postal_code: "14759450",
				address: "東京都八王子市",
				telephone_number: "0900000111",
				profile_image: File.open("./app/assets/images/drivers/driver4.png"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				activity_area: "東京都八王子市"
				terms: true,
				password: "driver4",
				password_confirmation: "driver4",
				)

Driver.create!(
				id: 5,
				email: 'driver5@dmm.com',
				driver_name: "安藤 真琴", driver_name_kana:"アンドウマコト",
				postal_code: "1111111",
				address: "神奈川県川崎市",
				telephone_number: "0900000111",
				profile_image: File.open("./app/assets/images/drivers/driver5.png"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				activity_area: "神奈川県川崎市"
				terms: true,
				password: "driver5",
				password_confirmation: "driver5",
				)

Driver.create!(
				id: 6,
				email: 'driver6@dmm.com',
				driver_name: "滝沢芽美", driver_name_kana:"タキザワメイ",
				postal_code: "1111111",
				address: "神奈川県横浜市中区",
				telephone_number: "0900000111",
				profile_image: File.open("./app/assets/images/drivers/driver6.png"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				activity_area: "神奈川県横浜市中区"
				terms: true,
				password: "driver6",
				password_confirmation: "driver6",
				)

Driver.create!(
				id: 7,
				email: 'driver7@dmm.com',
				driver_name: "松永隆二", driver_name_kana:"マツナガリュウジ",
				postal_code: "1145351",
				address: "東京都品川区",
				telephone_number: "09044445555",
				profile_image: File.open("./app/assets/images/drivers/driver7.png"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				activity_area: "東京都品川区"
				terms: true,
				password: "driver7",
				password_confirmation: "driver7",
				)

Driver.create!(
				id: 8,
				email: 'driver8@dmm.com',
				driver_name: "武藤香織", driver_name_kana:"ムトウカオリ",
				postal_code: "1154793",
				address: "東京都世田谷区",
				telephone_number: "09055556666",
				profile_image: File.open("./app/assets/images/drivers/driver8.png"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				activity_area: "東京都世田谷区"
				terms: true,
				password: "driver8",
				password_confirmation: "driver8",
				)

Driver.create!(
				id: 9,
				email: 'driver9@dmm.com',
				driver_name: "板橋幸夫", driver_name_kana:"イタバシユキオ",
				postal_code: "1347981",
				address: "神奈川県鎌倉市",
				telephone_number: "09066667777",
				profile_image: File.open("./app/assets/images/drivers/driver9.png"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				activity_area: "神奈川県鎌倉市"
				terms: true,
				password: "driver9",
				password_confirmation: "driver9",
				)

Driver.create!(
				id: 10,
				email: 'driver10@dmm.com',
				driver_name: "ピーターラートリー", driver_name_kana:"ピーターラートリー",
				postal_code: "11148529",
				address: "東京都渋谷区",
				telephone_number: "09033334444",
				profile_image: File.open("./app/assets/images/drivers/driver10.png"),
				driver_license_image: File.open("./app/assets/images/license_image.png") ,
				is_active: true,
				activity_area: "東京都渋谷区"
				terms: true,
				password: "driver10",
				password_confirmation: "driver10",
				)

Genre.create!(
				id:1,
				genre_name: "自動車  バイク",
				flag_active: true,
				)

Genre.create!(
				id:2,
				genre_name: "芸能  エンタメ",
				flag_active: true,
				)

Genre.create!(
				id:3,
				genre_name: "音楽  イベント",
				flag_active: true,
				)

Genre.create!(
				id:4,
				genre_name: "旅行  観光",
				flag_active: true,
				)

Genre.create!(
				id:5,
				genre_name: "食品  お菓子",
				flag_active: true,
				)

Genre.create!(
				id:6,
				genre_name: "製造  工業" ,
				flag_active: true,
				)

Genre.create!(
				id:7,
				genre_name: "保険" ,
				flag_active: true,
				)

Genre.create!(
				id:8,
				genre_name: "教育  福祉" ,
				flag_active: true,
				)

Genre.create!(
				id:9,
				genre_name: "飲食  宿泊" ,
				flag_active: true,
				)

Genre.create!(
				id:10,
				genre_name: "産業  興行" ,
				flag_active: true,
				)


Ad.create!(
				id: 1,
				ad_client_id:1,
				genre_id: 7,
				title: "大手保険会社の広告ポスター",
				heading: "リブランディングに伴い弊社の広告ポスターを宣伝していただきます。",
				content: "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。",
				ad_image: File.open("./app/assets/images/ads/ads1.png"),
				ad_fee:"3000",
				is_active: true,
				start_date:"2020-06-1",
			  end_date:"2020-06-30",
				)

Ad.create!(
				id: 2,
				ad_client_id:2,
				genre_id: 4,
				title: "遊とうきょうの広告ドライバー",
				heading: "人気とうきょう観光メディアのシーズン広告♩",
				content: "契約更新あり！リブランディングに伴い弊社の広告ポスターを宣伝していただきます。。多くのドライバー様からのご応募をお待ちしております。",
				ad_image: File.open("./app/assets/images/ads/ads2.png"),
				ad_fee:"5500",
				is_active: true,
				start_date:"2020-06-1",
			  end_date:"2020-07-30",
				)

Ad.create!(
				id: 3,
				ad_client_id:3,
				genre_id: 3,
				title: "この夏開催される注目のイベント広告！",
				heading: "おしゃれなデザインポスターで見た目を気にするあなたでも大丈夫♩",
				content: "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。",
				ad_image: File.open("./app/assets/images/ads/ads3.png"),
				ad_fee:"3800",
				is_active: true,
				start_date:"2020-05-15",
			  end_date:"2020-06-30",
				)

Ad.create!(
				id:4,
				ad_client_id:4,
				genre_id: 8,
				title: "大手企業ブランドポスター",
				heading: "長期契約で高収入案件！",
				content: "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。",
				ad_image: File.open("./app/assets/images/ads/ads4.png"),
				ad_fee:"9800",
				is_active: true,
				start_date:"2020-07-01",
			  end_date:"2020-08-30",
				)

Ad.create!(
				id: 5,
				ad_client_id:5,
				genre_id: 7,
				title: "EMEOS期間キャンペーン",
				heading: "新規会員キャンペーンの宣伝していただきます。別途特典有り♩",
				content: "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。",
				heading: "新規会員キャンペーンの宣伝していただきます。<br>別途特典有り♩",
				ad_image: File.open("./app/assets/images/ads/ads5.png"),
				ad_fee:"4000",
				is_active: true,
				start_date:"2020-06-1",
			  end_date:"2020-06-30",
				)

Ad.create!(
				id: 6,
				ad_client_id:6,
				genre_id: 4,
				title: "DMM AirLineからキャンペーン広告",
				heading: "期間限定のキャンペーン広告 短期契約者向け",
				content: "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。",
				ad_image: File.open("./app/assets/images/ads/ads6.png"),
				ad_fee:"3000",
				is_active: true,
				start_date:"2020-05-20",
			  end_date:"2020-05-31",
				)

Ad.create!(
				id: 7,
				ad_client_id:7,
				genre_id: 7,
				title: "注目のシェアリングスペースOPEN SPACE",
				heading: "トークイベントの広告宣伝。おしゃれなイラストで車もコーディネートされるかも？",
				content: "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。",
				ad_image: File.open("./app/assets/images/ads/ads7.png"),
				ad_fee:"3000",
				is_active: true,
				start_date:"2020-06-1",
			  end_date:"2020-06-30",
				)

Ad.create!(
				id:  8,
				ad_client_id: 8,
				genre_id: 5,
				title: "ZUMER MART 期間限定セール",
				heading: "首都圏を中心に行われる大規模セールの広告宣伝",
				content: "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。",
				ad_image: File.open("./app/assets/images/ads/ads8.png"),
				ad_fee:"3800",
				is_active: true,
				start_date:"2020-05-20",
			  end_date:"2020-06-15",
				)

Ad.create!(
				id: 9,
				ad_client_id:9,
				genre_id: 1,
				title: "輸入車専門店  自動車販売キャンペーン",
				heading: "広告ポスター支給！長期間契約希望です。",
				content: "長長期契！約契約更新あり！年末に行うキャンペーンを、長期的に行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。",
				ad_image: File.open("./app/assets/images/ads/ads9.png"),
				ad_fee:"12000",
				is_active: true,
				start_date:"2020-07-01",
			  end_date:"2020-12-31",
				)

Ad.create!(
				id: 10,
				ad_client_id:10,
				genre_id: 7,
				title: "LINE始めました♩綺麗なカラーの広告です",
				heading: "あなたの広告からQRコードでアクセスがあった場合は別途報酬有り♩",
				content: "契約更新あり！継続的に弊社の広告業務を行っていただけるドライバーさんを探しています。広告ポスターは弊社から支給させていただきます。多くのドライバー様からのご応募をお待ちしております。",
				ad_image: File.open("./app/assets/images/ads/ads10.png"),
				ad_fee:"3000",
				is_active: true,
				start_date:"2020-06-1",
			  end_date:"2020-06-30",
				)

10.times do |n|
	Ad.create!(
				ad_client_id:1,
				genre_id: 7,
				title: "この広告は準備中です#{n}",
				heading: "この広告は準備中です",
				content: "この広告は準備中です",
				ad_image: File.open("./app/assets/images/ads/ads11.png"),
				ad_fee:"3000",
				is_active: true,
				start_date:"2020-06-1",
			  end_date:"2020-06-30",
				)
end

