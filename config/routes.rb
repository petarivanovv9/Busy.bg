TheBusyNet::Application.routes.draw do
  resources :ads
  
  root to: 'menu#index'

  match "/teachers", to: 'teachers#index'
  match "/its", to: 'its#index'
  match "/accountants", to: 'accountants#index'

  devise_for :users
  match "users/properties", to: 'users#properties',  as: 'currnet_user_properties', via: :get

  match 'users/profile' => 'users#save'
  match '/ads/apply' => 'ads#apply'
  devise_for :users do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end

  match '/check_for_notifications' => 'notifications#refresh'
  match '/send_message' => 'users#send_message'
  root to: 'users#index'
  match "get_activities/:role_id", to: 'role_activities#get_activities', via: [:post, :get]
  match '/users/:user_id' => 'users#show', as: 'user_profile'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
