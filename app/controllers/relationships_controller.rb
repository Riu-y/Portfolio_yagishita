class RelationshipsController < ApplicationController
	def create
		current_ad_client.follow(params[:ad_client_id])
		redirect_back(fallback_location: drivers_path)
	end

	def destroy
		current_ad_client.unfollow(params[:ad_client_id])
		redirect_back(fallback_location: drivers_path)
	end
end