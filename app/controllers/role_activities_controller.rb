class RoleActivitiesController < ApplicationController
  protect_from_forgery

  def get_activities
  	role = params[:role_id]
  	activities = RoleActivity.where(:role_id => role)
  	render :json => activities.map{|c| {:name => c.activity.name,:id => c.activity.id}}
  end
end