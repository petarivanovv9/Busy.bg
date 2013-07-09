class RoleActivity < ActiveRecord::Base
  attr_accessible :activity_id, :role_id

  belongs_to :role
  belongs_to :activity
end
