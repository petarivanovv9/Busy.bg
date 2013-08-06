class RoleActivity < ActiveRecord::Base
  validates_presence_of :activity_id
  validates_presence_of :role_id

  attr_accessible :activity_id, :role_id

  belongs_to :role
  belongs_to :activity
end
