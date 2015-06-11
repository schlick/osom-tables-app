OsomTablesApp::Application.routes.draw do
  resources :things
  resources :items

  match '/' => 'dashboards#index'
end
