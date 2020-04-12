class RelationshipDriversController < ApplicationController
  def create
    current_driver.follow(params[:ad_client_id])
    redirect_back(fallback_location: ad_clients_path)
  end

  def destroy
    current_driver.unfollow(params[:ad_client_id]) #driverからad_clientに変更する
    redirect_back(fallback_location: ad_clients_path)
  end
end
