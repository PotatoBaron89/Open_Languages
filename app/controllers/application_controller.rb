class ApplicationController < ActionController::Base
  # before_action :check_auth
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :forbidden

  private

  def forbidden
    flash[:alert] = "Insufficient Access Rights.  You have been redirected."
    redirect_to(request.referrer || root_path)
  end
end
