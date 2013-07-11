
class UsersController < ApplicationController
 	protect_from_forgery

 	# before_filter :authenticate_user!

 	def properties
  		@cities = City.all
  		@roles= Role.all
	end

	def save
		current_user.city_id = params[:city_id]
		current_user.role_id = params[:role_id]
		current_user.save

		render nothing: true
	end
end

