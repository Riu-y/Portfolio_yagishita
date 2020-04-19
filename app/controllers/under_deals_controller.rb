class UnderDealsController < ApplicationController
  def index
  end

  def show
  	@under_deal = UnderDeal.includes(:ad,:driver).find(params[:id])
  	@ad = @under_deal.ad
  end

  def create
  	@under_deal = UnderDeal.new(under_deal_params)
  	if @under_deal.save
  		redirect_to under_deal_path(@under_deal.id)
  	else
  		redirect_back(fallback_locatioln: ads_path)
  	end
  end

  def update
    @under_deal = UnderDeal.find(params[:id])
    if params[:accept]
      @under_deal.work_status = 'waiting_kit'
      @under_deal.save
      redirect_back(fallback_location: under_deal_path(@under_deal))
    elsif params[:refuse]
      @under_deal.work_status = 'refuse'
      @under_deal.save
      redirect_back(fallback_location: under_deal_path(@under_deal))
    elsif params[:sent_kit]
      @under_deal.work_status = 'sent_kit'
      @under_deal.save
      binding.pry
      redirect_back(fallback_location: under_deal_path(@under_deal))
    end
  end

  def edit
  end

  private
  def under_deal_params
	params.require(:under_deal).permit(:ad_id, :driver_id, :work_status)
	end
end
