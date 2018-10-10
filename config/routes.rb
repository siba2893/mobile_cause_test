Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, path: 'auth', path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'secret',
      confirmation: 'verification',
      unlock: 'unblock',
      registration: 'register',
      sign_up: 'signup'
  }

  resources :notes
end
