Rails.application.routes.draw do

  root "artists#index"

  namespace :api do resources :artists do
    resources :songs
    end
  end

  resources :artists do
    resources :songs
    end

end
