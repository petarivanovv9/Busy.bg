class AdsController < InheritedResources::Base
def index
  @ads = Ad.scoped
   @cities = City.all
   @activities = Activity.all

  if params[:city_id].present?
    @ads = @ads.where(city_id: params[:city_id])
   end
end

end
