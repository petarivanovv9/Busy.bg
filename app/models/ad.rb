class Ad < ActiveRecord::Base
  attr_accessible :city_id, :deadline, :max_price, :period, :user_id, :activity_ids, :description

  belongs_to :city
  belongs_to :user
  has_many :ad_activities
  has_many :ad_applications
end
