class AdActivities < ActiveRecord::Base
  attr_accessible :acitvity_id, :ad_id

  belongs_to :ad
  belongs_to :activity
end
