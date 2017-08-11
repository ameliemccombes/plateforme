Rails.application.routes.draw do
  get 'gardens/show'

  get 'gardens/new'

  get 'gardens/create'

  get 'gardens/edit'

  get 'gardens/update'

  get 'gardens/destroy'

  get 'gardens/index'

  get 'about' => "pages#about"

  get 'pages/home'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
