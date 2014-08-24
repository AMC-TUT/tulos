App::Application.routes.draw do

  resources :game_events

  resources :worlds


  devise_for :users #,
  #   path: "auth", path_names: {
  #   sign_in: 'login',
  #   sign_out: 'logout',
  #   password: 'secret',
  #   confirmation: 'verification',
  #   unlock: 'unblock',
  #   registration: 'register',
  #   sign_up: 'cmon_let_me_in'
  # }

  resources :u, :controller => 'users'

  root to: "worlds#index"

end
