class AdClientsController < ApplicationController
  before_action :authenticate_ad_client! || :authenticate_admin!, only:[:dashboard, :edit, :update]

  # 広告主ダッシュボード
  def dashboard
    @ad_client = current_ad_client
    @driver = current_driver
    deal_all = UnderDeal.includes(:ad).where(ads: {ad_client_id: current_ad_client.id} )
    @under_deals = deal_all.includes(:ad).where.not(work_status: 'finished')
    @finish_deals = deal_all.where(work_status: 'finished').or(deal_all.where(work_status: 'refuse')).or(deal_all.where(work_status: 'checked_refuse'))
    @rooms = Room.includes(:ad).where(ad_client: @ad_client)
  end
  # 非ログインユーザー/ドライバーから見た広告主一覧
  def index
    @ad_client = current_ad_client
    @driver = current_driver
    @ad_clients = AdClient.page(params[:page]).per(9)
  end
  # 非ログインユーザー/ドライバーから見た広告主詳細
  def show
  	@ad_client = AdClient.find(params[:id])
  end
  # 広告主側の編集ページ
  def edit
  	@ad_client = AdClient.find(params[:id])
  end
   # 広告主側の編集アップロード & アドミンのステータスアップデートに使用
  def update
  	@ad_client = AdClient.find(params[:id])
  	if @ad_client.update(ad_client_params)
  		redirect_to ad_clients_path
  	else
  		render :edit
  	end
  end
  # フォロー機能
  def followings
    @ad_client = AdClient.find(params[:id])
    @followings = @ad_client.following_driver
  end
  def followers
    @ad_client = AdClient.find(params[:id])
    @followers = @ad_client.follower_driver
  end

  private
  def ad_client_params
  	params.require(:ad_client).permit(:company_name, :company_name_kana, :ceo_name, :ceo_name_kana, :postal_code, :address, :telephone_number, :profile_image, :registry_image_id, :is_active)
  end
  def message_params
    params.require(:deal_message).permit(:message, :user_type, :under_deal_id)
  end
  def deal_detail_params
    params.permit(:transfer_status, :bank_name, :branch_name, :account_type, :account_number, :account_name)
  end
end