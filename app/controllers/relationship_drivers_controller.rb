class RelationshipDriversController < ApplicationController
  def create
    current_driver.follow(params[:ad_client_id])
    @ad_client = AdClient.find(params[:ad_client_id])
  end

  def destroy
    current_driver.unfollow(params[:ad_client_id]) #driverからad_clientに変更する
    @ad_client = AdClient.find(params[:ad_client_id])
  end
end
