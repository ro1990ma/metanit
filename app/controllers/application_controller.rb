class ApplicationController < ActionController::Base
  layout 'metanit'
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.roles == 'admin'
      admin_root_path
    else
      posts_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
