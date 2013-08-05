class AdsController < InheritedResources::Base
  def index
    @ads = Ad.scoped
    @cities = City.all
    @activities = Activity.all
    
    @ads = @ads.where(city_id: params[:city_id]) if params[:city_id].present?
    
    if params[:activity_ids].present?
      @ads.joins(:ad_activities).where(activity_id: params[:activity_ids]) 
    end
  end
 
  def create
    ad_params = params[:ad]
    ad = Ad.new

    ad.user_id = current_user.id
    ad.max_price = ad_params[:max_price]
    ad.period = ad_params[:period]
    ad.city_id = ad_params[:city_id]
    ad.deadline = Date.new ad_params["deadline(1i)"].to_i, ad_params["deadline(2i)"].to_i, ad_params["deadline(3i)"].to_i
    ad.save
    redirect_to ads_path
  end
end
