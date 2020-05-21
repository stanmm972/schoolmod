Rails.application.routes.draw do
  resources :students
  resources :courses
  resources :enrollments, only: [:new, :create, :destroy]
   devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   root 'pages#index'
end
