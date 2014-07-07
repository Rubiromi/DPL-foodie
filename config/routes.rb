Rails.application.routes.draw do
  resources :restaurants do
    resources :noms
  end

  resources :events

  root 'site#index'
  get '/places' => 'site#places'
end
