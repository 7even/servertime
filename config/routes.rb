Servertime::Application.routes.draw do
  get 'servertime' => 'server_time#index'
  get 'servertime/update' => 'server_time#update'
end
