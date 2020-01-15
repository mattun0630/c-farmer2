class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation, :remember_me, :post, :a_address, :phone, :user_name, :producer_name, :user_image, :producer_image]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
 end
end
