Rails.application.routes.draw do

  root "artists#index"

  resources :artists, except: [:destroy]
  resources :songs, except: [:destroy]

end
