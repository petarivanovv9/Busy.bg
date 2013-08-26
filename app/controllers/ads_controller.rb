class AdsController < InheritedResources::Base
  def index
    @ads = Ad.scoped
    @cities = City.all
    @activities = Activity.all
    
    @ads = @ads.where(city_id: params[:city_id]) if params[:city_id].present?
    @ads = @ads.joins(:ad_activities).where('ad_activities.activity_id = '['?'], params[:activity_id]) if params[:activity_id].present?
    @ads = @ads.where(max_price: params[:max_price]) if params[:max_price].present?
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

    ad_params[:ad_activities].each do |i|
      if i.present?
        ad_activity = AdActivity.new
        ad_activity.ad_id = ad.id
        ad_activity.activity_id = i
        ad_activity.save
      end
    end

    redirect_to ads_path
  end

  def edit
    @ad = Ad.find(params[:id])

    if current_user.id != @ad.user_id 
     redirect_to ads_path
    end 
  end

  def destroy
    @ad = Ad.find(params[:id])

    if current_user.id == @ad.user_id 
      @ad.destroy
    end

    redirect_to ads_path
  end

  def apply
   ad_applications = AdApplication.new
   ad_applications.user_id = current_user.id
   ad_applications.ad_id = params[:ad_id]
   ad_applications.save
  end
end
 