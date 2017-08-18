Rails.application.routes.draw do

  get  "/edit-profile", to: "users#edit"
  patch  "/edit-profile", to: "users#update"
  delete "/edit-profile", to: "users#destroy"

  get 'bookings/show'

  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/edit'

  get 'bookings/update'

  get 'bookings/destroy'

  devise_for :users
  resources :gardens do
    resources :reviews, only: [:new, :create]
    resources :bookings, only:[:new, :create, :show, :edit]
  end

  get "/dashboard", to: "users#dashboard"

  # namespace :admin do
  #   resources :gardens, only: [:index]
  # end

  get 'about' => "pages#about"

  get 'pages/home'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
