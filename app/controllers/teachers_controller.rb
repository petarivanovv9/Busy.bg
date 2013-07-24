class TeachersController < ApplicationController
  def index    
    @teachers = User.where(role_id: Role.find_by_name('Teacher').id)
  end
end