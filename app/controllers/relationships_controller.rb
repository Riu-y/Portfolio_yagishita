class RelationshipsController < ApplicationController
	def create
		current_ad_client.follow(params[:driver_id])
		@driver = Driver.find(params[:id])
		# redirect_back(fallback_location: drivers_path)
	end

	def destroy
		current_ad_client.unfollow(params[:driver_id])
		@driver = Driver.find(params[:id])
		# redirect_back(fallback_location: drivers_path)
	end
end