class ItsController < ApplicationController
  def index
    @its = User.where(role_id: Role.find_by_name(params[:role]).id)
    @cities = City.all
    @activities = Activity.all
   
    @its = @its.joins(:user_activities).where('user_activities.activity_id in (' + params[:activity_id].join(',') + ')') if params[:activity_id].present?
    @its = @its.where(city_id: params[:city_id]) if params[:city_id].present?
    @its - @its.where(price: params[:price]) if params[:price].present?
    @its = @its.uniq
  end
end
