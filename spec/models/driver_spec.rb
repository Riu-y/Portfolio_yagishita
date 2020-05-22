require 'rails_helper'

RSpec.describe Driver, type: :model do
	#有効なファクトリを持つ
	it "has a valid factory" do
		expect(FactoryBot.build(:driver)).to be_valid
	end

  # 姓、名、メール、パスワードがあれば有効な状態であること
  it "is valid with a driver_name,driver_name_kana,address,telephone_number,email,and wassword" do
	  driver = Driver.new(
	  	driver_name: "山田 一郎",
	  	driver_name_kana: "ヤマダ イチロウ",
	  	postal_code: "120000",
	  	address: "東京都立川市",
	  	activity_area: "東京都立川市",
	  	telephone_number: "07011112222",
	  	email: "yamada@rspec.com",
	  	password: "yamada1",
	  	driver_license_image_id: "image",
	  	terms: "true",
	  	)
	  expect(driver).to be_valid
	end

  # 名がなければ無効な状態であること
  it "is invalid without a driver_name" do
  	driver = FactoryBot.build(:driver, driver_name: nil)
  	driver.valid?
  	expect(driver.errors[:driver_name]).to_not include("入力されていません")
  end

  it "is invalid without a driver_name_kana" do
  	driver = FactoryBot.build(:driver, driver_name_kana: nil)
  	driver.valid?
  	expect(driver.errors[:driver_name_kana]).to_not include("入力されていません")
  end

  it "is invalid without an adress" do
    driver = FactoryBot.build(:driver, address: nil)
  	driver.valid?
  	expect(driver.errors[:address]).to_not include("入力されていません")
  end

  it "is invalid with a telephone_number" do
  	driver = FactoryBot.build(:driver, telephone_number: nil)
  	driver.valid?
  	expect(driver.errors[:telephone_number]).to_not include("入力されていません")
  end

  it "is invalid with a email" do
  	driver = FactoryBot.build(:driver, email: nil)
  	driver.valid?
  	expect(driver.errors[:email]).to_not include("入力されていません")
  end
	it "is invalid with a terms" do
  	driver = FactoryBot.build(:driver, terms: false)
  	driver.valid?
  	expect(driver.errors[:terms]).to_not include("入力されていません")
  end

  it "is invalid with a duplicate email" do
	  FactoryBot.create(:driver, email: "email-check@rspec.com")
	  driver = FactoryBot.build(:driver, email: "email-check@rspec.com")
	  driver.valid?
	  expect(driver.errors[:email]).to_not include("使用されています")
	end

	it "return a user's full name as a string" do
		driver = FactoryBot.build(:driver, driver_name: "山田一郎")
		expect(driver.driver_name).to eq "山田一郎"
	end
end





