OsomTablesApp::Application.routes.draw do
  resources :things
  resources :items

  match '/' => 'things#index'
end
