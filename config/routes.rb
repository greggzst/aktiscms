Rails.application.routes.draw do
  resources :sections do
  	get 'change_visibility', on: :member
  	resources :section_elements do
  		get 'change_visibility', on: :member
  	end
  end
  root 'sections#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
