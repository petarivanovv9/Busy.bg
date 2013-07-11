class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource_or_scope)
  	currnet_user_properties_path
  end
end
