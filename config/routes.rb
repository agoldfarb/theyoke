Rails.application.routes.draw do

  devise_for :teachers
  resources :teachers, only: [:update, :show, :index]

  root to: 'welcome#index'
end
