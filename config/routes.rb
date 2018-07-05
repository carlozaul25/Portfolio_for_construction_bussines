Rails.application.routes.draw do
  devise_for :users
  resources :portafolios, except: [:show]
  get 'portafolio/:id', to: 'portafolios#show', as: 'portafolio_show'

  get 'about-user', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  resources :blogs do 
  	member do
  		get :toggle_status
  	end
  end

  root to: 'pages#home'
 
end
