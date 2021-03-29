class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:nickname, :profile, :dream, :first_limit_id, :first_process, :second_limit_id,
                                             :second_process, :third_limit_id, :third_process, :fourth_limit_id, :fourth_process, :fifth_limit_id, :fifth_process])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:nickname, :profile, :dream, :first_limit_id, :first_process, :second_limit_id,
                                             :second_process, :third_limit_id, :third_process, :fourth_limit_id, :fourth_process, :fifth_limit_id, :fifth_process])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
