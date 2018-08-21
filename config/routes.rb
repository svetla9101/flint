Rails.application.routes.draw do
  root to: 'pages#home'
  post 'pages/create' => 'pages#create'
  get 'pages/contact'
  get 'pages/about'
  get 'pages/inform'
  get 'pages/important'
  get 'pages/use'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
