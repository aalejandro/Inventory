class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.class == AdminUser
      admin_dashboard_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
