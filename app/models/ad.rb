class Ad < ActiveRecord::Base
  attr_accessible :city_id, :deadline, :max_price, :period, :user_id, :activity_ids

  validates_numericality_of :max_price, greater_than_or_equal_to: 0
  validates_numericality_of :period,  greater_than: 0
  validates_presence_of :city_id
  validates_presence_of :deadline
  validates_presence_of :user_id
  validates_presence_of :max_price
  validates_presence_of :period

  attr_accessible :city_id, :deadline, :max_price, :period, :user_id


  belongs_to :city
  belongs_to :user
  has_many :ad_activities
end
