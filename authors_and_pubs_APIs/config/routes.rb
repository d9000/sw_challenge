Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :publications, only: %i[create show index update destroy] 
      resources :authors, only: %i[create show index update destroy] do
        resources :publications, only: %i[create index], controller: 'authors/publications'
      end
    end
  end
end
