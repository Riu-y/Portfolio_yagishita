class FavoritesController < ApplicationController
	def create
		ad = Ad.find(params[:ad_id])
		favorite = current_driver.favorites.new(ad_id: ad.id)
		favorite.save
		redirect_back(fallback_location: ads_path)
	end


	def destroy
		ad = Ad.find(params[:ad_id])
		favorite = current_driver.favorites.find_by(ad_id: ad.id)
		favorite.destroy
		redirect_back(fallback_location: ads_path)
	end
end
