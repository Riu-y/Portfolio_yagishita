class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
  	if params[:back].present?
  		render :new
  	elsif @contact.save
  	  redirect_to sent_form_path
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
    @contacts = Contact.all
  end

  def new_inquiry
    @contacts = Contact.where(work_status: new_inquiry)
  end

  def working_inquiry
    @contacts = Contact.where(work_status: working_inquiry)
  end

  def past_inquiry
    @contacts = Contact.where(work_status: past_inquiry)
  end


  private
  def contact_params
  	params.require(:contact).permit(:name, :content, :company_name, :telephone_number, :email, :content,:work_status )
  end
end