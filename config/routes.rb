ConvergeExample::Application.routes.draw do

  root :to => 'converge_shell#index'

  resources :converge_shell, :only => :index
  resources :login, :only => :index
  resources :form, :only => :index
  resources :typography, :only => :index
  resources :images, :only => :index
  resources :color, :only => :index
  resources :buttons, :only => :index
  resources :flash_messages, :only => :index

  match 'user_session/login' => 'login#index', :via => :get, :as => 'user_session'
  match 'user_session/login' => 'login#update', :via => :post, :as => 'user_session'

  match 'user_session/password_reset' => 'login#password_reset', :via => :post, :as => 'password_reset'
  match 'user_session/username_recovery' => 'login#username_recovery', :via => :post, :as => 'username_recovery'

  match 'user_session/change_password' => 'login#change_password', :via => :get, :as => 'change_password'
  match 'user_session/save_changed_password' => 'login#save_changed_password', :via => :post, :as => 'save_changed_password'
end
