class ApplicationController < ActionController::Base
	  before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception

	def after_sign_out_path_for(resource)
    homes_index_path
  end

  protected
  def configure_permitted_parameters
 		if resource_class == Driver
   		devise_parameter_sanitizer.permit(:sign_up, keys: [:driver_name,:driver_name_kana,:postal_code,:address,:telephone_number,:driver_license_image,:terms,:activity_area])
   	elsif resource_class == AdClient
   		devise_parameter_sanitizer.permit(:sign_up,keys:[:company_name,:company_name_kana,:ceo_name,:ceo_name_kana,:postal_code,:address,:telephone_number,:registry_image,:terms])
   	else
   		devise_parameter_sanitizer.permit(:sign_up,keys:[:admin_name,:admin_name_kana,:email])
   	end
  end
end