require 'rails_helper'

RSpec.describe HomesController, type: :controller do

	describe "正常にレスポンスを返すこと" do
		it "responds successfully" do
			get :index
			expect(response).to be_success
		end
	end
end
