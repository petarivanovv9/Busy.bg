class NotificationsController < InheritedResources::Base
  # layout false

  def refresh
    ad_ids = current_user.ads.map{|x| x.id}
    @ad_app = AdApplication.where(ad_id: ad_ids, q_viewed: false)
    render json: {count: @ad_app.count}
  end

  def index
    ad_ids = current_user.ads.map{|x| x.id}
    @ad_apps = AdApplication.where(ad_id: ad_ids)
    @ad_apps.update_all("q_viewed = 't'")
  end
end