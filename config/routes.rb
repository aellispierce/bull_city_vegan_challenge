Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :restaurants, only: %i(index show)

      get "dishes/entrees", to: "dishes#entrees"
      get "dishes/appetizers", to: "dishes#appetizers"
      get "dishes/desserts", to: "dishes#desserts"

      resources :dishes, only: %i(index show)
    end
  end
end
