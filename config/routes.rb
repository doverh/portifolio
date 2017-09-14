Rails.application.routes.draw do
 	resources :welcome do
  	post :contact, on: :collection
  	end
  get 'welcome/index'
  root 'welcome#index'
end
