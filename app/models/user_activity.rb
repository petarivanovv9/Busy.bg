class UserActivity < ActiveRecord::Base
  attr_accessible :activity_id, :user_id

  belongs_to :user
  belongs_to :activity
end
