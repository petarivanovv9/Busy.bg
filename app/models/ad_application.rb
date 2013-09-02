class AdApplication < ActiveRecord::Base
  attr_accessible :ad_id, :q_viewed, :user_id, :status

  belongs_to :user
  belongs_to :ad
end
