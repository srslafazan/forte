Rails.application.routes.draw do

  # pages
  get '/' => 'sessions#index'
  get 'about' => 'sessions#about'
  get 'contact' => 'sessions#contact'
  get 'involve' => 'sessions#involve'
  get 'finish_profile' => 'sessions#finish_profile'
  get 'profile' => 'sessions#profile'
  get 'edit_profile' => 'sessions#edit_profile'
  get 'feedback' => 'sessions#feedback'
  get 'payments' => 'sessions#payments'
  get 'support' => 'sessions#support'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
