class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user!

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  # def user_not_authorized(exception)
  #   policy_name = exception.policy.class.to_s.underscore
  #   warning_message = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
  #   flash[:warning] = warning_message
  #   redirect_to(request.referrer || root_path)
  # end
end
