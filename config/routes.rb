ConvergeExample::Application.routes.draw do

  root :to => 'converge_shell#index'

  resources :converge_shell, :only => :index
  resources :login, :only => :index

  match 'user_session/login' => 'login#index', :via => :get, :as => 'user_session'
  match 'user_session/login' => 'login#update', :via => :post, :as => 'user_session'
  match 'user_session/login' => 'login#update', :via => :post, :as => 'new_user_session'

  match 'user_session/password_reset' => 'login#password_reset', :via => :get, :as => 'password_reset'
  match 'user_session/password_reset' => 'login#password_reset', :via => :get, :as => 'password_resets'
  match 'user_session/password_reset' => 'login#password_reset', :via => :post, :as => 'email_logins_password_resets'
  match 'user_session/password_reset' => 'login#password_reset', :via => :post, :as => 'new_password_reset'

  match 'user_session/change_password' => 'login#change_password', :via => :get, :as => 'change_password'

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end