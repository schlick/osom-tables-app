OsomTablesApp::Application.routes.draw do
  resources :things

  match '/' => 'things#index'
end
