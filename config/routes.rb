Blog::Application.routes.draw do
  resources :contact_us

  resources :about_us

  resources :products

  resources :socks

  resources :boots
  get "/boots/:id/delete"
  resources :admins

  get "cardysockspages/home"
  get "cardysockspages/find_a_shop"
  get "cardysockspages/about_us"
  get "cardysockspages/contact_us"
  get "cardysockspages/send_mail"
  get "cardysockspages/products"
  get "cardysockspages/search_bootcolor"
  root :to => "cardysockspages#home"



  get "sessions/new"
  get "admin" => "admins#index", :as => "admin"
  get "log_in" => "sessions#new", :as => "log_in"  
  get "log_out" => "sessions#destroy", :as => "log_out"  
  
  
  get "sign_up" => "users#new", :as => "sign_up"  
   
  match 'password_resets/:id/edit' => 'password_resets#edit'
  resources :users  
  resources :sessions  
  resources :password_resets do
    get 'edit', :on => :collection
  end 

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
