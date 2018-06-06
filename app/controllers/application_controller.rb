class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  #before action for any devise url where it will whitelist fields
  #Whitelist the following form fields so that we can process them 
  #If coming from devise sign up form
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
    #method to whitelist fields in form
    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:stripe_card_token,:email,:password,:password_confirmation) } 
    end
end
