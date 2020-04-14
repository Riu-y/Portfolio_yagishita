class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

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

  def confirm_new
  	@contact = Contact.new(contact_params)
  	render :new unless @contact.valid?
  end

  def index
  end

  private
  def contact_params
  	params.require(:contact).permit(:name, :content, :company_name, :telephone_number, :email, :content)
  end
end