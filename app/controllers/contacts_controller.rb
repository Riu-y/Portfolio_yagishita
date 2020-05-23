class ContactsController < ApplicationController
  before_action :authenticate_admin!, except: [:new, :confirm_new, :create]
  #問い合わせ入力フォーム
  def new
  	@contact = Contact.new
  end
  #問い合わせ入力確認画面
  def confirm_new
    @contact = Contact.new(contact_params)
    render :new unless @contact.valid?
  end
  #問い合わせ入力送信
  def create
  	@contact = Contact.new(contact_params)
  	if params[:back].present?
  		render :new
  	elsif @contact.save
  	  redirect_to contacts_path
      flash[:contact] = "お問い合わせ内容が正常に送信されました。"
    else
      render :new
    end
  end
  #アドミン側 ステータス更新
  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
    redirect_back(fallback_location: admins_path)
  end
  #アドミン側 問い合わせ内容詳細
  def show
    @contact = Contact.find(params[:id])
  end
  #アドミン側 新規問い合わせ一覧
  def new_inquiry
    @contacts = Contact.where(work_status: 'new_inquiry')
  end
  #アドミン側 対応中問い合わせ一覧
  def working_inquiry
    @contacts = Contact.where(work_status: 'working_inquiry')
  end
  #アドミン側 過去問い合わせ一覧
  def past_inquiry
    @contacts = Contact.where(work_status: 'past_inquiry')
  end

  private
  def contact_params
  	params.require(:contact).permit(:name, :content, :company_name, :telephone_number, :email, :content,:work_status )
  end
end