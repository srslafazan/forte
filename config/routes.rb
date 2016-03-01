Rails.application.routes.draw do
  post 'carrierwave' => 'sessions#carrierwave_create'
  get 'carrierwave' => 'sessions#carrierwave'
  get 'carrierwave_success' => 'sessions#carrierwave_success'

  root 'sessions#index'

  post 'sessions' => 'sessions#create'
  get 'about' => 'sessions#about'
  get 'involve' => 'sessions#involve'
  get 'sitemap' => 'sessions#sitemap'
  get 'privacy-policy' => 'sessions#privacy'
  get 'terms-and-conditions' => 'sessions#terms'

  resources :questions
  resources :evaluations
  resources :transactions

  resources :students do
    get '/feedback' => 'students#feedback'
    get '/dashboard' => 'students#dashboard'
  end

  resources :tutors do
    get 'feedback' => 'tutors#feedback'
    get 'dashboard' => 'tutors#dashboard'
  end

  # Temporary pages
  get 'components' => 'sessions#components'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
