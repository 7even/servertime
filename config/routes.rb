Servertime::Application.routes.draw do
  match 'login' => 'login#login', :as => 'login'
  get 'logout' => 'login#logout', :as => 'logout'
  
  get 'servertime' => 'server_time#update'
  
  root :to => 'server_time#index'
end
