class RelationshipsController < ApplicationController
	# これは広告主→ドライバーをフォローするもの
	def create
		current_ad_client.follow(params[:driver_id])
		redirect_back(fallback_location: drivers_path)
	end

	def destroy
		current_ad_client.unfollow(params[:driver_id])
		redirect_back(fallback_location: drivers_path)
	end
end