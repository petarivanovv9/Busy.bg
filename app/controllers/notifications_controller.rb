class NotificationsController < InheritedResources::Base
  # layout false

  def refresh
    result = {}

    ad_ids = current_user.ads.map{|x| x.id}
    @ad_app = AdApplication.where(ad_id: ad_ids, q_viewed: false)
    
    result[:count] = @ad_app.count

    @ad_app_accepted = AdApplication.where(user_id: current_user.id, status: "ACCEPTED").last
    
    result[:owner_phone] =  @ad_app_accepted.ad.user.phone if @ad_app_accepted.present?

puts result

    render json: result
  end

  def index
    ad_ids = current_user.ads.map{|x| x.id}
    @ad_apps = AdApplication.where(ad_id: ad_ids)
    @ad_apps.update_all("q_viewed = 't'")
  end

  def accept
    ad_app = AdApplication.find(params[:notification_id])
    ad_app.status = 'ACCEPTED'
    ad_app.save

    render nothing: true
  end

def reject
    ad_app = AdApplication.find(params[:notification_id])
    ad_app.status = 'REJECTED'
    ad_app.save

    render nothing: true
  end
  
 end