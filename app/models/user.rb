class User < ActiveRecord::Base
  attr_accessible :city_id, :email, :name, :role_id

  belongs_to :role
  belongs_to :city
end
