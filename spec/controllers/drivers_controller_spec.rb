require 'rails_helper'

RSpec.describe DriversController, type: :controller do
	describe "#dashbord" do
		context "認証済みドライバーとして" do
			before do
				@driver = FactoryBot.create(:driver)
			end

			it "正常にレスポンスを返すこと" do
				sign_in @driver
				get :dashboard,params: { id: @driver }
				expect(response).to be_success
			end
			it "200レスポンスを返すこと" do
				sign_in @driver
				get :dashboard,params: {id: @driver}
				expect(response).to have_http_status "200"
			end
		end
		context "ゲストユーザーとして" do
			before do
				@driver = FactoryBot.create(:driver)
				@another = FactoryBot.create(:ad_client)
			end
			it "302レスポンスを返すこと" do
				get :dashboard, params: { id: @driver }
				expect(response).to have_http_status "302"
			end
			it "リダイレクト処理されること" do
				get :dashboard, params: { id: @another }
				expect(response).to redirect_to "/drivers/sign_in"
			end
		end
	end
end
