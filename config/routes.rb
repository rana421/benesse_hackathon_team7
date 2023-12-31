Rails.application.routes.draw do
  resources :questions, only: [:show, :update]
  # get 'questions/:id', to: 'questions#show', as: 'question'
  get 'home' => 'home#index'
  get 'results', to: 'results#show'

  get 'questions/:id/past', to: 'questions#past', as: 'past_question'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # root "questions#show", id: 1
  root "home#index"
end
