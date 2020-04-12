class RelationshipDriversController < ApplicationController
	def create
    current_driver.follow(params[:driver_id])
    redirect_back(fallback_location: drivers_path(current_driver))
  end

  def destroy
    current_ad_driver.unfollow(params[:driver_id])
    redirect_back(fallback_location: drivers_path(current_driver))
  end
end
