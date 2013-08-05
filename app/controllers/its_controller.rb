class ItsController < ApplicationController
  def index
   
    @its = User.where(role_id: Role.find_by_name('IT').id)
    @cities = City.all
    @activities = Activity.all
    
    if params[:city_id].present?
      @its = @its.where(city_id: params[:city_id])
    end
  end
end