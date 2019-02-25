class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_account


    def require_account!
        redirect_to home_index_url(subdomain: nil) if @account.nil?
    end

    def set_account
      @account = Account.find_by(subdomain: request.subdomain)
    end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [account_attributes:[:subdomain]])
  end

  


end
