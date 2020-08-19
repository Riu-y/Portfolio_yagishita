class RelationshipDriversController < ApplicationController
	#フォロー機能 広告主がドライバーをフォロー
  def create
    current_driver.follow(params[:ad_client_id])
    @ad_client = AdClient.find(params[:ad_client_id])
  end

  def destroy
    current_driver.unfollow(params[:ad_client_id])
    @ad_client = AdClient.find(params[:ad_client_id])
  end
end
