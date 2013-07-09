class Activity < ActiveRecord::Base
  attr_accessible :history, :math, :mobile, :web

  has_many :role_activities
end
