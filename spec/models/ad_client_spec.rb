require 'rails_helper'

RSpec.describe AdClient, type: :model do

	it "広告主のファクトリが有効かテスト" do
		expect(FactoryBot.build(:ad_client)).to be_valid
	end

  # 名がなければ無効な状態であること
  it "広告主の名前が未入力の場合、登録ができない" do
  	ad_client = FactoryBot.build(:ad_client, company_name: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:company_name]).to_not include("入力されていません")
  end

  it "広告主の名前のカナが未入力の場合、登録ができない" do
  	ad_client = FactoryBot.build(:ad_client, company_name_kana: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:company_name_kana]).to_not include("入力されていません")
  end

  it "広告主の住所が未入力の場合、登録ができない" do
    ad_client = FactoryBot.build(:ad_client, address: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:address]).to_not include("入力されていません")
  end

  it "広告主の電話番号が未入力の場合、登録ができない" do
  	ad_client = FactoryBot.build(:ad_client, telephone_number: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:telephone_number]).to_not include("入力されていません")
  end

  it "広告主のメールが未入力の場合、登録ができない" do
  	ad_client = FactoryBot.build(:ad_client, email: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:email]).to_not include("入力されていません")
  end
	it "広告主の名前が未入力の場合、登録ができない" do
  	ad_client = FactoryBot.build(:ad_client, terms: false)
  	ad_client.valid?
  	expect(ad_client.errors[:terms]).to_not include("入力されていません")
  end

  it "利用規約に同意していない場合、登録できない" do
	  FactoryBot.create(:ad_client)
		ad_client = FactoryBot.build(:ad_client)
		ad_client.valid?
		expect(ad_client.errors[:email]).to_not include("使用されています")
	end
	it "メールアドレスの重複がないかテスト" do
	  FactoryBot.create(:ad_client, email: "email-check@rspec.com")
	  ad_client = FactoryBot.build(:ad_client, email: "email-check@rspec.com")
	  ad_client.valid?
	  expect(ad_client.errors[:email]).to_not include("使用されています")
	end

	it "広告主の名前がstring型であるかテスト" do
		ad_client = FactoryBot.build(:ad_client, company_name: "山田一郎")
		expect(ad_client.company_name).to eq "山田一郎"
	end

end