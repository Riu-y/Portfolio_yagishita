class RelationshipAdClientsController < ApplicationController
	def create
    current_ad_client.follow(params[:ad_client_id])
    redirect_back(fallback_location: ad_client_path(current_ad_client))
  end

  def destroy
    current_ad_client.unfollow(params[:ad_client_id])
    redirect_back(fallback_location: ad_client_path(current_ad_client))
  end
end
