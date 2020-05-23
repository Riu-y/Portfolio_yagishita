require 'rails_helper'

RSpec.describe Driver, type: :model do
	it "ドライバーのファクトリが有効かテスト" do
		expect(FactoryBot.build(:driver)).to be_valid
	end
  it "ドライバーの新規登録ができる" do
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

  it "ドライバーの名前が未入力の場合、登録ができない" do
  	driver = FactoryBot.build(:driver, driver_name: nil)
  	driver.valid?
  	expect(driver.errors[:driver_name]).to_not include("入力されていません")
  end

  it "ドライバーの名前のカナが未入力の場合、登録ができない" do
  	driver = FactoryBot.build(:driver, driver_name_kana: nil)
  	driver.valid?
  	expect(driver.errors[:driver_name_kana]).to_not include("入力されていません")
  end

  it "ドライバーの住所が未入力の場合、登録ができない" do
    driver = FactoryBot.build(:driver, address: nil)
  	driver.valid?
  	expect(driver.errors[:address]).to_not include("入力されていません")
  end

  it "ドライバーの電話番号が未入力の場合、登録できない" do
  	driver = FactoryBot.build(:driver, telephone_number: nil)
  	driver.valid?
  	expect(driver.errors[:telephone_number]).to_not include("入力されていません")
  end

  it "ドライバーのメールが未入力の場合、登録できない" do
  	driver = FactoryBot.build(:driver, email: nil)
  	driver.valid?
  	expect(driver.errors[:email]).to_not include("入力されていません")
  end
	it "利用規約に同意していない場合、登録できない" do
  	driver = FactoryBot.build(:driver, terms: false)
  	driver.valid?
  	expect(driver.errors[:terms]).to_not include("入力されていません")
  end

  it "メールアドレスの重複がないかテスト" do
	  FactoryBot.create(:driver, email: "email-check@rspec.com")
	  driver = FactoryBot.build(:driver, email: "email-check@rspec.com")
	  driver.valid?
	  expect(driver.errors[:email]).to_not include("使用されています")
	end

	it "ドライバーの名前がstring型であるかテスト" do
		driver = FactoryBot.build(:driver, driver_name: "山田一郎")
		expect(driver.driver_name).to eq "山田一郎"
	end
end





