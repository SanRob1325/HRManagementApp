class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :authenticate_user!
  before_action :ensure_html_format

  def after_sign_in_path_for(resource)
    employees_path
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  private
  def ensure_html_format
    request.format = :html unless request.format.html?
  end
end
