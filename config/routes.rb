Breezedigs::Application.routes.draw do
  
  get "authentications/index"

  get "authentications/create"

  get "authentications/destroy"

  root to: 'static_pages#home'

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  # Resources

  resources :users do
    collection do
      get :manager
      get :tenant
    end
  end

  get 'reviews/selectbuilding' => 'reviews#selectbuilding', :as => :selectbuilding
  get 'rents/selectbuilding' => 'rents#selectbuildingrent', :as => :selectbuildingrent
  get 'photos/selectbuilding' => 'photos#selectbuildingphoto', :as => :selectbuildingphoto
  get 'floorplans/selectbuilding' => 'floorplans#selectbuildingfloorplan', :as => :selectbuildingfloorplan
  get 'buildings/update_areas' => 'buildings#update_areas', :as => :update_areas
  get 'buildings/update_neighborhoods' => 'buildings#update_neighborhoods', :as => :update_neighborhoods

  resources :reviews
  resources :rents
  resources :floorplans
  resources :photos

  resources :cities

  resources :buildings do
    resources :reviews
    resources :rents
    resources :floorplans
    resources :photos
  end

  resources :neighborhoods

  # Manual routes

  # get '/reviews/selectbuilding', :as => 'selectbuilding'

  match '/terms', to: 'static_pages#terms'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/how-it-works', to: 'static_pages#how'
  match '/careers', to: 'static_pages#careers'
  match '/press', to: 'static_pages#press'
  match '/partners', to: 'static_pages#partners'
  match '/privacy', to: 'static_pages#privacy'
  match '/advertise', to: 'static_pages#advertise'
  match '/managers', to: 'static_pages#managers'
  match '/guidelines', to: 'static_pages#guidelines'
  match '/abuse', to: 'static_pages#abuse'
  match '/allcities', to: 'static_pages#allcities'

  match '/signup', to: 'users#sign_up'
  match '/signin', to: 'sessions#sign_in'
  match '/signout', to: 'sessions#destroy', via: :delete

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
