Rails.application.routes.draw do

   root 'department#index'

   match '/login',    to: 'sessions#new',     via: 'get'
   match '/logout',   to: 'sessions#destroy', via: 'delete'

   resources :hospital
   resources :admin
   resources :user
   resources :education
   resources :sessions
   resources :group

  
end
