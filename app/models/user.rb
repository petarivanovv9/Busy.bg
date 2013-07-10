class User < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :email
  validates_uniqueness_of :email

  attr_accessible :city_id, :email, :name, :role_id

  belongs_to :role
  belongs_to :city
end
