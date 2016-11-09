Rails.application.routes.draw do
  resources :sections do
  	resources :section_elements
  end
  root 'sections#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
