Rails.application.routes.draw do
  resources :portafolios, except: [:show]
  get 'portafolio/:id', to: 'portafolios#show', as: 'portafolio_show'

  get 'about-user', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  resources :blogs

  root to: 'pages#home'
 
end
