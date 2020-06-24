Rails.application.routes.draw do
  resources :dogs,      only: [:create, :show, :index, :new]
  resources :employees, only: [:create, :show, :index, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
