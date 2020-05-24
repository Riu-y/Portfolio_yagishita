require 'rails_helper'

RSpec.describe AdsController, type: :controller do
	describe "#index" do
		it "正常にレスポンスを返すこと" do
			get :index
			expect(response).to be_success
		end

		it "200レスポンスを返すこと" do
			get :index
			expect(response).to have_http_status "200"
		end
	end
	describe "#show" do
		before do
			@ad = FactoryBot.create(:ad)
		end
		it "正常にレスポンスを返すこと" do
			get :show, params: { id: @ad}
			expect(response).to be_success
		end

		it "200レスポンスを返すこと" do
			get :show, params: {id: @ad}
			expect(response).to have_http_status "200"
		end
	end
end
