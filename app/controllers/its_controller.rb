class ItsController < ApplicationController
  def index
    section = Role.find_by_name(params[:role])
    @its = User.where(role_id: section.id)
    @cities = City.all
    @activities = section.activities

    if params[:activity_id].is_a? Array
      activities = params[:activity_id].join(',')
    else
      activities = params[:activity_id]
    end

    @its = @its.joins(:user_activities).where('user_activities.activity_id in (' +  activities + ')') if params[:activity_id].present?
    @its = @its.where(city_id: params[:city_id]) if params[:city_id].present?
    @its - @its.where(price: params[:price]) if params[:price].present?
    @its = @its.uniq
  end
end
