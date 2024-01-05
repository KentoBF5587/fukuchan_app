Rails.application.routes.draw do
  root "staticpages#top"
  resources :famous_quotes
  resources :topics, only: %i[new create show]
  resources :topic2s, only: %i[new create show]
  resources :topic3s do
    collection do
      get 'result'
      get 'result2'
      get 'omake'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
