class UserActivity < ActiveRecord::Base
  validates_presence_of :activity_id
  validates_presence_of :user_id

  attr_accessible :activity_id, :user_id

  belongs_to :user
  belongs_to :activity
end
