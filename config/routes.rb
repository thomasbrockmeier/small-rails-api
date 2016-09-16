Rails.application.routes.draw do
  devise_for :user, only: []

  namespace :v1, defaults: {format: :json} do
    resource :login, only: [:create], controller: :sessions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
