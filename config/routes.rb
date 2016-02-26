Rails.application.routes.draw do

  root 'sessions#index'
  get 'about' => 'sessions#about'
  # get 'contact' => 'sessions#contact'
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
