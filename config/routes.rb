Rails.application.routes.draw do
  resources :section_elements
  resources :sections
  root 'sections#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
