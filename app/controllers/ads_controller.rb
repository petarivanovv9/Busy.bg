class AdsController < InheritedResources::Base
  def index
    @ads = Ad.scoped
    @cities = City.all
    @activities = Activity.all

    if params[:city_id].present?
      @ads = @ads.where(city_id: params[:city_id])
    end
  end
 
  def create
    ad = Ad.new
    ad.user_id = current_user.id
    ad.max_price = params[:ad][:max_price]
    ad.period = params[:ad][:period]
    ad.city_id = params[:ad][:city_id]
    ad.deadline = params[:ad][:deadline]
    ad.save
    redirect_to ads_path
  end
end
