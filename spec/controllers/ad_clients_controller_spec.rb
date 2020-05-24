require 'rails_helper'

RSpec.describe AdClientsController, type: :controller do
	describe "#dashbord" do
		context "認証済み広告主として" do
			before do
				@ad_client = FactoryBot.create(:ad_client)
			end

			it "正常にレスポンスを返すこと" do
				sign_in @ad_client
				get :dashboard,params: { id: @ad_client }
				expect(response).to be_success
			end
			it "200レスポンスを返すこと" do
				sign_in @ad_client
				get :dashboard,params: {id: @ad_client}
				expect(response).to have_http_status "200"
			end
		end
		context "ゲストユーザーとして" do
			before do
				@ad_client = FactoryBot.create(:ad_client)
				@another = FactoryBot.create(:driver)
			end
			it "302レスポンスを返すこと" do
				get :dashboard, params: { id: @ad_client }
				expect(response).to have_http_status "302"
			end
			it "リダイレクト処理されること" do
				get :dashboard, params: { id: @another }
				expect(response).to redirect_to "/ad_clients/sign_in"
			end
		end
	end
end

	#以下のコードでもテスト可能
	# #正常にアクセスできること
	# 	subject { get :dashbord, params }
	# 	let(:params) { { id: 1 } }
	# 	it { expect(response).to be_success }