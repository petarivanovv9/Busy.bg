class User < ActiveRecord::Base
  attr_accessible :city_id, :email, :name, :role_id

  has_one :role
  belongs_to :city
end
