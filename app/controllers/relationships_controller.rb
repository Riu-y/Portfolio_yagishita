class RelationshipsController < ApplicationController
		#ドライバー→広告主をフォロー
	def create
		current_ad_client.follow(params[:driver_id])
		@driver = Driver.find(params[:driver_id])
	end

	def destroy
		current_ad_client.unfollow(params[:driver_id])
		@driver = Driver.find(params[:driver_id])
	end
end