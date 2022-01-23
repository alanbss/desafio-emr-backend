Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :employees, only: [:index, :show, :create, :update, :destroy] do
        get 'search', to: 'employees#search', on: :collection
      end

      resources :roles, only: [:index, :show, :create, :update, :destroy] do
        get 'search', to: 'roles#search', on: :collection
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
