Bizlocator::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'info#home'

=begin
  devise_for :admin_users, ActiveAdmin::Devise.config, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
=end

  devise_for :users
  ActiveAdmin.routes(self)

  get "info/home"

  get "info/about"

  get "info/contact"

  get "info/help"

  get "info/user_home"

  resources :emergency_numbers
  resources :city_services
  resources :city_service_categories
  resources :mall_types
  resources :shopping_malls
  resources :addresses
  resources :job_categories
  resources :jobs
  resources :business_item_categories
  resources :business_items
  resources :ad_categories
  resources :ad_positions
  resources :ads
  resources :companies


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


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
