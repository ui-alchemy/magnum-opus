MagnumOpus::Application.routes.draw do

  root :to => 'home#index'

  resources :home, :only => :index
  resources :shell, :only => :index
  resources :login, :only => [:index, :new]
  resources :change_password, :only => [:index, :new]
  resources :form, :only => :index
  resources :typography, :only => :index
  resources :images, :only => :index
  resources :color, :only => :index
  resources :buttons, :only => :index
  resources :flash_messages, :only => :index
  resources :install, :only => :index
  resources :get_involved, :only => :index

  match 'user_session/login' => 'login#update', :via => :post, :as => 'user_session'

  match 'user_session/password_reset' => 'login#password_reset', :via => :post, :as => 'password_reset'
  match 'user_session/username_recovery' => 'login#username_recovery', :via => :post, :as => 'username_recovery'

  match 'user_session/save_changed_password' => 'login#save_changed_password', :via => :post, :as => 'save_changed_password'
end
