require 'rails_helper'

RSpec.describe Ad, type: :model do
	it "広告の作成とアソシエーションのテスト" do
		ad = FactoryBot.create(:ad)
		puts "この広告はこのユーザーによって作成された #{ad.ad_client.inspect}"
	end


	it "広告主が複数の広告を掲載できるかテスト" do
		ad_client = FactoryBot.create(:ad_client, :with_ads)
		expect(ad_client.ads.length).to eq 5
	end
end