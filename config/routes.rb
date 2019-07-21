Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :champions, only: [:show,:index]
      resources :origin_class_type, only: [:show, :index]
    end
  end

end
