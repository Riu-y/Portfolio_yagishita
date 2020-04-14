class UnderDealsController < ApplicationController
  def index
  end

  def show
  	@under_deal = UnderDeal.find(params[:id])
  	@ad = @under_deal.ad
  end

  def create
  	@under_deal = UnderDeal.new(under_deal_params)
  	@ad_client = 
  	if @under_deal.save
  		redirect_to under_deal_path(@under_deal.id)
  	else
  		redirect_back(fallback_locatioln: ads_path)
  	end

  end


  def edit
  end

  private
  def under_deal_params
	params.require(:under_deal).permit(:ad_id, :driver_id,)
	end
end