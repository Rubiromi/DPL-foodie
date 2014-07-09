Rails.application.routes.draw do

  resources :restaurants do
    resources :noms
  end

  resources :noms, only: [] do
    resources :photos
  end

  resources :events

  root 'site#index'
  get '/places' => 'site#places'
  get '/contact' => 'site#contact'
  post '/contact' => 'site#contact'

  get '/login' => 'site#login'
  get '/report' => 'site#report'
end
