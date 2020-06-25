Rails.application.routes.draw do
  resources :dogs
  resources :employees 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "/new_form", to: "employees#new_form", as: "new_form"
  #post "/new_employee", to: "employee#new_employee", as: "new_employee"
end
