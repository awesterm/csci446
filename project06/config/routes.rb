ActionController::Routing::Routes.draw do |map|

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"

  map.resources :user_sessions
  map.resources :games
  map.resources :users

   
map.namespace :admin do |admin|
  admin.resources :roles
  admin.resources :users
  admin.root :controller => 'admin', :action => 'index'
end


  map.root :controller => 'games'

end
