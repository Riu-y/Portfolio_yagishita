class InformationsController < ApplicationController
  #アドミンお知らせ一覧ページ
  def index
  	@informations = Information.all
  end
  #アドミンお知らせ新規作成ページ
  def new
  	@information = Information.new
  end
  #アドミンお知らせ新規作成アクション
  def create
  	@information = Information.new(information_params)
  	@information.save
  	redirect_to informations_path
  end
  #アドミンお知らせ詳細ページ
  def show
  	@information = Information.find(params[:id])
  end
  #アドミンお知らせ編集ページ
  def edit
  	@information = Information.find(params[:id])
  end
  #アドミンお知らせ更新ページ
  def update
  	@information = Information.find(params[:id])
  	@information.update
  	redirect_to informations_path
  end

  private
  def information_params
  	params.permit(:title, :viewer_type, :content)
  end
end
