class NotificationsController < InheritedResources::Base
  layout false

  def refresh
    ad_ids = current_user.ads.map{|x| x.id}
    @ad_app = AdApplication.where(ad_id: ad_ids, q_viewed: false)
    
  end
end