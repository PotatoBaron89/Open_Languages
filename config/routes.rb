Rails.application.routes.draw do
  resources :lessons
  devise_for :users
  resources :users
  get root to: 'static_pages#landing_page'
  get 'static_pages/privacy_policy'
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
