class UsersController < ApplicationController
 	protect_from_forgery

 	 #before_filter :authenticate_user!

 	def properties
  		@cities = City.all
  		@roles = Role.all
      @it = current_user
	end

	def save
		current_user.city_id = params[:user] [:city_id]
		current_user.role_id = params[:user][:role_id]
    current_user.phone = params[:user][:phone]
    current_user.portfolio_link = params[:user][:portfolio_link]
    current_user.portfolio_description = params[:user][:portfolio_description]
    current_user.portfolio_file = params[:user][:portfolio_file]
    current_user.price = params[:user][:price]
    current_user.save
    
    activity = params[:activity_id]
    if activity.present?
      activity.each do |i|
          useractivity = UserActivity.new
          useractivity.user_id = current_user.id
          useractivity.activity_id = i
          useractivity.save
      end
    end
    
		redirect_to user_profile_path(user_id: current_user.id)
	end 

  def show
    @user = User.find(params[:user_id])
  end

  def send_message
    c = params[:current_user]
    t = params[:cvokea s koito govorq]
    b = params[:body]
    c.send_message(t,b)
  end
end
