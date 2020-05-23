class DriversController < ApplicationController
  before_action :authenticate_driver!, only:[:dashboard]

  # ドライバー用のダッシュボード画面
  def dashboard
    @driver = Driver.find(params[:id])
    @under_deals = UnderDeal.includes(:ad,:deal_messages).references(:ad,:deal_messages).where(driver_id: @driver.id)
    @under_deal = @under_deals.includes(:ad,:deal_messages).references(:ad,:deal_messages).where.not(work_status: 'finished').first
    @finish_deals = @under_deals.includes(:ad,:deal_messages).includes(:ad => :ad_client).references(:ad,:deal_messages,:ad_client).where(work_status: 'finished')
     if @under_deal.present?
      @ad = @under_deal.ad
      @messages = @under_deal.deal_messages
      @message = DealMessage.new()
      @deal_detail = DealDetail.new(deal_detail_params)
    end
  end
  # 広告主から見るドライバー一覧画面
  def index
    @ad_client = current_ad_client
    @driver = current_driver
    @drivers = Driver.page(params[:page]).per(9)
  end
  # 広告主から見るドライバー詳細画面
  def show
  	@driver = Driver.find(params[:id])
    @genres = Genre.all
    @car_informations = @driver.car_informations
    @ad_client = current_ad_client
  end
  #ドライバー側の編集ページ表示
  def edit
  	@driver = Driver.includes(:transfer_informations, :car_informations).find(params[:id])
  end

  #ドライバー側の編集アップロード & アドミンのステータスアップデート
  def update
  	@driver = Driver.find(params[:id])
  	if @driver.update(driver_params)
  		redirect_back(fallback_location: edit_driver_path)
  	else
  		render :edit
  	end
  end

  # フォロー機能
  def followings
    @driver = Driver.find(params[:id])
    @followings = @driver.following_ad_client
  end
  def followers
    @driver = Driver.find(params[:id])
    @followers = @driver.follower_ad_client
  end

  private
  def driver_params
  	params.require(:driver).permit(:driver_name,:driver_name_kana, :profile_image, :postal_code, :address, :telephone_number,  :is_active)
  end

  def message_params
    params.require(:deal_message).permit(:message, :user_type, :under_deal_id)
  end

  def deal_detail_params
    params.permit(:transfer_status, :bank_name, :branch_name, :account_type, :account_number, :account_name)
  end
end

