# config/routes.rb
Rails.application.routes.draw do
  resources :books, only: [:index, :show, :create, :update, :destroy]
end
