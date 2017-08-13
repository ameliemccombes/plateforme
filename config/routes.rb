Rails.application.routes.draw do
  resources :gardens do
    resources :reviews, only: [:new, :create]
  end

  # namespace :admin do
  #   resources :gardens, only: [:index]
  # end

  get 'about' => "pages#about"

  get 'pages/home'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
