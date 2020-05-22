require 'rails_helper'

RSpec.describe AdClient, type: :model do
	#有効なad_clientファクトリを持つ
	it "has a valid factory" do
		expect(FactoryBot.build(:ad_client)).to be_valid
	end

  # 名がなければ無効な状態であること
  it "is invalid without a company_name" do
  	ad_client = FactoryBot.build(:ad_client, company_name: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:company_name]).to_not include("入力されていません")
  end

  it "is invalid without a company_name_kana" do
  	ad_client = FactoryBot.build(:ad_client, company_name_kana: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:company_name_kana]).to_not include("入力されていません")
  end

  it "is invalid without an adress" do
    ad_client = FactoryBot.build(:ad_client, address: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:address]).to_not include("入力されていません")
  end

  it "is invalid with a telephone_number" do
  	ad_client = FactoryBot.build(:ad_client, telephone_number: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:telephone_number]).to_not include("入力されていません")
  end

  it "is invalid with a email" do
  	ad_client = FactoryBot.build(:ad_client, email: nil)
  	ad_client.valid?
  	expect(ad_client.errors[:email]).to_not include("入力されていません")
  end
	it "is invalid with a terms" do
  	ad_client = FactoryBot.build(:ad_client, terms: false)
  	ad_client.valid?
  	expect(ad_client.errors[:terms]).to_not include("入力されていません")
  end

  it "is invalid with a duplicate email" do
	  FactoryBot.create(:ad_client)
		ad_client = FactoryBot.build(:ad_client)
		ad_client.valid?
		expect(ad_client.errors[:email]).to_not include("使用されています")
	end
end